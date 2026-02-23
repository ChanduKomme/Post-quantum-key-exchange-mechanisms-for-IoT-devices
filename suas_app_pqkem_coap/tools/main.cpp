/*
 * Post-Quantum KEM + AEAD demo for BL602 (PineCone) - SENDER board
 *
 * New simplified flow:
 *  - Wait for Wi-Fi (wifi.cpp sets g_wifi_ready = 1 when IP is obtained)
 *  - Ask Gateway for its ML-KEM public key via CoAP:
 *        POST /pqkem-pk
 *  - Run ML-KEM encapsulation using that public key -> (ct, ss)
 *  - Derive AEAD key from ss with HKDF(SHA-256)
 *  - Encrypt "Hello, message from sender" with AES-CCM
 *  - Send ONE CoAP message:
 *        POST /pqkem-data
 *    whose payload = [KEM ct || AEAD nonce || AEAD ciphertext || AEAD tag]
 */

extern "C" {
    // BL602 platform init
    void vInitializeBL602(void);

    // FreeRTOS
    #include <FreeRTOS.h>
    #include <task.h>

    // C libs
    #include <stdio.h>
    #include <stdint.h>
    #include <string.h>

    // lwIP
    #include <lwip/sockets.h>
    #include <lwip/inet.h>
    #include <lwip/tcpip.h>

    // mbedTLS
    #include <mbedtls/ccm.h>
    #include <mbedtls/hkdf.h>
    #include <mbedtls/md.h>

    // BL602 GPIO
    #include <bl_gpio.h>

    // errno from newlib
    extern int errno;
}

#include "pqkem_kem.h"
#include "coap_minimal.h"

// WiFi task from wifi.cpp
extern "C" void task_wifi(void *param);
// Set in wifi.cpp when Wi-Fi + DHCP are done
extern "C" volatile uint8_t g_wifi_ready;

// -----------------------------------------------------------------------------
// Small hex dump helper (for debugging)
// -----------------------------------------------------------------------------

static void print_hex(const char *label, const uint8_t *buf, size_t len)
{
    printf("%s = ", label);
    for (size_t i = 0; i < len; i++) {
        printf("%02X", buf[i]);
        if ((i + 1) % 16 == 0) {
            printf("\r\n");
        } else {
            printf(" ");
        }
    }
    if (len % 16 != 0) {
        printf("\r\n");
    }
}

// -----------------------------------------------------------------------------
// WiFi task static storage
// -----------------------------------------------------------------------------

#define WIFI_STACK_SIZE 512
static StackType_t wifi_stack[WIFI_STACK_SIZE];
static StaticTask_t wifi_task;

// -----------------------------------------------------------------------------
// External LED on GPIO5
// Wiring: GPIO5 ----[resistor]----|>|---- GND  (LED long leg to GPIO5)
// -----------------------------------------------------------------------------

static constexpr uint8_t LED_PIN  = 5;
static constexpr uint8_t LED_ON   = 1;
static constexpr uint8_t LED_OFF  = 0;

static void led_init()
{
    bl_gpio_enable_output(LED_PIN, 0, 0);
    bl_gpio_output_set(LED_PIN, LED_OFF);
}

// Turn LED on for "ms" milliseconds then off (only call from tasks)
static void led_on_ms(uint32_t ms)
{
    bl_gpio_output_set(LED_PIN, LED_ON);
    vTaskDelay(pdMS_TO_TICKS(ms));
    bl_gpio_output_set(LED_PIN, LED_OFF);
}

// -----------------------------------------------------------------------------
// Simple millisecond timer using FreeRTOS tick count
// -----------------------------------------------------------------------------

static uint32_t monotonic_ms()
{
    return (uint32_t)xTaskGetTickCount() * (uint32_t)portTICK_PERIOD_MS;
}

// -----------------------------------------------------------------------------
// AEAD (AES-CCM) wrapper using mbedTLS
// -----------------------------------------------------------------------------

static const size_t AEAD_KEY_LEN   = 16;  // AES-128
static const size_t AEAD_NONCE_LEN = 12;
static const size_t AEAD_TAG_LEN   = 16;

// Limit plaintext length so everything fits nicely in UDP packet
static const size_t MAX_PLAINTEXT_LEN = 64;

struct AeadKey {
    uint8_t key[AEAD_KEY_LEN];
};

