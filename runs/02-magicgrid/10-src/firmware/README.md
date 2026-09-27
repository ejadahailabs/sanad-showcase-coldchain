# src/firmware — MRTM firmware (ESP-IDF project)

> **Standard:** IEC 62304 §5.5.1 (software unit implementation), Class C. **Status:** DRAFT — needs Masood's review.
> Host build tested; target build UNTESTED (A-30). How to build: `../BUILD.md`.

One ESP-IDF component per software unit (ADR-0018, ADR-0026). Each has `include/` (its C interface), `src/` (the code, with Sanad's `/* @implements <ids> */` above every function that satisfies a requirement) and `test/` (Unity tests with `/* @verifies <ids> */`).

| Folder | Unit | Language | Contract | Functions with @implements | Unit tests |
|---|---|---|---|---|---|
| components/sensor_sampler | sensorSampler | C | contracts.md | 4 | 7 |
| components/limit_evaluator | limitEvaluator | C | contracts.md | 3 | 9 |
| components/alarm_mgr | alarmMgr | C | contracts.md | 7 | 13 |
| components/display_mgr | displayMgr | C++ inside, C outside | contracts.md | 7 | 7 |
| components/event_log | eventLog | C | contracts.md | 2 | 5 |
| components/history_ring | historyRing | C | contracts.md | 3 | 8 |
| components/rtc_clock | rtcClock | C | contracts.md | 3 | 3 |
| components/config_mgr | configMgr | C | contracts.md | 2 | 5 |
| components/wdt_kicker | wdtKicker | C | contracts.md | 2 | 4 |
| components/diagnostics | diagnostics | C | contracts.md | 1 | 3 |
| components/power_mon | powerMon | C | contracts.md | 2 | 2 |
| components/usb_export | usbExport | C | contracts.md | 3 | 6 |
| components/mrtm_common | (not in the model — F-88) | C | generated headers + CRCs + HAL interface | 2 | 3 |
| components/mrtm_app | (not in the model — F-88) | C | the six task bodies | 4 | 5 integration |
| components/mrtm_hal | (not in the model — F-88) | C | `mrtm_hal.h` on ESP-IDF (UNTESTED) | 0 | — |

`mrtm_errors.h` and `mrtm_events.h` are GENERATED from `06-design/software/MrtmSwCodes.sysml` by `tools/gen-codes.py` — the model stays the source; `make` refuses to build if they drift.

## Where the code differs from the Phase-8 contracts (each marked `REVIEW` in the code)

| Unit | Difference | Why |
|---|---|---|
| alarm_mgr | + `SIG_FAIL_SAFE`; + `alarm_mgr_button_debounced`, `_state`, `_fail_safe`; 60 s stuck check in `step`, not a second one-shot | failSafe had no way into the unit (SAF-017); tests and display need the state |
| event_log | + `event_log_init(ring)`, `event_log_pending` | the contract gave the unit no way to reach the ring |
| history_ring | 80 sectors, not 79; + `next_seq` | DEF-001 |
| rtc_clock | + `rtc_clock_tick` (called by the supervisor) | DEF-003 |
| wdt_kicker | + `wdt_kicker_hold` | the backup-alarm self-test must hold the pulses (SAF-023) |
| diagnostics | leaves a sounding buzzer alone; config/clock results filled by the caller | DEF-002 |
| display_mgr | model + `battery_pct`, `fw_version`; query functions | MNT-002 / MNT-003 had no software unit (DEF-007) |
| usb_export | `usb_export_init(ring)`; a bad record gives a `CORRUPT` line and the read still succeeds | the host keeps the rest of the file |
