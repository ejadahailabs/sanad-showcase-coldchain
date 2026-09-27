# Contract — `rtc_clock` (C)

> **Standard:** IEC 62304 §5.4.2 (detailed design), §5.4.3 (interfaces), Class C. **Status:** DRAFT — needs Masood's review. **MANUAL** (F-77): generated with `MrtmSwDetail::RtcClockApi` from one table (tools/detail-design.py).
> **Component:** `rtcClock` (.ejadah/rew/architecture/rtcClock.md) · **Satisfies:** MRTM-SYS-020, MRTM-SAF-022

**What it does:** Give UTC seconds and report a stopped oscillator.

**Common rules:** every function that can fail returns `mrtm_err_t` (`mrtm_errors.h`, `MrtmSwCodes::ErrorCode`); the caller checks it. No heap after start-up. Constants come from `10-src/config/mrtm_config.h` (ADR-0024).

## Functions

| Function (C) | Pre-condition | Post-condition | Errors |
|---|---|---|---|
| `mrtm_err_t rtc_clock_init(bool *osc_stopped);` | I2C bus ready. | *osc_stopped = the RTC's oscillator-stop flag; flag cleared after it is read; CLOCK_FAULT logged within 2 s of power-up when set (MRTM-SAF-022). | MRTM_ERR_BUS |
| `uint32_t rtc_clock_now(void);` | Any task. | UTC seconds, from a copy refreshed once per second by an esp_timer from the RTC (no I2C in the caller's path). | none |
| `mrtm_err_t rtc_clock_set(uint32_t utc_s);` | Technician command over USB (A-23). | RTC set; CONFIG_CHANGED logged. | MRTM_ERR_BUS, MRTM_ERR_ARG |

## Unit tests to write in Phase 9 (Unity, ADR-0023)

One test file `test/test_rtc_clock.c`; one test per post-condition row above, plus one per error code listed. Each test carries `@verifies` with the requirement ids above.
