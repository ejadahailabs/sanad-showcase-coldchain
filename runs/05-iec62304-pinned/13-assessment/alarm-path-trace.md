# Alarm path trace — run 05 (pinned IEC 62304 stack)

**In one line:** we follow ONE promise — "no alarm for a door opened for a moment" — from the nurse's wish down to the line of code and the test that proves it, one floor at a time, like following a pipe from the tap to the water tank.

**Result: unbroken, 7 links, one per floor plus code and test.** DRAFT — needs Masood's review.

| # | Floor (level) | Id / thing | What it says | Held by (model) | Proved by |
|---|---|---|---|---|---|
| 1 | L1 device — need | MRTM-STK-002 | No audible alert for a departure shorter than the confirmation time | `satisfy … by device` (06-design/L1-device/NodeDevice.sysml) | SP-01 (bench, blocked — no board, A-30) |
| 2 | L1 device — requirement | MRTM-SYS-002 ← STK-002 | Confirm after 31 consecutive samples spanning 60 s | same node file | SP-01, INT-01 |
| 3 | L2 software system (SRS, §5.2) | MRTM-SRS-003 ← SYS-002 | The software confirms after 31 valid samples spanning 60 s | `satisfy … by softwareSystem` (L2-software-system/NodeSoftwareSystem.sysml) | `test_int_chains.test_int01_excursion_chain` pass |
| 4 | L3 software item (§5.3) | MRTM-EXI-002 ← SRS-003 | The excursion item reports the confirmation at the 31st sample, 60 s after the first | `satisfy … by excursionSwItem` (L3-software-items/excursion-item/) | `test_nth_consecutive_out_sample_confirms` pass |
| 5 | L4 software unit (§5.4) | MRTM-LEV-002 ← EXI-002 | `limit_evaluator_step` returns the confirmed event at the 31st sample | `satisfy … by limitEvaluatorUnit` (L4-software-units/limit-evaluator/) | same unit tests |
| 6 | Code (§5.5.1) | `limit_evaluator_step` in 10-src/firmware/components/limit_evaluator/src/limit_evaluator.c:24 | `@implements … MRTM-EXI-002 MRTM-LEV-002` | Sanad code index: 46 symbols → 97 ids | — |
| 7 | Unit test (§5.5.5) | `test_early_alarm_budget_fits_5_s` + `test_nth_consecutive_out_sample_confirms` | `@verifies … MRTM-LEV-002` | declared matrix 99 cases | host run on this tree: 14 runners, 85 tests, 0 failures (sanad-runs/host-tests/make-test.txt) |

## What checked it
- `python3 tools/level-check.py` → 0 violations: every uplink names the parent level, every requirement reaches a STK (sanad-runs/run5-gate/level-check.txt).
- Sanad's test-coverage report: STK-002, SYS-002, SRS-003, EXI-002, LEV-002 all "covered" (sanad-runs/run5-gate/report-test-coverage.md). STK-002 / SYS-002 also carry the blocked bench procedure SP-01 — true state.
- Sanad itself cannot say "this chain is unbroken floor by floor": it has no levels (F-5-001). The chain above is read from Sanad's outputs plus our check.

## Honest notes
- The results files in `11-verification/results/` were produced by run 2's build; only comments (the markers) changed here, and the host tests were run again on this tree (85 / 0).
- 45 code marker lines still name device-level ids directly (a skip over floors 2–4). Sanad's implementation check needs them (F-5-009).
