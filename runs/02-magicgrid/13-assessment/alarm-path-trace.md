# The alarm path, printed end to end — from the nurse's need to the unit test that holds the 5 s budget

> MODEL-LEVELS, 2026-09-27. Every link below is read from Sanad's own output of the MODEL-LEVELS run (`13-assessment/sanad-runs/model-levels/report-traceability-audit.csv`, snapshot `6abc54b2`), the model (`06-design/**`) and the JUnit results Sanad reads. IEC 62304 §5.1.1, §7.3.3 (traceability), ISO 14971 cl. 7.2. DRAFT — needs Masood's review.

**In one line:** follow one promise from the top of the tree to the test that proves it, without a single gap — like following a parcel's tracking number from the shop to your door.

## Chain 1 — "no alarm for a door opening" (MRTM-STK-002) → the 60 s span held by the budget test

| Step | Node | Artifact | What it says | Link (Sanad column) | Proved by |
|---|---|---|---|---|---|
| 1 | context | **MRTM-STK-002** | no audible alert for a departure shorter than the confirmation time | satisfied by `monitor` (06-design/context/NodeContext.sysml) | verdict **verified** |
| 2 | system | **MRTM-SYS-002** | confirm after 31 consecutive samples spanning 60 s | derive → STK-002; satisfied by `monitor` (06-design/mrtm/NodeMrtm.sysml) | verified |
| 3 | alarm | **MRTM-ALM-002** | the alarm subsystem confirms after 31 consecutive valid out-of-band samples | derive → SYS-002; satisfied by `alarm` (06-design/mrtm/alarm/NodeAlarm.sysml) | verified |
| 4 | excursion-item (leaf, class C) | **MRTM-EXI-002** | the excursion item reports the confirmed excursion at the 31st sample | derive → ALM-002; satisfied by `excursionSwItem.limitEvaluator` | verified |
| 5 | unit (bottom) | `limit_evaluator.c#limit_evaluator_step` | `/* @implements … MRTM-EXI-002 … */`; `_Static_assert(SAMPLE + CONVERSION + 1000 ms ≤ 5000 ms)` | "Implemented by" column | build `-Werror` refuses a broken budget |
| 6 | unit test | `test_limit_evaluator.test_early_alarm_budget_fits_5_s` | asserts early-alarm sum ≤ 5 s **and** (31 − 1) × 2 s = 60 s | `/* @verifies … MRTM-EXI-002 … */` → matrix case | JUnit `11-verification/results/unit/test_limit_evaluator.xml`: **pass** |

## Chain 2 — "alert the nurse" (MRTM-STK-001) → the 5 s early alarm, same test

| Step | Artifact | Link | Proved by |
|---|---|---|---|
| 1 | MRTM-STK-001 | satisfied by `monitor` (context) | verified |
| 2 | MRTM-SYS-024 — alarm within 5 s | derive → STK-001 | verified |
| 3a | MRTM-SEN-002 — sample within 750 ms of conversion start (sensing share 2.75 s) | derive → SYS-024 | verified (budget test) |
| 3b | MRTM-ALM-001 — early signal within 1 s (alarm share) | derive → SYS-024 | verified |
| 4 | MRTM-EXI-001 — early report at the first valid out-of-band sample | derive → ALM-001 | verified |
| 5 | `limit_evaluator_step` | `@implements MRTM-EXI-001` | — |
| 6 | `test_early_alarm_budget_fits_5_s` | `@verifies MRTM-EXI-001` | **pass** |

**Unbroken:** yes — every row above appears in Sanad's traceability audit with its parent, its children, its satisfying element, its code and its verdict. `tools/level-check.py` confirms every derive link names the parent node (0 violations).

**What Sanad could not show:** the chain as one picture (F-97, F-124): the rows come from four places (audit CSV, model, code index, results). The time budget itself lives in a C `_Static_assert` and a test, not in the model (F-123).
