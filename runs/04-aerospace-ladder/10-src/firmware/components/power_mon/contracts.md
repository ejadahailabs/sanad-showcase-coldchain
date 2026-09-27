# Contract — `power_mon` (C)

> **Standard:** IEC 62304 §5.4.2 (detailed design), §5.4.3 (interfaces), Class C. **Status:** DRAFT — needs Masood's review. **MANUAL** (F-77): generated with `MrtmSwDetail::PowerMonApi` from one table (tools/detail-design.py).
> **Component:** `powerMon` (.ejadah/rew/architecture/powerMon.md) · **Satisfies:** MRTM-SAF-005, MRTM-SAF-008, MRTM-SYS-016

**What it does:** Watch mains and battery; log and alarm.

**Common rules:** every function that can fail returns `mrtm_err_t` (`mrtm_errors.h`, `MrtmSwCodes::ErrorCode`); the caller checks it. No heap after start-up. Constants come from `10-src/config/mrtm_config.h` (ADR-0024).

## Functions

| Function (C) | Pre-condition | Post-condition | Errors |
|---|---|---|---|
| `mrtm_err_t power_mon_init(void);` | Mains-sense GPIO input, battery ADC channel configured. | Interrupt on both edges of mains-sense. | none |
| `void power_mon_isr(void *arg);` | Mains-sense edge. | POWER_LOSS or POWER_RESTORE posted from the ISR (logged within 1 s, MRTM-SAF-005). | none |
| `void power_mon_step(uint32_t now_ms);` | supervisorTask every 500 ms. | Battery below MRTM_BATTERY_LOW_MV (3400 mV) on 2 consecutive reads -> SIG_BATTERY_LOW + LOW_BATTERY event (buzzer <= 5 s, MRTM-SAF-008). | none |

## Algorithms

- **`power_mon_step`** — Average 8 ADC samples, calibrated with esp_adc_cal; the divider ratio is EE-REVIEW.

## Unit tests to write in Phase 9 (Unity, ADR-0023)

One test file `test/test_power_mon.c`; one test per post-condition row above, plus one per error code listed. Each test carries `@verifies` with the requirement ids above.
