# Impact of a Requirement

**Export schema:** `sanad/impact-of/1`

**Subject:** `MRTM-SYS-002` — Excursion confirmation

**Walk depth:** 1 hop(s) — every dependent edge, followed until nothing new was reached; no limit is applied.

9 artifact(s) shown rest on it, 1 through a prose-derived link (candidate, not fact).

| Artifact | Kind | Hops | Via | Basis |
|---|---|---:|---|---|
| `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step` | `codeSymbol` | 1 | `MRTM-SYS-002` → `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step` | declared |
| `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step` | `codeSymbol` | 1 | `MRTM-SYS-002` → `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step` | declared |
| `MRTM-SYS-024` | `requirement` | 1 | `MRTM-SYS-002` → `MRTM-SYS-024` | candidate |
| `SP-01` | `verificationCase` | 1 | `MRTM-SYS-002` → `SP-01` | declared |
| `SP-01-H` | `verificationCase` | 1 | `MRTM-SYS-002` → `SP-01-H` | declared |
| `test_int_chains.test_int01_excursion_chain` | `verificationCase` | 1 | `MRTM-SYS-002` → `test_int_chains.test_int01_excursion_chain` | declared |
| `test_limit_evaluator.test_invalid_sample_neither_counts_nor_resets` | `verificationCase` | 1 | `MRTM-SYS-002` → `test_limit_evaluator.test_invalid_sample_neither_counts_nor_resets` | declared |
| `test_limit_evaluator.test_seventh_consecutive_out_sample_confirms` | `verificationCase` | 1 | `MRTM-SYS-002` → `test_limit_evaluator.test_seventh_consecutive_out_sample_confirms` | declared |
| `test_limit_evaluator.test_six_out_then_one_in_does_not_confirm` | `verificationCase` | 1 | `MRTM-SYS-002` → `test_limit_evaluator.test_six_out_then_one_in_does_not_confirm` | declared |
