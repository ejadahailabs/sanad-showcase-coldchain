# The alarm path, printed end to end — need → function → system → HLR → LLR → code → test

> RUN-04, 2026-09-27. Every link is read from Sanad's own output (`13-assessment/sanad-runs/gate-final/report-traceability-audit.csv`, snapshot `fc3274cd`), the model (`06-design/**`), the code-trace markers and the JUnit results Sanad reads. DO-178C §6.5 / §11.21 trace data. DRAFT — needs Masood's review.

**In one line:** follow one promise from the nurse's need down every rung to the test that proves it — like following a parcel's tracking number from the shop to the door.

## Chain 1 — "alert me within 5 s" (early alarm)

| Rung | Artefact | What it says | Link (as Sanad shows it) | Proved by |
|---|---|---|---|---|
| need | **MRTM-STK-001** | alert on excursion | satisfied by `monitor` (06-design/aircraft/NodeAircraft.sysml) | SP-01 — verified |
| aircraft function (DAL A) | **MRTM-FUN-002** | warn when the air stays out of band | derive → STK-001, STK-002; satisfied by `monitor` | analysis (no case — F-4-016) |
| system (DAL A) | **MRTM-SYS-024** | early alarm within 5 s | derive → FUN-002; satisfied by `system` | SP-01, SP-01-H — verified |
| HLR, alarm-sw (DAL A) | **MRTM-HLR-004** | report the early excursion at the first valid out-of-band sample | derive → SYS-024; satisfied by `alarmSw` | 3 unit tests — verified |
| LLR, alarm-sw design | **MRTM-LLR-008** | `limit_evaluator_step` returns EARLY / CONFIRMED / ENDED on the counts | derive → HLR-004, -005, -006; satisfied by `alarmSwDesign.limitEvaluator` | 9 unit tests — verified |
| source | `limit_evaluator.c:24` `limit_evaluator_step` | `/* @implements MRTM-LLR-008 */`; `_Static_assert(2 s + 750 ms + 1 s ≤ 5 s)` | "Implemented by" column | build `-Werror` refuses a broken budget |
| test | `test_limit_evaluator.test_first_out_sample_raises_the_early_alarm`, `…test_early_alarm_budget_fits_5_s` | first out sample → EARLY; budget sum ≤ 5 s | `@verifies MRTM-LLR-008 MRTM-HLR-004` | JUnit `11-verification/results/unit/test_limit_evaluator.xml`: **pass** |

## Chain 2 — "no alarm for a door opening" (60 s confirmation)

STK-002 → **FUN-002** → **SYS-002** (31 samples, 60 s) → **HLR-005** (confirmed at the 31st sample) → **LLR-008** → `limit_evaluator_step` → `test_nth_consecutive_out_sample_confirms` + `test_int01_excursion_chain` — **pass**. Unbroken in the audit CSV.

## Chain 3 — the safety side (FHA objective → watchdog)

**MRTM-SOB-001** (no silent loss of warning, DAL A) → **MRTM-SAF-010** (watchdog tied to the alarm service) → **MRTM-HLR-010** (heartbeat once per cycle) and **MRTM-HLR-016** (stop pulses within 2 s) → **MRTM-LLR-016** `alarm_mgr_heartbeat` / **MRTM-LLR-018** `wdt_kicker_step` → `test_heartbeat_moves_on_every_step`, `test_pulses_stop_within_2_s_of_a_missed_alarm_cycle` — **pass**; the hardware half **MRTM-HWR-007/008** (backup timer 9 s, driver 100 ms) waits for the bench (SP-05, blocked, A-30).

**Unbroken:** yes. `tools/level-check.py` → 0 violations: every uplink names the rung above, every code-trace marker names an LLR (45 of 45), every non-derived requirement reaches a need.

**What Sanad showed by itself:** every row above, with its level word (HLR / LLR) in the coverage report. **What it could not show:** the chain as one picture, and the rung rule itself (F-4-002); FUN and SOB are verified by analysis, which Sanad has no record for (F-4-016).
