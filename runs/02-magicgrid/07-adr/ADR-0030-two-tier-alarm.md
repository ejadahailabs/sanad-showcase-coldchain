# ADR-0030 — Two-tier alarm: a quick light at 5 s, the loud buzzer still at 60 s

- **Status:** Accepted (DRAFT — needs Masood's review) · **Date:** 2026-09-27 · **Phase:** 11 (change CR-001) · **MANUAL** ADR shape (F-09) · IEC 62304 §6.2.3 (analyse change impact), §5.2.6 · ISO 14971 cl. 7.6 (risks arising from risk control), cl. 10 · IEC 60601-1-8 frame (alarm priorities: low / high)
- **Model:** `MrtmSwStates::AlarmStates` (new state `early`, 4 new transitions), `MrtmSeqExcursion` (new message `early`), satisfy `MRTM-SYS-024` by `limitEvaluator`, `alarmMgr`, `excursionDetector`, `alarmManager`, `excursionService`

## Context
The change request says: "The system shall raise an alarm within 5 seconds of a temperature excursion" (now MRTM-SYS-024). The product already says the opposite in two places:
- MRTM-STK-002: no alert for a departure shorter than the confirmation time (60 s).
- MRTM-SYS-002: an excursion is confirmed only after 7 samples in a row spanning 60 s; MRTM-PRF-002 gives the buzzer 65 s.

Both cannot win as written. It is like a smoke alarm that must be both instant and never go off for toast.

## Options
| Option | What happens | Why not / why |
|---|---|---|
| A. New rule wins | Confirm after 5 s; buzzer at 5 s | Every door opening sounds the buzzer. HAZ-002 (alarm fatigue) goes from "review" to not acceptable. Rejected. |
| B. Old rule wins | Reject CR-001 | The owner asked for a faster warning; rejecting it leaves staff blind for a minute. Rejected. |
| **C. Two tiers** | **Low-priority tier: red light 1 Hz, no sound, within 5 s of the first out-of-band sample; clears by itself when back in band. High-priority tier: unchanged — buzzer, red 2 Hz, screen, log, after 60 s confirmation.** | Keeps the fast signal and keeps the nuisance filter on the loud one. **Chosen.** |

## Decision
Option C. "Alarm" in MRTM-SYS-024 is read as the **low-priority alarm signal** (IEC 60601-1-8 wording). MRTM-STK-002 is reworded to "no **audible** alert" (owner to confirm — it is a stakeholder requirement). To see a new excursion within 5 s the sampling period drops from 10 s to 2 s (ADR-0031).

Timing of the early tier (worst case): wait for the next sample ≤ 2 s + DS18B20 12-bit conversion ≤ 0.75 s + alarm hand-off ≤ 1 s = **3.75 s ≤ 5 s**. A compile-time check in `limit_evaluator.c` refuses a build that breaks this sum.

## Consequences
- Early tier is not logged (A-38): door openings would fill the 10 000-record log (HAZ-008). Owner to confirm.
- HAZ-002 gains one cause (frequent red-light flashes) and one control (the early tier is silent and self-clearing); residual risk unchanged at "review" (08-safety/01-risk-analysis.md).
- The screen does not yet show a pre-alarm text; only the red light changes. Display text is a follow-up (12-impact/impact-report.md, row SW-6).
- Bench procedure SP-01 gets step SP-01.11 (10 timed trials).

## Four blocks
- **Assumptions:** A-37 (probe lag excluded from the 5 s), A-38 (early tier not logged). **Risks:** R-17. **Open questions:** Q-19 (is "alarm" = low-priority light acceptable?).
- **Trace links:** MRTM-SYS-024, STK-001, STK-002, SYS-001, SYS-002, SYS-018, PRF-002; HAZ-002, HAZ-008; ADR-0014 (budget), ADR-0020 (software split), ADR-0031.
