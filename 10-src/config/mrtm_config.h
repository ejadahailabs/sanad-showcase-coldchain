/*
 * mrtm_config.h — build-time configuration of the MRTM firmware (ADR-0024).
 * IEC 62304 §5.4.2. Class C. DRAFT — needs Masood's review. Synthetic values.
 *
 * Two kinds of values, two homes:
 *   - HERE: constants fixed by a requirement. Changing one is a design change and a new build.
 *   - NVS record mrtm_config_t (config_mgr): values a technician sets (allowed band,
 *     probe offset, calibration date). There is deliberately NO default band in this file:
 *     a missing or corrupt record puts the monitor in failSafe (MRTM-SAF-017).
 * Names match the `Software:` lines in 01-data-dictionary/data-dictionary.md.
 */
#ifndef MRTM_CONFIG_H
#define MRTM_CONFIG_H

/* Sampling and excursion — @implements MRTM-SYS-001 MRTM-SYS-002 MRTM-SYS-018 */
#define MRTM_SAMPLE_PERIOD_MS        10000u   /* 10 s */
#define MRTM_CONFIRM_SAMPLES         7u       /* 7 samples spanning 60 s, in and out */
#define MRTM_HYSTERESIS_TENTHS       0        /* A-26: time hysteresis only; knob kept at 0 */

/* Allowed band sanity limits for the stored record — @implements MRTM-SYS-017 MRTM-SAF-017 */
#define MRTM_BAND_MIN_TENTHS         20       /* 2.0 degC */
#define MRTM_BAND_MAX_TENTHS         80       /* 8.0 degC */

/* Probe — @implements MRTM-SYS-012 MRTM-SAF-003 */
#define MRTM_PROBE_FAULT_S           30u
#define MRTM_PROBE_MIN_TENTHS        (-300)
#define MRTM_PROBE_MAX_TENTHS        500

/* Alarm — @implements MRTM-SYS-019 MRTM-SAF-011 MRTM-SAF-014 MRTM-IFC-002 MRTM-SAF-019 */
#define MRTM_ALARM_PERIOD_MS         1000u
#define MRTM_REALARM_MS              (15u * 60u * 1000u)
#define MRTM_BUTTON_DEBOUNCE_MS      50u
#define MRTM_BUTTON_STUCK_MS         60000u
#define MRTM_BUZZER_FAULT_STEPS      5u       /* 5 x 1 s steps with no current */
#define MRTM_RED_LED_ALARM_HZ        2u
#define MRTM_RED_LED_FAULT_HZ        4u

/* Watchdogs — @implements MRTM-SAF-004 MRTM-SAF-009 MRTM-SAF-010 */
#define MRTM_HEARTBEAT_MAX_MS        2000u
#define MRTM_TASK_WDT_S              5u
#define MRTM_WDT_PULSE_MS            1u

/* Power — @implements MRTM-SAF-008 */
#define MRTM_BATTERY_LOW_MV          3400u

/* Event log — @implements MRTM-SYS-015 MRTM-SYS-022 MRTM-SAF-018 */
#define MRTM_LOG_CAPACITY            10000u
#define MRTM_LOG_WARN_AT             9000u
#define MRTM_LOG_SLOTS_PER_SECTOR    128u     /* 4096 / 32 */
#define MRTM_LOG_SECTORS             79u      /* 79 x 128 = 10112 >= capacity + one sector */

/* Display — @implements MRTM-PRF-004 MRTM-SAF-016 MRTM-SAF-021 */
#define MRTM_DISPLAY_PERIOD_MS       500u
#define MRTM_TEMP_REFRESH_MS         10000u
#define MRTM_BAND_SHOW_MS            3000u
#define MRTM_I2C_TIMEOUT_MS          100u
#define MRTM_CALIBRATION_DAYS        365u     /* MRTM-SAF-012 */

/* FreeRTOS tasks (ADR-0019): priority, stack bytes, core */
#define MRTM_PRIO_ALARM              22
#define MRTM_PRIO_SUPERVISOR         21
#define MRTM_PRIO_SENSOR             18
#define MRTM_PRIO_LOG                16
#define MRTM_PRIO_DISPLAY            12
#define MRTM_PRIO_USB                5

#endif /* MRTM_CONFIG_H */
