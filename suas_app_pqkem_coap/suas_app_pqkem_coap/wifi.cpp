
extern "C" {
/* Standard includes */
#include <stdio.h>
#include <string.h>

/* SDK includes */
#include "bl_sys.h"
#include "bl_wifi.h"
#include "hal_sys.h"
#include "hal_wifi.h"

#include "aos/kernel.h"
#include "easyflash.h"
#include "vfs.h"
#include "wifi_mgmr_ext.h"

/* FreeRTOS includes */
#include <FreeRTOS.h>
#include <task.h>

/* LwIP includes */
#include <lwip/netifapi.h>
#include <lwip/ip4_addr.h>
#include <lwip/inet.h>

// Global flag: set to 1 when Wi-Fi is fully up (IP + prints done)
volatile uint8_t g_wifi_ready = 0;
}

#include "include/wifi.h"   // WIFI_SSID / WIFI_PW

/* Wi-Fi background configuration */
static wifi_conf_t wifi_mgmr_conf = {
    .country_code = "CN",
    .channel_nums = 13
};

/* FreeRTOS Wi-Fi task
 * - Starts firmware
 * - Starts wifi_mgmr background
 * - Connects STA to WIFI_SSID / WIFI_PW
 * - Prints IP/GW once when DHCP completes
 * - Sets g_wifi_ready = 1 after that
 */
extern "C" void task_wifi(void *param)
{
    (void)param;

    // Basic init (same pattern as BL602 Wi-Fi examples)
    bl_sys_init();
    easyflash_init();
    vfs_init();

    // Start Wi-Fi firmware & background
    hal_wifi_start_firmware_task();
    vTaskDelay(pdMS_TO_TICKS(2000));          // give firmware time
    wifi_mgmr_start_background(&wifi_mgmr_conf);
    vTaskDelay(pdMS_TO_TICKS(1000));          // let background task settle

    // Enable STA and connect
    wifi_interface_t wifi_iface = wifi_mgmr_sta_enable();
    wifi_mgmr_sta_connect(&wifi_iface,
                          (char *)WIFI_SSID,
                          (char *)WIFI_PW,
                          /* bssid (auto) */ NULL,
                          /* pmk (auto) */ NULL,
                          /* security (auto) */ 0,
                          /* band (auto) */ 0);

    // Poll for IP in background; print once when ready
    ip4_addr_t ip, gw, mask;
    bool printed = false;

    while (1) {
        memset(&ip,   0, sizeof(ip));
        memset(&gw,   0, sizeof(gw));
        memset(&mask, 0, sizeof(mask));

        wifi_mgmr_sta_ip_get(&ip.addr, &gw.addr, &mask.addr);

        if (!printed && ip.addr != 0) {
            printed = true;

            printf("[wifi] Connected to \"%s\"!\r\n", WIFI_SSID);
            printf("[wifi] IP  : %s\r\n", ip4addr_ntoa(&ip));
            printf("[wifi] GW  : %s\r\n", ip4addr_ntoa(&gw));
            // If you want to see mask too, uncomment:
            printf("[wifi] MASK: %s\r\n", ip4addr_ntoa(&mask));

            // *** WIFI FULLY READY NOW ***
            g_wifi_ready = 1;
        }

        vTaskDelay(pdMS_TO_TICKS(1000));
    }
}
