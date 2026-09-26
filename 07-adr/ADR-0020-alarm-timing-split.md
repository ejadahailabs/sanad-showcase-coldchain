# ADR-0020 — The software share of the alarm timing budget

- **Status:** Accepted (DRAFT — needs Masood's review) · **Date:** 2026-09-27 · **Phase:** 7 · **MANUAL** ADR shape (F-09) · IEC 62304 §5.3.1 · ISO 14971 cl. 7.1 · refines ADR-0014
- **Model:** sequence views mrtmSeqExcursion, mrtmSeqProbeFault; `#Thread` deadlines in `MrtmSoftware`
- **Requirements:** MRTM-PRF-002, MRTM-SYS-003, MRTM-SYS-004, MRTM-SYS-005, MRTM-SAF-002, MRTM-SYS-006

## Context
ADR-0014 gave the software 5 s from "excursion confirmed" to "buzzer on". This splits those 5 s between the tasks. Like splitting a relay race: each runner gets a leg time.

## Decision — confirmation to buzzer (worst case)
| Leg | Owner | Budget |
|---|---|---|
| Evaluate the 7th sample, post ExcursionConfirmed | sensorTask / limitEvaluator | 50 ms |
| Wait for alarmTask to take the message (it blocks on the queue with a 1 s timeout) | FreeRTOS | ≤ 1 s |
| Step the alarm machine, drive the buzzer GPIO and red LED (LEDC) | alarmTask | 10 ms |
| **Buzzer on (MRTM-SYS-003)** | | **≤ 1.06 s of 5 s** |
| Warning drawn (MRTM-SYS-005): next displayTask cycle + one I2C frame | displayTask | ≤ 0.53 s after the buzzer |
| Start event logged in both sectors (MRTM-SAF-018) | logTask | ≤ 1 s |
| Acknowledge → buzzer off (MRTM-SYS-006): button debounce 50 ms + one alarm cycle | alarmTask | ≤ 1.05 s of 1 s — **tight**, see below |

## Consequences
- **MRTM-SYS-006 (1 s) does not fit a 1 s polling cycle.** The button therefore raises a GPIO interrupt that notifies alarmTask at once; worst case = 50 ms debounce + 10 ms step = 60 ms. Recorded as A-27.
- Probe-fault path: fault declared by sensorTask → same ≤ 1.06 s → well inside MRTM-SAF-002's 5 s.
