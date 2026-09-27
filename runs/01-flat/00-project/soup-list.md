# SOUP list — MRTM (placeholder)

> **Standard:** IEC 62304 clauses 5.3.3, 5.3.4, 7.1.2, 8.1.2. SOUP = "software of unknown provenance": code we use but did not write.
> **MANUAL** — Class-C artifact "SOUP list" has no Sanad home (FINDINGS F-07). DRAFT — filled in Phases 6 and 9.

| # | SOUP item | Version | Maker | Used for | Known anomalies checked | Safety class of the unit using it |
|---|---|---|---|---|---|---|
| SOUP-1 | ESP32 SDK (ESP-IDF) | v5.x, exact tag pinned at the first target build (A-30: not installed on the dogfood box) | Espressif | RTOS, drivers, build system (ADR-0026) | TBD — release notes of the pinned tag, Phase 10 target run | C |
| SOUP-2 | 1-Wire bus driver: Espressif `onewire_bus` component (RMT) — Phase 9 choice; DS18B20 commands written in-house (hal_esp32.c) | TBD (component registry version pinned with SOUP-1) | Espressif | probe reading (MRTM-IFC-001) | TBD | C |
| SOUP-3 | ~~OLED display driver library~~ — **not used**: Phase 9 wrote the SSD1306 driver in-house (`Ssd1306Driver`, display_mgr.cpp, ~40 lines) | — | — | — | — | — |

| SOUP-4 | FreeRTOS kernel (ESP-IDF SMP port) | TBD (pinned with ESP-IDF, Phase 9) | FreeRTOS project via Espressif | task scheduling, queues, timers (ADR-0018) | TBD — published errata list to be reviewed Phase 9 | C |
| SOUP-5 | TinyUSB (MSC device class, in ESP-IDF) | TBD | TinyUSB project via Espressif | read-only USB volume (ADR-0021, MRTM-IFC-003) | TBD | C |
| SOUP-6 | ESP-IDF NVS and flash partition drivers | TBD | Espressif | MonitorConfig record, log sectors | TBD | C |

| SOUP-7 | Unity unit-test framework | **v2.6.1**, commit cbcd08fa7de7, vendored unmodified in 10-src/test/unity/ (sha256 in its SOUP.md) | ThrowTheSwitch (MIT) | unit + integration verification on the host; ESP-IDF's own `unity` component on the target (ADR-0023) | none relevant to a test harness (10-src/test/unity/SOUP.md) | test tool (not in product) |

Phase 7 (DOGFOOD-4): SOUP-4…6 added from the software architecture; SOUP-2 and SOUP-3 may be replaced by in-house drivers (Phase 8 decides).

Values are placeholders; no real version is claimed.

Phase 9 (DOGFOOD-5): SOUP-7 pinned and vendored; SOUP-3 dropped (in-house driver); SOUP-2 named; SOUP-1/4/5/6 versions wait for the first target build (A-30).
