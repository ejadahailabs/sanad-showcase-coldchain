# SOUP list — MRTM (placeholder)

> **Standard:** IEC 62304 clauses 5.3.3, 5.3.4, 7.1.2, 8.1.2. SOUP = "software of unknown provenance": code we use but did not write.
> **MANUAL** — Class-C artifact "SOUP list" has no Sanad home (FINDINGS F-07). DRAFT — filled in Phases 6 and 9.

| # | SOUP item | Version | Maker | Used for | Known anomalies checked | Safety class of the unit using it |
|---|---|---|---|---|---|---|
| SOUP-1 | ESP32 SDK (ESP-IDF) | TBD (Phase 9) | Espressif | RTOS, drivers | TBD | C |
| SOUP-2 | DS18B20 / 1-Wire driver library | TBD | TBD | probe reading | TBD | C |
| SOUP-3 | OLED display driver library | TBD | TBD | screen | TBD | C |

| SOUP-4 | FreeRTOS kernel (ESP-IDF SMP port) | TBD (pinned with ESP-IDF, Phase 9) | FreeRTOS project via Espressif | task scheduling, queues, timers (ADR-0018) | TBD — published errata list to be reviewed Phase 9 | C |
| SOUP-5 | TinyUSB (MSC device class, in ESP-IDF) | TBD | TinyUSB project via Espressif | read-only USB volume (ADR-0021, MRTM-IFC-003) | TBD | C |
| SOUP-6 | ESP-IDF NVS and flash partition drivers | TBD | Espressif | MonitorConfig record, log sectors | TBD | C |

| SOUP-7 | Unity unit-test framework (ESP-IDF `unity` component) | TBD (pinned with ESP-IDF, Phase 9) | ThrowTheSwitch via Espressif | unit verification only — not in the shipped firmware (ADR-0023) | TBD | test tool (not in product) |

Phase 7 (DOGFOOD-4): SOUP-4…6 added from the software architecture; SOUP-2 and SOUP-3 may be replaced by in-house drivers (Phase 8 decides).

Values are placeholders; no real version is claimed.
