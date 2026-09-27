# ADR-0014 — The alarm timing budget: every second from warm air to a sound

- **Status:** Accepted (DRAFT — needs Masood's review) · **Date:** 2026-09-27 · **Phase:** 5 · **MANUAL** ADR shape (F-09) · ISO 14971 cl. 7.1 · IEC 62304 cl. 5.3.1 · IEC 60601-1-8 frame (alarm condition delay)
- **Model:** `LogicalMonitor::sampler → excursionDetector → alarmManager`, `MrtmUnit::buzzerLine`, `backupAlarm`
- **Top event it defends:** "excursion not alarmed within the required time" (08-safety/01b-risk-analysis-fault-tree.md)

## Context
"Alarm in time" only means something if every step has a number and the numbers add up. Like planning a train trip: each leg has a time, and the sum must fit before the meeting.

## Decision — the budget (worst case)
| Step | Time | Source |
|---|---|---|
| Air leaves the band → first sample that sees it | ≤ 10 s | MRTM-SYS-001 (period 10 s) |
| Probe conversion and 1-Wire read | ≤ 1 s (inside the 10 s period) | ADR-0009; EE-REVIEW |
| Confirmation (7 samples spanning 60 s) | 60 s | MRTM-SYS-002 |
| Alarm decision → buzzer, red light, screen | ≤ 5 s | MRTM-SYS-003/004/005 |
| **Required: first out-of-band sample → buzzer** | **≤ 65 s** | **MRTM-PRF-002** |
| Air leaves the band → buzzer (information only) | ≤ 75 s | sum of the above |

Fault paths (the alarm must also sound when the chain breaks):
| Fault | Time to sound | Source |
|---|---|---|
| Probe silent or bad CRC | 30 s + 5 s = 35 s | MRTM-SYS-012, MRTM-SAF-002 |
| Firmware dead | ≤ 10 s | MRTM-SAF-009 |
| Alarm service stuck | 2 s + 10 s = 12 s | MRTM-SAF-010, MRTM-SAF-009 |
| Low battery | ≤ 5 s | MRTM-SAF-008 |
| All power lost | immediately, for ≥ 60 s | MRTM-SAF-013 |

## Consequences
- The 60 s confirmation dominates. It is the price paid for fewer nuisance alarms (HAZ-002); shortening it raises HAZ-002.
- Phase 11's change request ("alarm within 5 s of an excursion") cannot fit this budget without removing confirmation; the impact assessment must show that.
- Software architecture (Phase 7) must keep the alarm service cycle at 1 s (MRTM-SAF-010) and give it the highest task priority.

## Four blocks
- **Assumptions:** A-04 (numbers synthetic). **Risks:** R-05 (fatigue vs speed). **Open questions:** Q-06.
- **Trace links:** MRTM-PRF-002, SYS-001, SYS-002, SYS-003, SYS-012, SAF-002, SAF-008, SAF-009, SAF-010, SAF-013; HAZ-001, HAZ-002, HAZ-003.

## Note 2026-09-27 (Phase 11, CR-001) — appended, the decision above is unchanged
The sampling period is now 2 s (ADR-0031), so "air leaves the band → first sample" is ≤ 2 s and the information-only total is ≤ 67 s. A new low-priority tier (ADR-0030) lights the red LED at 1 Hz ≤ 5 s after the first out-of-band sample (MRTM-SYS-024). The 60 s confirmation and the 65 s buzzer budget (MRTM-PRF-002) stand.
