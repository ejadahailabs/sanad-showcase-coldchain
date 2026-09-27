/* mrtm_hal.h — the thin hardware interface every unit talks to (ADR-0027).
 * Two implementations: components/mrtm_hal/src/hal_esp32.c (ESP-IDF, target) and
 * 10-src/host/hal_host.c (host stubs, gcc). Units never include an ESP-IDF header.
 * Pins and parts: 09-hardware/pin-map.md. IEC 62304 §5.3.3 / §5.5.1, Class C. */
#ifndef MRTM_HAL_H
#define MRTM_HAL_H
#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include "mrtm_errors.h"

uint32_t hal_now_ms(void);                    /* monotonic ms since boot */
void hal_delay_ms(uint32_t ms);               /* blocking wait (power-up tests only) */

/* 1-Wire probe, DS18B20 on GPIO 4 */
bool hal_onewire_reset(void);                 /* true = presence pulse seen */
bool hal_onewire_start_conversion(void);
bool hal_onewire_read_scratchpad(uint8_t sp[9]);

/* Alarm outputs and inputs */
void hal_buzzer_set(bool on);                 /* GPIO 11 */
bool hal_buzzer_current_ok(void);             /* GPIO 16: true = >= 5 mA seen while driven */
void hal_red_led(uint8_t hz);                 /* GPIO 12 via LEDC; 0 = off */
void hal_green_led(bool on);
bool hal_button_pressed(void);                /* raw level, true = pressed */
void hal_timer_once(uint32_t ms, void (*cb)(void)); /* one-shot, callback in timer task context */
void hal_notify_alarm_task(void);             /* wake alarmTask now */

/* Watchdogs */
void hal_task_wdt_init(uint32_t timeout_s);   /* ESP-IDF task WDT, panic restart */
void hal_wdt_pulse(uint32_t width_ms);        /* GPIO 15, to the backup alarm's timer */
bool hal_backup_alarm_sensed(void);           /* backup alarm sounding (self-test sense line) */

/* Power */
bool hal_mains_present(void);
uint32_t hal_battery_mv(void);                /* average of 8 ADC samples, divider EE-REVIEW */

/* Flash partitions for the history: part 0 = logA, 1 = logB; 4096-byte sectors */
bool hal_flash_erase_sector(int part, uint32_t sector);
bool hal_flash_write(int part, uint32_t offset, const void *src, size_t n);
bool hal_flash_read(int part, uint32_t offset, void *dst, size_t n);

/* NVS key/value blobs */
mrtm_err_t hal_nvs_get(const char *key, void *dst, size_t n);
mrtm_err_t hal_nvs_set(const char *key, const void *src, size_t n);

/* I2C: SSD1306 (0x3C) and the RTC on one bus */
mrtm_err_t hal_i2c_write(uint8_t addr, const uint8_t *data, size_t n, uint32_t timeout_ms);
void hal_i2c_bus_reset(void);                 /* 9 SCL pulses + stop, then driver re-install */
mrtm_err_t hal_rtc_read(uint32_t *utc_s, bool *osc_stopped); /* reading clears the stop flag */
mrtm_err_t hal_rtc_write(uint32_t utc_s);

/* USB mass storage (TinyUSB, SOUP-5) */
mrtm_err_t hal_usb_msc_init(uint32_t block_count);

/* Diagnostics */
void hal_log_stack_marks(void);               /* each task's stack high-water mark to the console */

#endif