static bool aead_encrypt(const AeadKey &key,
                         const uint8_t *nonce,
                         const uint8_t *plaintext,
                         size_t pt_len,
                         uint8_t *ciphertext,
                         uint8_t *tag)
{
    mbedtls_ccm_context ctx;
    mbedtls_ccm_init(&ctx);

    int rc = mbedtls_ccm_setkey(&ctx,
                                MBEDTLS_CIPHER_ID_AES,
                                key.key,
                                (unsigned int)(AEAD_KEY_LEN * 8));
    if (rc != 0) {
        printf("[sender] mbedtls_ccm_setkey failed, rc=%d\r\n", rc);
        mbedtls_ccm_free(&ctx);
        return false;
    }

    rc = mbedtls_ccm_encrypt_and_tag(&ctx,
                                     pt_len,
                                     nonce, AEAD_NONCE_LEN,
                                     NULL, 0,
                                     plaintext, ciphertext,
                                     tag, AEAD_TAG_LEN);

    mbedtls_ccm_free(&ctx);
    if (rc != 0) {
        printf("[sender] mbedtls_ccm_encrypt_and_tag failed, rc=%d\r\n", rc);
    }
    return rc == 0;
}

// -----------------------------------------------------------------------------
// HKDF-SHA256 helper (for key derivation from KEM shared secret)
// -----------------------------------------------------------------------------

static bool hkdf_sha256(const uint8_t *ikm, size_t ikm_len,
                        const uint8_t *salt, size_t salt_len,
                        const uint8_t *info, size_t info_len,
                        uint8_t *okm, size_t okm_len)
{
    const mbedtls_md_info_t *md = mbedtls_md_info_from_type(MBEDTLS_MD_SHA256);
    if (!md) {
        printf("[sender] mbedtls_md_info_from_type returned NULL\r\n");
        return false;
    }

    int rc = mbedtls_hkdf(md,
                          salt, salt_len,
                          ikm, ikm_len,
                          info, info_len,
                          okm, okm_len);
    if (rc != 0) {
        printf("[sender] mbedtls_hkdf failed, rc=%d\r\n", rc);
    }
    return rc == 0;
}

// -----------------------------------------------------------------------------
// UDP framing for a tiny KEM+DATA protocol on top of CoAP
//   Here we send everything in POST /pqkem-data:
//     [KEM ct || AEAD nonce || AEAD ciphertext || AEAD tag]
// -----------------------------------------------------------------------------

static const uint16_t DEMO_PORT = 5683;      // CoAP default port
static const size_t   MAX_UDP   = 1024;

enum MsgType : uint8_t {
    MSG_DATA = 3
};

struct DataMsg {
    uint8_t type;      // MSG_DATA
    uint8_t reserved;
    uint16_t kem_ct_len;
    uint16_t text_len;
    uint8_t nonce[AEAD_NONCE_LEN];
    uint8_t buf[PQKEM_CIPHERTEXT_BYTES + MAX_PLAINTEXT_LEN + AEAD_TAG_LEN];
} __attribute__((packed));

// -----------------------------------------------------------------------------
// Fetch gateway public key over CoAP: POST /pqkem-pk
// -----------------------------------------------------------------------------

static bool fetch_gateway_pk(int sock_fd,
                             const struct sockaddr_in *gw,
                             uint8_t *gateway_pk)
{
    uint8_t  coap_buf[MAX_UDP];
    uint16_t msg_id = (uint16_t)(monotonic_ms() & 0xFFFFu);

    // Build POST /pqkem-pk with empty payload
    size_t coap_len = coap_build_post(
        coap_buf, sizeof(coap_buf),
        msg_id,
        "pqkem-pk",
        NULL,
        0
    );

    ssize_t sent = sendto(sock_fd, coap_buf, coap_len, 0,
                          (const struct sockaddr *)gw,
                          sizeof(*gw));
    if (sent < 0) {
        printf("[sender] sendto(/pqkem-pk) FAILED, errno=%d\r\n", errno);
        return false;
    }
    printf("[sender] Sent PK request (len=%u)\r\n", (unsigned)coap_len);

    // Wait for a single response
    uint8_t rx_buf[MAX_UDP];
    struct sockaddr_in src;
    socklen_t srclen = sizeof(src);
    int n = recvfrom(sock_fd, rx_buf, sizeof(rx_buf), 0,
                     (struct sockaddr *)&src, &srclen);
    if (n <= 0) {
        printf("[sender] recvfrom() for PK failed, n=%d, errno=%d\r\n",
               n, errno);
        return false;
    }

    CoapMessage cm;
    if (!coap_parse(&cm, rx_buf, (size_t)n)) {
        printf("[sender] PK response is not valid CoAP (len=%d)\r\n", n);
        return false;
    }

    printf("[sender] PK response: code=0x%02X, uri=\"%s\", payload_len=%u\r\n",
           (unsigned)cm.code,
           cm.uri_path,
           (unsigned)cm.payload_len);

    if (strcmp(cm.uri_path, "pqkem-pk") != 0) {
        printf("[sender] PK response URI mismatch (got \"%s\")\r\n",
               cm.uri_path);
        return false;
    }

    if (cm.payload_len != PQKEM_PUBLIC_KEY_BYTES) {
        printf("[sender] PK length %u != expected %u\r\n",
               (unsigned)cm.payload_len,
               (unsigned)PQKEM_PUBLIC_KEY_BYTES);
        return false;
    }

    memcpy(gateway_pk, cm.payload, PQKEM_PUBLIC_KEY_BYTES);
    print_hex("[sender] Gateway PK", gateway_pk, PQKEM_PUBLIC_KEY_BYTES);
    return true;
}

