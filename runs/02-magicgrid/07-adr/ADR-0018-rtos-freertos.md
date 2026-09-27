# ADR-0018 — The RTOS: FreeRTOS as shipped inside ESP-IDF

- **Status:** Accepted (DRAFT — needs Masood's review) · **Date:** 2026-09-27 · **Phase:** 7 · **MANUAL** ADR shape (F-09) · IEC 62304 §5.3.3 (SOUP functional and performance needs), §5.3.4 (hardware and software the SOUP needs), §8.1.2
- **Model:** `MrtmSoftware::RtosTask` and its six `#Thread` defs; SOUP-1 in 00-project/soup-list.md
- **Requirements:** MRTM-PRF-002, MRTM-SAF-010, MRTM-SYS-001 (the timing ones the scheduler must keep)

## Context
The firmware does six jobs at once: sample, alarm, draw, log, watch, talk USB. An RTOS is the referee that decides who runs next. Like a school timetable: the bell rings and the most important class goes first.

## Options
| Option | For | Against |
|---|---|---|
| **FreeRTOS inside ESP-IDF** | Ships with the SDK; every ESP32-S3 driver assumes it; priority pre-emption; widely used in medical devices as SOUP | SOUP, so we must list its anomalies (IEC 62304 §7.1.3) |
| Bare-metal super-loop | No SOUP | One slow job (USB, display) delays the alarm; timing proofs get hard |
| Zephyr | Good safety story | Second SDK beside ESP-IDF; more SOUP, not less |

## Decision
FreeRTOS (the ESP-IDF SMP port), fixed priorities, pre-emptive, 1 ms tick. No dynamic task creation after start-up. Queues and task notifications only; no shared globals without a mutex.

## Consequences
- FreeRTOS joins the SOUP list (SOUP-4) with its version pinned in Phase 9.
- Task periods and priorities are model attributes (`#Thread`), so a change shows up in a SysML diff.
