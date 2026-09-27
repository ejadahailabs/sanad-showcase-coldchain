/* hal_esp32.c — the target side of mrtm_hal.h on ESP-IDF v5.x (ADR-0027).
 * IEC 62304 §5.5.1, Class C. UNTESTED: ESP-IDF is not installed on the dogfood build box (A-30).
 * REVIEW: every function here — driver calls written from the ESP-IDF API reference, not run.
 * EE-REVIEW: GPIO 17 as the backup-alarm sense line is NOT in 09-hardware/pin-map.md (DEF-006). */
#include <string.h>
#include "driver/gpio.h"
#include "driver/i2c.h"
#include "driver/ledc.h"
#include "esp_partition.h"
#include "esp_system.h"
#include "esp_task_wdt.h"
#include "esp_timer.h"
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "nvs.h"
#include "onewire_bus.h"
#include "mrtm_hal.h"

#define PIN_BATTERY 1
#define PIN_MAINS 2
#define PIN_PROBE 4
#define PIN_SDA 8
#define PIN_SCL 9
#define PIN_BUZZER 11
#define PIN_RED 12
#define PIN_GREEN 13
#define PIN_BUTTON 14
#define PIN_WDT 15
#define PIN_BUZZER_SENSE 16
#define PIN_BACKUP_SENSE 17   /* DEF-006, EE-REVIEW */

extern TaskHandle_t mrtm_alarm_task;
static const esp_partition_t *log_part[2];
static esp_timer_handle_t one_shot;
static void (*one_shot_cb)(void);

uint32_t hal_now_ms(void) { return (uint32_t)(esp_timer_get_time() / 1000); }
void hal_delay_ms(uint32_t ms) { vTaskDelay(pdMS_TO_TICKS(ms)); }

/* 1-Wire: ESP-IDF onewire_bus component (RMT); DS18B20 commands 0xCC skip ROM, 0x44 convert, 0xBE read. */
static onewire_bus_handle_t ow;
bool hal_onewire_reset(void) { return onewire_bus_reset(ow) == ESP_OK; }
bool hal_onewire_start_conversion(void)
{
    uint8_t cmd[2] = { 0xCC, 0x44 };
    return onewire_bus_reset(ow) == ESP_OK && onewire_bus_write_bytes(ow, cmd, 2) == ESP_OK;
}
bool hal_onewire_read_scratchpad(uint8_t sp[9])
{
    uint8_t cmd[2] = { 0xCC, 0xBE };
    return onewire_bus_reset(ow) == ESP_OK && onewire_bus_write_bytes(ow, cmd, 2) == ESP_OK &&
           onewire_bus_read_bytes(ow, sp, 9) == ESP_OK;
}

void hal_buzzer_set(bool on) { gpio_set_level(PIN_BUZZER, on); }
bool hal_buzzer_current_ok(void) { return gpio_get_level(PIN_BUZZER_SENSE) == 1; }
void hal_red_led(uint8_t hz)
{
    if (hz == 0) { ledc_stop(LEDC_LOW_SPEED_MODE, LEDC_CHANNEL_0, 0); return; }
    ledc_set_freq(LEDC_LOW_SPEED_MODE, LEDC_TIMER_0, hz);
    ledc_set_duty(LEDC_LOW_SPEED_MODE, LEDC_CHANNEL_0, 512);   /* 50 % of 10-bit */
    ledc_update_duty(LEDC_LOW_SPEED_MODE, LEDC_CHANNEL_0);
}
void hal_green_led(bool on) { gpio_set_level(PIN_GREEN, on); }
bool hal_button_pressed(void) { return gpio_get_level(PIN_BUTTON) == 0; }   /* pull-up, pressed = low */
static void one_shot_fire(void *arg) { (void)arg; if (one_shot_cb) one_shot_cb(); }
void hal_timer_once(uint32_t ms, void (*cb)(void))
{
    one_shot_cb = cb;
    if (!one_shot) { esp_timer_create_args_t a = { .callback = one_shot_fire, .name = "btn" }; esp_timer_create(&a, &one_shot); }
    esp_timer_stop(one_shot);
    esp_timer_start_once(one_shot, (uint64_t)ms * 1000u);
}
void hal_notify_alarm_task(void)
{
    if (xPortInIsrContext()) { BaseType_t w = pdFALSE; vTaskNotifyGiveFromISR(mrtm_alarm_task, &w); portYIELD_FROM_ISR(w); }
    else xTaskNotifyGive(mrtm_alarm_task);
}

