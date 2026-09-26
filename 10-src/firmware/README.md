# src/firmware

ESP-IDF project for the ESP32-S3 (ADR-0018). One ESP-IDF component per software unit, under `components/<unit>/`.

| Folder | Unit (component id) | Language | Contract |
|---|---|---|---|
| components/sensor_sampler | sensorSampler | C | contracts.md |
| components/limit_evaluator | limitEvaluator | C | contracts.md |
| components/alarm_mgr | alarmMgr | C | contracts.md |
| components/display_mgr | displayMgr | C++ (C interface) | contracts.md |
| components/event_log | eventLog | C | contracts.md |
| components/history_ring | historyRing | C | contracts.md |
| components/rtc_clock | rtcClock | C | contracts.md |
| components/config_mgr | configMgr | C | contracts.md |
| components/wdt_kicker | wdtKicker | C | contracts.md |
| components/diagnostics | diagnostics | C | contracts.md |
| components/power_mon | powerMon | C | contracts.md |
| components/usb_export | usbExport | C | contracts.md |

Phase 8 wrote the contracts. Phase 9 writes the code: every file that satisfies a requirement carries Sanad's `@implements <id>` marker in a C comment; tests in `10-src/test/` carry `@verifies <id>` (Unity, ADR-0023).
