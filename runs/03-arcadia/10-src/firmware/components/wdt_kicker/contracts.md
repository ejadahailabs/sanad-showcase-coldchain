# Contract — `wdt_kicker` (C)

> **Standard:** IEC 62304 §5.4.2 (detailed design), §5.4.3 (interfaces), Class C. **Status:** DRAFT — needs Masood's review. **MANUAL** (F-77): generated with `MrtmSwDetail::WdtKickerApi` from one table (tools/detail-design.py).
> **Component:** `wdtKicker` (.ejadah/rew/architecture/wdtKicker.md) · **Satisfies:** MRTM-SAF-004, MRTM-SAF-009, MRTM-SAF-010

**What it does:** Pulse the outside watchdog only while the alarm task is alive.

**Common rules:** every function that can fail returns `mrtm_err_t` (`mrtm_errors.h`, `MrtmSwCodes::ErrorCode`); the caller checks it. No heap after start-up. Constants come from `10-src/config/mrtm_config.h` (ADR-0024).

## Functions

| Function (C) | Pre-condition | Post-condition | Errors |
|---|---|---|---|
| `void wdt_kicker_init(void);` | GPIO 15 output. | ESP-IDF task watchdog armed at MRTM_TASK_WDT_S (5 s) for alarmTask and supervisorTask, panic-restart on timeout (restart < 2 s, MRTM-SAF-004). | none |
| `void wdt_kicker_step(uint32_t now_ms, uint32_t alarm_beat);` | supervisorTask every 500 ms. | A pulse on GPIO 15 only if alarm_beat changed within the last MRTM_HEARTBEAT_MAX_MS (2000 ms); otherwise no pulse, so the backup alarm sounds within 10 s (MRTM-SAF-009/010). | none |

## Algorithms

- **`wdt_kicker_step`** — if (alarm_beat != last_beat) { last_beat = alarm_beat; last_change = now_ms; } if (now_ms - last_change <= 2000) pulse 1 ms high on GPIO 15.

## Unit tests to write in Phase 9 (Unity, ADR-0023)

One test file `test/test_wdt_kicker.c`; one test per post-condition row above, plus one per error code listed. Each test carries `@verifies` with the requirement ids above.
