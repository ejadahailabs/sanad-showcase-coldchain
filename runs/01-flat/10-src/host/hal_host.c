/* hal_host.c — host stubs for mrtm_hal.h: a fake clock, fake flash/NVS/I2C, a probe model and a
 * backup-alarm model, so the unit logic runs with gcc on this box. Not target code.
 * IEC 62304 §5.5.2 / §5.6.2 (verification environment). */
#include <stdio.h>
#include <string.h>
#include "hal_host.h"
#include "mrtm_crc.h"
#include "mrtm_hal.h"

host_hw_t host;
#define FLASH_BYTES (MRTM_LOG_SECTORS * 4096u)
static uint8_t flash[2][FLASH_BYTES];
static void (*timer_cb)(void);
static uint32_t timer_due;

void host_erase_flash(void) { memset(flash, 0xFF, sizeof flash); }
uint8_t *host_flash(int part) { return flash[part]; }

void host_reset(void)
{
    uint32_t keep_utc = host.rtc_utc;
    memset(&host, 0, sizeof host);
    host.mains = true;
    host.battery_mv = 4100;
    host.probe_tenths = 50;                /* 5.0 degC, mid-band */
    host.rtc_utc = keep_utc ? keep_utc : 1790000000u;   /* synthetic date */
    timer_cb = NULL;
}

void host_advance(uint32_t ms)
{
    for (uint32_t i = 0; i < ms; i++) {
        host.now_ms++;
        if (host.now_ms % 1000u == 0) host.rtc_utc++;
        if (timer_cb && host.now_ms >= timer_due) { void (*cb)(void) = timer_cb; timer_cb = NULL; cb(); }
    }
}

bool host_backup_alarm_sounding(void) { return !host.backup_broken && host.now_ms - host.last_pulse_ms >= 10000u; }

uint32_t hal_now_ms(void) { return host.now_ms; }
void hal_delay_ms(uint32_t ms) { host_advance(ms); }

bool hal_onewire_reset(void) { return !host.probe_bus_fail; }
bool hal_onewire_start_conversion(void) { return !host.probe_bus_fail; }
bool hal_onewire_read_scratchpad(uint8_t sp[9])
{
    if (host.probe_bus_fail) return false;
    int16_t raw = (int16_t)(host.probe_tenths * 16 / 10);
    memset(sp, 0, 9);
    sp[0] = (uint8_t)raw; sp[1] = (uint8_t)((uint16_t)raw >> 8); sp[4] = 0x7F;   /* 12-bit config */
    sp[8] = (uint8_t)(mrtm_crc8_maxim(sp, 8) ^ (host.probe_bad_crc ? 0x5A : 0));
    return true;
}

void hal_buzzer_set(bool on) { if (on != host.buzzer_on) host.buzzer_changed_ms = host.now_ms; host.buzzer_on = on; }
bool hal_buzzer_current_ok(void) { return host.buzzer_on && !host.buzzer_broken; }
void hal_red_led(uint8_t hz) { host.red_hz = hz; }
void hal_green_led(bool on) { host.green = on; }
bool hal_button_pressed(void) { return host.button; }
void hal_timer_once(uint32_t ms, void (*cb)(void)) { timer_cb = cb; timer_due = host.now_ms + ms; }
void hal_notify_alarm_task(void) { host.notifications++; }

void hal_task_wdt_init(uint32_t timeout_s) { host.task_wdt_s = timeout_s; }
void hal_wdt_pulse(uint32_t width_ms) { (void)width_ms; host.pulses++; host.last_pulse_ms = host.now_ms; }
bool hal_backup_alarm_sensed(void) { return host_backup_alarm_sounding(); }

bool hal_mains_present(void) { return host.mains; }
uint32_t hal_battery_mv(void) { return host.battery_mv; }

bool hal_flash_erase_sector(int part, uint32_t sector)
{
    if (host.flash_fail || sector >= MRTM_LOG_SECTORS) return false;
    memset(&flash[part][sector * 4096u], 0xFF, 4096u);
    return true;
}
bool hal_flash_write(int part, uint32_t offset, const void *src, size_t n)
{
    if (host.flash_fail || offset + n > FLASH_BYTES) return false;
    uint8_t *d = &flash[part][offset];
    const uint8_t *s = src;
    for (size_t i = 0; i < n; i++) d[i] &= s[i];          /* NOR flash: writes only clear bits */
    return true;
}
bool hal_flash_read(int part, uint32_t offset, void *dst, size_t n)
{
    if (offset + n > FLASH_BYTES) return false;
    memcpy(dst, &flash[part][offset], n);
    return true;
}

mrtm_err_t hal_nvs_get(const char *key, void *dst, size_t n)
{
    if (strcmp(key, "cfg") == 0 && host.nvs_cfg_present && n == sizeof host.nvs_cfg) { memcpy(dst, host.nvs_cfg, n); return MRTM_OK; }
    if (strcmp(key, "alarm") == 0 && host.nvs_alarm_present && n == 1) { *(uint8_t *)dst = host.nvs_alarm; return MRTM_OK; }
    return MRTM_ERR_NVS;
}
mrtm_err_t hal_nvs_set(const char *key, const void *src, size_t n)
{
    if (strcmp(key, "cfg") == 0 && n == sizeof host.nvs_cfg) { memcpy(host.nvs_cfg, src, n); host.nvs_cfg_present = true; return MRTM_OK; }
    if (strcmp(key, "alarm") == 0 && n == 1) { host.nvs_alarm = *(const uint8_t *)src; host.nvs_alarm_present = true; return MRTM_OK; }
    return MRTM_ERR_NVS;
}

mrtm_err_t hal_i2c_write(uint8_t addr, const uint8_t *data, size_t n, uint32_t timeout_ms)
{
    (void)addr; (void)data; (void)n;
    if (host.i2c_fail_next) { host.i2c_fail_next--; host_advance(timeout_ms); return MRTM_ERR_TIMEOUT; }
    host.i2c_writes++;
    return MRTM_OK;
}
void hal_i2c_bus_reset(void) { host.i2c_resets++; host_advance(1); }
mrtm_err_t hal_rtc_read(uint32_t *utc_s, bool *osc_stopped)
{
    if (host.rtc_fail) return MRTM_ERR_BUS;
    *utc_s = host.rtc_utc;
    *osc_stopped = host.rtc_osc_stopped;
    host.rtc_osc_stopped = false;                         /* reading clears the flag */
    return MRTM_OK;
}
mrtm_err_t hal_rtc_write(uint32_t utc_s) { if (host.rtc_fail) return MRTM_ERR_BUS; host.rtc_utc = utc_s; return MRTM_OK; }
mrtm_err_t hal_usb_msc_init(uint32_t block_count) { host.usb_ready = block_count > 0; return MRTM_OK; }
void hal_log_stack_marks(void) { printf("stack marks: (host build has no task stacks)\n"); }
