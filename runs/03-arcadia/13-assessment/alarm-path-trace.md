# Alarm path trace — OA → SA → LA → PA → code → test (run 03, Arcadia)

**In one line:** follow one thread from "the nurse must be told" down to the test that proves the 5-second alarm — like following a river from the sea back to its spring.

DRAFT — needs Masood's review. Every link below is a field or marker in a file; `tools/level-check.py` checks the requirement and transition links, Sanad's code index and results producer read the code and test links.

| Step | Layer | Element | Requirement | How it links to the step above |
|---|---|---|---|---|
| 1 | OA | capability `KnowTheFridgeIsSafe` (nurse); activity `watchFridgeTemperature` | **MRTM-STK-001** "alert the nurse when the air leaves the band" | — (the need) |
| 2 | SA | function `detectExcursion` (+ `acquireTemperature`, `announceAlarm` in the functional chain `sa_alarm_chain`) | **MRTM-SYS-024** early excursion alarm ≤ 5 s | `uplinks: [MRTM-STK-001]`; transition `watchFridgeTemperature → detectExcursion` (oa-to-sa) |
| 3 | LA | logical component `alarm` | **MRTM-LA-001** early signal within 1 s of the first valid out-of-band sample | `uplinks: [MRTM-SYS-024]`; transition `detectExcursion → alarm` (sa-to-la) |
| 3b | LA | logical component `sensing` | **MRTM-LA-020** sample within 750 ms of conversion start | `uplinks: [MRTM-SYS-024]` — the budget is SPLIT across two components (level-check info: crosses the transition, F-3-014) |
| 4 | PA | software item `excursionItem` (class C) on `mcu` | **MRTM-SW-005** report the early excursion within the 2 s sample period | `uplinks: [MRTM-LA-001]`; transition `alarm → excursionItem` (la-to-pa) |
| 4b | PA | node component `probe` | **MRTM-PH-013** 12-bit conversion within 750 ms | `uplinks: [MRTM-LA-020]`; transition `sensing → probe` |
| 5 | EPBS | configuration item `firmwareImage` | **MRTM-CI-001** one version number, same in release record and power-up screen | `uplinks` include MRTM-SW-005; transition `excursionItem → firmwareImage` (pa-to-epbs) |
| 6 | code | `limit_evaluator_step` in `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c` | — | `@implements MRTM-SYS-024 MRTM-SW-005 MRTM-SW-006 …` (Sanad code index: 46 symbols → 73 ids) |
| 7 | test | `test_early_alarm_budget_fits_5_s` in `test_limit_evaluator.c` | — | `@verifies MRTM-SYS-024 MRTM-LA-020 MRTM-LA-001 … MRTM-SW-005`; result **pass** in `11-verification/results/unit/test_limit_evaluator.xml` (this run's build, `tools/run-10b.sh`) |

**Budget arithmetic (SYS-024 ≤ 5 s):** up to 2 s wait for the next sample + 0.75 s conversion (PH-013 / LA-020) + one 1 s alarm cycle (LA-001) = **3.75 s**. The test sums the same figures from `mrtm_config.h`.

**Result: unbroken.** Every step names the step above in a file field; no link was typed by hand across more than one layer.

**What Sanad itself can show of this chain today:** the requirement uplinks, the code and the test (traceability audit, 13-assessment/sanad-runs/run3-final/report-traceability-audit.md). It cannot show the layer each requirement sits in, nor the transitions (F-3-001, F-3-006).