void hal_task_wdt_init(uint32_t timeout_s)
{
    esp_task_wdt_config_t c = { .timeout_ms = timeout_s * 1000u, .idle_core_mask = 3, .trigger_panic = true };
    esp_task_wdt_reconfigure(&c);
}
void hal_wdt_pulse(uint32_t width_ms) { gpio_set_level(PIN_WDT, 1); esp_rom_delay_us(width_ms * 1000u); gpio_set_level(PIN_WDT, 0); }
bool hal_backup_alarm_sensed(void) { return gpio_get_level(PIN_BACKUP_SENSE) == 1; }

bool hal_mains_present(void) { return gpio_get_level(PIN_MAINS) == 1; }
uint32_t hal_battery_mv(void) { return 0; }   /* REVIEW + EE-REVIEW: esp_adc oneshot + cali, 8 samples, x2 divider — not written */

static const esp_partition_t *part(int p)
{
    if (!log_part[p]) log_part[p] = esp_partition_find_first(ESP_PARTITION_TYPE_DATA, 0x40, p ? "logB" : "logA");
    return log_part[p];
}
bool hal_flash_erase_sector(int p, uint32_t sector) { return esp_partition_erase_range(part(p), sector * 4096u, 4096u) == ESP_OK; }
bool hal_flash_write(int p, uint32_t off, const void *src, size_t n) { return esp_partition_write(part(p), off, src, n) == ESP_OK; }
bool hal_flash_read(int p, uint32_t off, void *dst, size_t n) { return esp_partition_read(part(p), off, dst, n) == ESP_OK; }

mrtm_err_t hal_nvs_get(const char *key, void *dst, size_t n)
{
    nvs_handle_t h; size_t len = n;
    if (nvs_open("mrtm", NVS_READONLY, &h) != ESP_OK) return MRTM_ERR_NVS;
    esp_err_t e = nvs_get_blob(h, key, dst, &len);
    nvs_close(h);
    return e == ESP_OK && len == n ? MRTM_OK : MRTM_ERR_NVS;
}
mrtm_err_t hal_nvs_set(const char *key, const void *src, size_t n)
{
    nvs_handle_t h;
    if (nvs_open("mrtm", NVS_READWRITE, &h) != ESP_OK) return MRTM_ERR_NVS;
    esp_err_t e = nvs_set_blob(h, key, src, n);
    if (e == ESP_OK) e = nvs_commit(h);
    nvs_close(h);
    return e == ESP_OK ? MRTM_OK : MRTM_ERR_NVS;
}

mrtm_err_t hal_i2c_write(uint8_t addr, const uint8_t *d, size_t n, uint32_t timeout_ms)
{
    esp_err_t e = i2c_master_write_to_device(I2C_NUM_0, addr, d, n, pdMS_TO_TICKS(timeout_ms));
    return e == ESP_OK ? MRTM_OK : e == ESP_ERR_TIMEOUT ? MRTM_ERR_TIMEOUT : MRTM_ERR_BUS;
}
void hal_i2c_bus_reset(void)
{
    i2c_driver_delete(I2C_NUM_0);
    gpio_set_direction(PIN_SCL, GPIO_MODE_OUTPUT_OD);
    for (int i = 0; i < 9; i++) { gpio_set_level(PIN_SCL, 0); esp_rom_delay_us(5); gpio_set_level(PIN_SCL, 1); esp_rom_delay_us(5); }
    i2c_driver_install(I2C_NUM_0, I2C_MODE_MASTER, 0, 0, 0);   /* REVIEW: config re-applied by board init */
}
mrtm_err_t hal_rtc_read(uint32_t *utc_s, bool *osc_stopped) { (void)utc_s; (void)osc_stopped; return MRTM_ERR_BUS; } /* REVIEW: RTC part driver not written */
mrtm_err_t hal_rtc_write(uint32_t utc_s) { (void)utc_s; return MRTM_ERR_BUS; }
mrtm_err_t hal_usb_msc_init(uint32_t block_count) { (void)block_count; return MRTM_OK; }   /* REVIEW: tinyusb_msc callbacks -> usb_export_read10/write10 */
void hal_log_stack_marks(void) { /* REVIEW: uxTaskGetStackHighWaterMark per task handle */ }
