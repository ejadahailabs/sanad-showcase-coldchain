# Contract — `alarm_mgr` (C)

> **Standard:** IEC 62304 §5.4.2 (detailed design), §5.4.3 (interfaces), Class C. **Status:** DRAFT — needs Masood's review. **MANUAL** (F-77): generated with `MrtmSwDetail::AlarmMgrApi` from one table (tools/detail-design.py).
> **Component:** `alarmMgr` (.ejadah/rew/architecture/alarmMgr.md) · **Satisfies:** MRTM-SYS-003, MRTM-SYS-004, MRTM-SYS-006, MRTM-SYS-019, MRTM-PRF-002, MRTM-SAF-001, MRTM-SAF-002, MRTM-SAF-006, MRTM-SAF-011, MRTM-SAF-014, MRTM-SAF-015, MRTM-SAF-019, MRTM-IFC-002

**What it does:** Run the alarm state machine and drive the buzzer and red light.

**Common rules:** every function that can fail returns `mrtm_err_t` (`mrtm_errors.h`, `MrtmSwCodes::ErrorCode`); the caller checks it. No heap after start-up. Constants come from `10-src/config/mrtm_config.h` (ADR-0024).

## Types

```c
typedef enum { ALARM_QUIET = 0, ALARM_SOUNDING, ALARM_SILENCED, ALARM_PROBE_FAULT, ALARM_BUZZER_FAULT } alarm_state_t;
typedef enum { SIG_EXCURSION_CONFIRMED = 1, SIG_EXCURSION_ENDED, SIG_ACK_PRESSED, SIG_PROBE_FAULT, SIG_PROBE_RECOVERED, SIG_BATTERY_LOW } alarm_signal_t;
```

## Functions

| Function (C) | Pre-condition | Post-condition | Errors |
|---|---|---|---|
| `mrtm_err_t alarm_mgr_init(void);` | GPIO 11 (buzzer), 12 (red LED, LEDC), 16 (buzzer sense), button GPIO configured by board init. | State restored from NVS key 'alarm' (MRTM-SAF-006): an unacknowledged alarm is sounding again within 2 s of the restart. | MRTM_ERR_NVS (treated as QUIET + logged) |
| `mrtm_err_t alarm_mgr_post(alarm_signal_t sig);` | Any task. alarm_mgr_post_from_isr() is the ISR form. | Signal queued; alarmTask woken at once (task notification), not at its next 1 s tick. | MRTM_ERR_FULL (queue depth 8; the sender logs it) |
| `void alarm_mgr_step(uint32_t now_ms);` | alarmTask only, at least every 1000 ms and on every notification. | One transition of MrtmSwStates::AlarmStates taken per signal; outputs driven; heartbeat incremented. | none |
| `void alarm_mgr_button_isr(void *arg);` | GPIO interrupt on the button line, both edges. | A press stable for 50 ms posts SIG_ACK_PRESSED (MRTM-IFC-002); held 60 s posts nothing more and logs BUTTON_FAULT (MRTM-SAF-019). | none |
| `uint32_t alarm_mgr_heartbeat(void);` | none | Current heartbeat count (atomic read). | none |

## Algorithms

- **`alarm_mgr_step`** — Drain the signal queue through the transition table of AlarmStates. Outputs: SOUNDING = buzzer on continuous, red LED LEDC 2 Hz 50 %; PROBE_FAULT = buzzer toggles every 1 s step (1 s on/1 s off, MRTM-SAF-011); BUZZER_FAULT = red LED 4 Hz; SILENCED = buzzer off, LED 2 Hz, re-sound when now - ack_ms >= MRTM_REALARM_MS (15 min). Buzzer current: while driven, sense GPIO low for >= 5 consecutive steps -> SIG buzzer fault (MRTM-SAF-014). Heartbeat += 1 at the end of every step (read by wdt_kicker).
- **`alarm_mgr_button_isr`** — Debounce: on an edge, (re)arm a 50 ms esp_timer one-shot; when it fires, read the pin; if still pressed and last stable state was released -> press accepted. While pressed, a 60 s one-shot is armed; if it fires the button is declared stuck and further presses are ignored until release.

## Unit tests to write in Phase 9 (Unity, ADR-0023)

One test file `test/test_alarm_mgr.c`; one test per post-condition row above, plus one per error code listed. Each test carries `@verifies` with the requirement ids above.
