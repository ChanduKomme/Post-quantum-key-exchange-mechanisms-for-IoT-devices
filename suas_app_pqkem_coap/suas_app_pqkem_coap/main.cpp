extern "C" {
    /* BL602 platform init */
    void vInitializeBL602(void);

    /* FreeRTOS */
    #include <FreeRTOS.h>
    #include <task.h>

    /* C libs */
    #include <stdio.h>
    #include <stdint.h>
    #include <string.h>

    /* lwIP */
    #include <lwip/sockets.h>
    #include <lwip/inet.h>
    #include <lwip/tcpip.h>
    #include <lwip/netif.h>

    /* mbedTLS */
    #include <mbedtls/ccm.h>
    #include <mbedtls/hkdf.h>
    #include <mbedtls/md.h>

    /* BL602 GPIO */
    #include <bl_gpio.h>

    /* errno from newlib */
    extern int errno;
}

#include "pqkem_kem.h"
#include "coap_minimal.h"

/* WiFi task from wifi.cpp */
extern "C" void task_wifi(void *param);
/* Set in wifi.cpp when Wi-Fi + DHCP are done */
extern "C" volatile uint8_t g_wifi_ready;

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


/* WiFi task static storage */
#define WIFI_STACK_SIZE 512
static StackType_t wifi_stack[WIFI_STACK_SIZE];
static StaticTask_t wifi_task;


/* External LED on GPIO5 */
static constexpr uint8_t LED_PIN  = 5;
static constexpr uint8_t LED_ON   = 1;
static constexpr uint8_t LED_OFF  = 0;

static void led_init()
{
    bl_gpio_enable_output(LED_PIN, 0, 0);
    bl_gpio_output_set(LED_PIN, LED_OFF);
}

/* Turn LED on for "ms" milliseconds then off */
static void led_on_ms(uint32_t ms)
{
    bl_gpio_output_set(LED_PIN, LED_ON);
    vTaskDelay(pdMS_TO_TICKS(ms));
    bl_gpio_output_set(LED_PIN, LED_OFF);
}


/* Simple millisecond timer using FreeRTOS tick count */
static uint32_t monotonic_ms()
{
    return (uint32_t)xTaskGetTickCount() * (uint32_t)portTICK_PERIOD_MS;
}

static volatile uint32_t g_tamper_detected = 0;
static volatile uint32_t g_last_packet_time = 0;

static inline uint32_t safe_read_volatile(volatile uint32_t* var)
{
    return *var;
}

static inline void safe_write_volatile(volatile uint32_t* var, uint32_t value)
{
    *var = value;
}

/* AEAD (AES-CCM) wrapper using mbedTLS */
static const size_t AEAD_KEY_LEN   = 16;  // AES-128
static const size_t AEAD_NONCE_LEN = 12;
static const size_t AEAD_TAG_LEN   = 16;
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


/* HKDF-SHA256 helper */
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


/* UDP framing */
static const uint16_t DEMO_PORT = 5683;      // CoAP default port
static const size_t   MAX_UDP   = 1024;

enum MsgType : uint8_t {
    MSG_DATA = 3
};

struct DataMsg {
    uint8_t type;       // MSG_DATA
    uint8_t reserved;
    uint16_t kem_ct_len;
    uint16_t text_len;
    uint8_t nonce[AEAD_NONCE_LEN];
    uint8_t buf[PQKEM_CIPHERTEXT_BYTES + MAX_PLAINTEXT_LEN + AEAD_TAG_LEN];
} __attribute__((packed));