// -----------------------------------------------------------------------------
// Sender task
// -----------------------------------------------------------------------------

static void task_sender(void *param)
{
    (void)param;
    printf("[sender] Task started (ML-KEM-%u, level %u)\r\n",
           (unsigned)PQKEM_VARIANT,
           (unsigned)PQKEM_STRENGTH_LEVEL);

    // Gateway BL602 IP on your Wi-Fi network
    const char *gw_ip_str = "10.178.151.75";   // <-- set this to gateway IP

    AeadKey aead_key;

    // Retry socket() until lwIP is ready
    int sock_fd = -1;
    while (sock_fd < 0) {
        sock_fd = socket(AF_INET, SOCK_DGRAM, IPPROTO_UDP);
        if (sock_fd < 0) {
            printf("[sender] socket() failed, errno=%d, retrying in 1s\r\n", errno);
            vTaskDelay(pdMS_TO_TICKS(1000));
        }
    }
    printf("[sender] socket() OK, fd=%d\r\n", sock_fd);

    struct sockaddr_in gw;
    memset(&gw, 0, sizeof(gw));
    gw.sin_family      = AF_INET;
    gw.sin_port        = htons(DEMO_PORT);
    gw.sin_addr.s_addr = inet_addr(gw_ip_str);

    printf("[sender] Using gateway IP %s, port %u\r\n",
           gw_ip_str, (unsigned)DEMO_PORT);

    // ---- Step 1: Fetch Gateway public key over CoAP ------------------------
    uint8_t gateway_pk[PQKEM_PUBLIC_KEY_BYTES];

    if (!fetch_gateway_pk(sock_fd, &gw, gateway_pk)) {
        printf("[sender] ERROR: Failed to obtain gateway public key\r\n");
        vTaskDelete(NULL);
        return;
    }

    // ---- Step 2: ML-KEM Encapsulation --------------------------------------
    uint8_t ct[PQKEM_CIPHERTEXT_BYTES];
    uint8_t ss_local[PQKEM_SHARED_SECRET_BYTES];

    uint32_t t0 = monotonic_ms();
    if (!pqkem_encapsulate(gateway_pk, ct, ss_local)) {
        printf("[sender] pqkem_encapsulate failed\r\n");
        vTaskDelete(NULL);
        return;
    }
    uint32_t kem_ms = monotonic_ms() - t0;

    printf("[sender] pqkem_encapsulate done in %lu ms\r\n",
           (unsigned long)kem_ms);
    print_hex("[sender] KEM ciphertext", ct, sizeof(ct));

    // ---- Step 3: Derive AEAD key with HKDF ---------------------------------
    const uint8_t info[] = "ML-KEM-AEAD";
    if (!hkdf_sha256(ss_local, PQKEM_SHARED_SECRET_BYTES,
                     NULL, 0,
                     info, sizeof(info) - 1,
                     aead_key.key, sizeof(aead_key.key))) {
        printf("[sender] HKDF failed\r\n");
        vTaskDelete(NULL);
        return;
    }
    printf("[sender] KEM + HKDF done, AEAD key ready\r\n");

    // ---- Step 4: Build and send protected message --------------------------
    const char *plaintext = "Hello, message from sender";
    size_t pt_len = strlen(plaintext);
    if (pt_len > MAX_PLAINTEXT_LEN) {
        printf("[sender] plaintext too long (%u > %u)\r\n",
               (unsigned)pt_len,
               (unsigned)MAX_PLAINTEXT_LEN);
        vTaskDelete(NULL);
        return;
    }

    uint8_t ct_buf[MAX_PLAINTEXT_LEN];
    uint8_t tag[AEAD_TAG_LEN];
    uint8_t nonce[AEAD_NONCE_LEN];

    pqkem_random_bytes(nonce, sizeof(nonce));
    print_hex("[sender] AEAD nonce", nonce, sizeof(nonce));

    uint32_t t1 = monotonic_ms();
    if (!aead_encrypt(aead_key,
                      nonce,
                      (const uint8_t *)plaintext,
                      pt_len,
                      ct_buf,
                      tag)) {
        printf("[sender] AEAD encrypt failed\r\n");
        vTaskDelete(NULL);
        return;
    }
    uint32_t aead_ms = monotonic_ms() - t1;

    printf("[sender] AEAD encrypt done in %lu ms\r\n",
           (unsigned long)aead_ms);

    DataMsg msg;
    memset(&msg, 0, sizeof(msg));
    msg.type       = MSG_DATA;
    msg.reserved   = 0;
    msg.kem_ct_len = (uint16_t)sizeof(ct);
    msg.text_len   = (uint16_t)pt_len;
    memcpy(msg.nonce, nonce, sizeof(nonce));

    // Layout: buf = [KEM ct || ciphertext || tag]
    memcpy(msg.buf, ct, sizeof(ct));
    memcpy(msg.buf + sizeof(ct), ct_buf, pt_len);
    memcpy(msg.buf + sizeof(ct) + pt_len, tag, AEAD_TAG_LEN);

    size_t payload_len =
        1u + 1u + 2u + 2u + AEAD_NONCE_LEN +
        sizeof(ct) + pt_len + AEAD_TAG_LEN;

    uint8_t  coap_buf[MAX_UDP];
    uint16_t msg_id = (uint16_t)(monotonic_ms() & 0xFFFFu);
    size_t   coap_len = coap_build_post(
        coap_buf, sizeof(coap_buf),
        msg_id,
        "pqkem-data",
        reinterpret_cast<const uint8_t*>(&msg),
        payload_len
    );

    ssize_t sent_data = sendto(sock_fd, coap_buf, coap_len, 0,
                               (struct sockaddr *)&gw, sizeof(gw));

    if (sent_data < 0) {
        printf("[sender] sendto(DATA) FAILED, errno=%d\r\n", errno);
        vTaskDelete(NULL);
        return;
    }

    printf("[sender] Sent protected message (pt_len=%u, sent=%d, coap_len=%u)\r\n",
           (unsigned)pt_len,
           (int)sent_data,
           (unsigned)coap_len);

    // Blink external LED for 3 seconds to show "message sent"
    led_on_ms(3000);

    // Idle loop
    while (1) {
        vTaskDelay(pdMS_TO_TICKS(1000));
    }
}

