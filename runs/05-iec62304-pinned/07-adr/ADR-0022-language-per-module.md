# ADR-0022 — Language per module: C everywhere, C++ only for the display

- **Status:** Accepted (DRAFT — needs Masood's review) · **Date:** 2026-09-27 · **Phase:** 7 · **MANUAL** ADR shape (F-09) · IEC 62304 §5.1.4 (standards, methods and tools), §5.4.1 · PROMPT owner order 6
- **Model:** each `#Component` doc line names its language; component files in .ejadah/rew/architecture/
- **Requirements:** none directly (a method decision); affects every unit

## Context
Owner order: firmware in C or C++, one language per module, say which and why. Like choosing one tool per job: a screwdriver for screws, not a Swiss knife for everything.

## Decision
| Module | Language | Why |
|---|---|---|
| sensorSampler, limitEvaluator, alarmMgr, eventLog, historyRing, rtcClock, configMgr, wdtKicker, diagnostics, powerMon, usbExport | **C (C11)** | ESP-IDF drivers and FreeRTOS are C; plain structs and functions are easiest to review and unit-test for Class C; no hidden allocation |
| displayMgr | **C++ (C++17, no exceptions, no RTTI, no heap after start-up)** | The screen is a small class design (Screen, Widget, TextWidget, IconWidget — Phase 8) where virtual draw() removes a long switch; the font/layout code is the one place classes pay for themselves |

Coding rules: MISRA C:2012 subset for C, AUTOSAR C++14 subset for C++ (checked by a static analyser in Phase 9 — tool TBD, R-14).

## Consequences
- The C++ module exposes a C interface (`display_mgr.h`, `extern "C"`), so every other module stays C.
- Unit tests are C (Unity) for all modules, including displayMgr through its C interface (ADR-0023).