/* Fetch gateway PK using BROADCAST discovery */
static bool fetch_gateway_pk_with_discovery(int sock_fd,
                             struct sockaddr_in *gw_addr, // pointer to update
                             uint8_t *gateway_pk)
{
    uint8_t  coap_buf[MAX_UDP];
    uint16_t msg_id = (uint16_t)(monotonic_ms() & 0xFFFFu);

    /* Build POST /pqkem-pk with empty payload */
    size_t coap_len = coap_build_post(
        coap_buf, sizeof(coap_buf),
        msg_id,
        "pqkem-pk",
        NULL,
        0
    );

    /* Send to BROADCAST (255.255.255.255) initially */
    /* The socket is already configured for broadcast in task_sender */
    printf("[sender] Broadcasting Discovery Packet to 255.255.255.255...\r\n");

    ssize_t sent = sendto(sock_fd, coap_buf, coap_len, 0,
                          (const struct sockaddr *)gw_addr,
                          sizeof(*gw_addr));
    if (sent < 0) {
        printf("[sender] sendto(BROADCAST) FAILED, errno=%d\r\n", errno);
        return false;
    }
    printf("[sender] Sent Discovery Request (len=%u)\r\n", (unsigned)coap_len);

    /*  Wait for response from the REAL Gateway */
    uint8_t rx_buf[MAX_UDP];
    struct sockaddr_in src;
    socklen_t srclen = sizeof(src);
    
    /* Set a timeout for receive so we don't hang forever */
    struct timeval tv;
    tv.tv_sec = 5;
    tv.tv_usec = 0;
    setsockopt(sock_fd, SOL_SOCKET, SO_RCVTIMEO, (const char*)&tv, sizeof tv);

    int n = recvfrom(sock_fd, rx_buf, sizeof(rx_buf), 0,
                     (struct sockaddr *)&src, &srclen);
    
    if (n <= 0) {
        printf("[sender] No response received. Is the Gateway running?\r\n");
        return false;
    }

    /* AUTO-UPDATE: We found the Gateway */
    char found_ip[16];
    inet_ntoa_r(src.sin_addr, found_ip, sizeof(found_ip));
    printf("[sender] RESPONSE RECEIVED from IP: %s\r\n", found_ip);
    
    /* Update the main gw_addr struct with the specific IP we found
     
     */
    gw_addr->sin_addr = src.sin_addr;

    CoapMessage cm;
    if (!coap_parse(&cm, rx_buf, (size_t)n)) {
        printf("[sender] Response is not valid CoAP (len=%d)\r\n", n);
        return false;
    }

    if (strcmp(cm.uri_path, "pqkem-pk") != 0) {
        printf("[sender] URI mismatch (got \"%s\")\r\n", cm.uri_path);
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


/* Simple tamper detection check */
static bool should_send_message()
{
    if (safe_read_volatile(&g_tamper_detected)) {
        led_on_ms(100); 
        return false;
    }
    
    uint32_t current_time = monotonic_ms();
    uint32_t last_time = safe_read_volatile(&g_last_packet_time);
    
    if (last_time > 0) {
        uint32_t time_since_last = current_time - last_time;
        if (time_since_last < 50) { 
            safe_write_volatile(&g_tamper_detected, 1);
            return false;
        }
    }
    
    safe_write_volatile(&g_last_packet_time, current_time);
    return true;
}


/* Sender task */
static void task_sender(void *param)
{
    (void)param;
    printf("[sender] Task started (ML-KEM-%u, level %u)\r\n",
           (unsigned)PQKEM_VARIANT,
           (unsigned)PQKEM_STRENGTH_LEVEL);
    
    /* Retry socket() until lwIP is ready */
    int sock_fd = -1;
    while (sock_fd < 0) {
        sock_fd = socket(AF_INET, SOCK_DGRAM, IPPROTO_UDP);
        if (sock_fd < 0) {
            printf("[sender] socket() failed, errno=%d, retrying in 1s\r\n", errno);
            vTaskDelay(pdMS_TO_TICKS(1000));
        }
    }
    printf("[sender] socket() OK, fd=%d\r\n", sock_fd);

    /* Enable Broadcast option on socket */
    int broadcast = 1;
    if (setsockopt(sock_fd, SOL_SOCKET, SO_BROADCAST, &broadcast, sizeof(broadcast)) < 0) {
        printf("[sender] Error enabling broadcast option\r\n");
    }

    /* Start with Broadcast Address (255.255.255.255) */
    struct sockaddr_in gw;
    memset(&gw, 0, sizeof(gw));
    gw.sin_family      = AF_INET;
    gw.sin_port        = htons(DEMO_PORT);
    gw.sin_addr.s_addr = IPADDR_BROADCAST; // 255.255.255.255

    /* Fetch Gateway public key (Auto-Detect IP via Broadcast) ---- */
    uint8_t gateway_pk[PQKEM_PUBLIC_KEY_BYTES];

    
    if (!fetch_gateway_pk_with_discovery(sock_fd, &gw, gateway_pk)) {
        printf("[sender] ERROR: Failed to find Gateway or obtain key\r\n");
        vTaskDelete(NULL);
        return;
    }

   

    /* ML-KEM Encapsulation  */
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

    /*  Derive AEAD key with HKDF */
    AeadKey aead_key;
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

    /* Build and send protected message  */
    const char *plaintext = "Hello, message from sender";
    size_t pt_len = strlen(plaintext);

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

    /* Layout: buf = [KEM ct || ciphertext || tag] */
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

    /* CHECK FOR TAMPERING BEFORE SENDING */
    if (!should_send_message()) {
        for (int i = 0; i < 10; i++) {
            led_on_ms(100);
            vTaskDelay(pdMS_TO_TICKS(100));
        }
        close(sock_fd);
        vTaskDelete(NULL);
        return;
    }

    /* Send DATA packet (destination IP was updated during PK discovery) */
    ssize_t sent_data = sendto(sock_fd, coap_buf, coap_len, 0,
                               (struct sockaddr *)&gw, sizeof(gw));

    if (sent_data < 0) {
        printf("[sender] sendto(DATA) FAILED, errno=%d\r\n", errno);
        vTaskDelete(NULL);
        return;
    }

    printf("[sender] Sent ONE protected message (pt_len=%u, sent=%d, coap_len=%u)\r\n",
           (unsigned)pt_len,
           (int)sent_data,
           (unsigned)coap_len);
    
    printf("[sender] Message content: \"%s\"\r\n", plaintext);
    printf("[sender] Message successfully encrypted and sent\r\n");

    led_on_ms(3000);

  
    vTaskDelay(pdMS_TO_TICKS(10000));
    
    printf("[sender] Task finished.\r\n");
    
    for (int i = 0; i < 3; i++) {
        led_on_ms(500);
        vTaskDelay(pdMS_TO_TICKS(500));
    }
    
    close(sock_fd);
    vTaskDelete(NULL);
}


static void wait_for_wifi_ready()
{
    while (!g_wifi_ready) {
        vTaskDelay(pdMS_TO_TICKS(200));
    }
}

/* Starter task */
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

    vTaskDelete(NULL);
}

/* Main */
extern "C" void app_main(void)
{
    vInitializeBL602();
    led_init();

    printf("\r\n=== Sender: Post-quantum key exchange (ML-KEM-%u, level %u) === %s %s ===\r\n",
           (unsigned)PQKEM_VARIANT,
           (unsigned)PQKEM_STRENGTH_LEVEL,
           __DATE__, __TIME__);
    
    xTaskCreateStatic(
        task_wifi,
        "wifi",
        WIFI_STACK_SIZE,
        NULL,
        16,
        wifi_stack,
        &wifi_task
    );

    tcpip_init(NULL, NULL);

    xTaskCreate(
        task_pq_starter,
        "pqstart",
        2048,
        NULL,
        9,
        NULL
    );

    vTaskStartScheduler();
}

extern "C" int bfl_main(void)
{
    app_main();
    return 0;
}