// -----------------------------------------------------------------------------
// Wait for Wi-Fi to be fully ready (wifi.cpp sets g_wifi_ready = 1)
// -----------------------------------------------------------------------------

static void wait_for_wifi_ready()
{
    while (!g_wifi_ready) {
        vTaskDelay(pdMS_TO_TICKS(200));
    }
}

// -----------------------------------------------------------------------------
// Starter task: waits for Wi-Fi, then creates Sender task
// -----------------------------------------------------------------------------

static void task_pq_starter(void *param)
{
    (void)param;

    printf("[starter] Waiting for Wi-Fi to be ready...\r\n");
    wait_for_wifi_ready();
    printf("[starter] Wi-Fi ready, starting SENDER task\r\n");

    BaseType_t rc = xTaskCreate(
        task_sender,
        "sender",
        4096,
        NULL,
        10,
        NULL
    );

    printf("[starter] xTaskCreate rc=%ld\r\n", (long)rc);
    vTaskDelete(NULL); // starter done
}

// -----------------------------------------------------------------------------
// app_main + bfl_main
// -----------------------------------------------------------------------------

extern "C" void app_main(void)
{
    // Initialize BL602 system (UART, heap, interrupts, etc.)
    vInitializeBL602();

    // Initialize external LED on GPIO5
    led_init();

    printf("\r\n=== Sender: Post-quantum key exchange (ML-KEM-%u, level %u) === %s %s ===\r\n",
           (unsigned)PQKEM_VARIANT,
           (unsigned)PQKEM_STRENGTH_LEVEL,
           __DATE__, __TIME__);

    // Start WiFi task
    printf("[main] Starting WiFi task\r\n");
    xTaskCreateStatic(
        task_wifi,
        "wifi",
        WIFI_STACK_SIZE,
        NULL,
        16,          // priority
        wifi_stack,
        &wifi_task
    );

    // Start lwIP TCP/IP stack
    printf("[main] Starting TCP/IP stack\r\n");
    tcpip_init(NULL, NULL);

    // Start PQ starter task (waits for Wi-Fi, then creates sender)
    BaseType_t rc = xTaskCreate(
        task_pq_starter,
        "pqstart",
        2048,
        NULL,
        9,
        NULL
    );
    printf("[main] starter xTaskCreate rc=%ld\r\n", (long)rc);

    printf("[main] Starting scheduler\r\n");
    vTaskStartScheduler();

    // Should never get here
    printf("[main] vTaskStartScheduler returned (unexpected)\r\n");
    for (;;) {
        vTaskDelay(pdMS_TO_TICKS(1000));
    }
}

// BL602 startup entry point
extern "C" int bfl_main(void)
{
    app_main();
    return 0;
}

