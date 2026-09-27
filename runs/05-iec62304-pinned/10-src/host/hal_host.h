/* hal_host.h — knobs of the host stubs behind mrtm_hal.h (ADR-0027). Tests and the simulation set
 * these to play the hardware. Not target code. IEC 62304 §5.5.2 (verification environment). */
#ifndef HAL_HOST_H
#define HAL_HOST_H
#include <stdbool.h>
#include <stdint.h>
#include "mrtm_config.h"

typedef struct {
    uint32_t now_ms;
    /* probe */
    int16_t probe_tenths;       /* what the DS18B20 "measures" */
    bool probe_bad_crc, probe_bus_fail;
    /* alarm hardware */
    bool buzzer_on, buzzer_broken, button, backup_broken;
    uint8_t red_hz;
    uint32_t buzzer_changed_ms;
    bool green;
    uint32_t notifications;
    /* watchdog + backup alarm model (MRTM-SAF-009: sounds 10 s after the last pulse) */
    uint32_t pulses, last_pulse_ms, task_wdt_s;
    /* power */
    bool mains;
    uint32_t battery_mv;
    /* flash, NVS, I2C, RTC */
    bool flash_fail;
    bool nvs_cfg_present, nvs_alarm_present;
    uint8_t nvs_cfg[16], nvs_alarm;
    uint32_t i2c_fail_next, i2c_writes, i2c_resets;
    uint32_t rtc_utc;
    bool rtc_osc_stopped, rtc_fail;
    bool usb_ready;
} host_hw_t;

extern host_hw_t host;
void host_reset(void);                     /* power-cycle the stub hardware, flash kept */
void host_erase_flash(void);
void host_advance(uint32_t ms);            /* move the clock, fire due one-shot timers */
bool host_backup_alarm_sounding(void);
uint8_t *host_flash(int part);             /* raw flash image, for corruption tests */

#endif
