# Impact of a Requirement

**Export schema:** `sanad/impact-of/1`

**Subject:** `MRTM-STK-002` — No alert on brief door opening

**Walk depth:** 2 hop(s) — every dependent edge, followed until nothing new was reached; no limit is applied.

15 artifact(s) shown rest on it, 1 through a prose-derived link (candidate, not fact).

| Artifact | Kind | Hops | Via | Basis |
|---|---|---:|---|---|
| `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step` | `codeSymbol` | 2 | `MRTM-STK-002` → `MRTM-SYS-002` → `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step` | declared |
| `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step` | `codeSymbol` | 2 | `MRTM-STK-002` → `MRTM-SYS-002` → `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step` | declared |
| `MRTM-SYS-002` | `requirement` | 1 | `MRTM-STK-002` → `MRTM-SYS-002` | declared |
| `MRTM-SYS-018` | `requirement` | 1 | `MRTM-STK-002` → `MRTM-SYS-018` | declared |
| `MRTM-SYS-024` | `requirement` | 1 | `MRTM-STK-002` → `MRTM-SYS-024` | candidate |
| `SP-01` | `verificationCase` | 1 | `MRTM-STK-002` → `SP-01` | declared |
| `SP-01-H` | `verificationCase` | 2 | `MRTM-STK-002` → `MRTM-SYS-002` → `SP-01-H` | declared |
| `test_alarm_mgr.test_end_returns_to_quiet_from_sounding_and_silenced` | `verificationCase` | 2 | `MRTM-STK-002` → `MRTM-SYS-018` → `test_alarm_mgr.test_end_returns_to_quiet_from_sounding_and_silenced` | declared |
| `test_int_chains.test_int01_excursion_chain` | `verificationCase` | 2 | `MRTM-STK-002` → `MRTM-SYS-002` → `test_int_chains.test_int01_excursion_chain` | declared |
| `test_limit_evaluator.test_hysteresis_knob_is_zero` | `verificationCase` | 2 | `MRTM-STK-002` → `MRTM-SYS-018` → `test_limit_evaluator.test_hysteresis_knob_is_zero` | declared |
| `test_limit_evaluator.test_invalid_sample_neither_counts_nor_resets` | `verificationCase` | 2 | `MRTM-STK-002` → `MRTM-SYS-002` → `test_limit_evaluator.test_invalid_sample_neither_counts_nor_resets` | declared |
| `test_limit_evaluator.test_out_sample_restarts_the_in_run` | `verificationCase` | 2 | `MRTM-STK-002` → `MRTM-SYS-018` → `test_limit_evaluator.test_out_sample_restarts_the_in_run` | declared |
| `test_limit_evaluator.test_seventh_consecutive_in_sample_ends_excursion` | `verificationCase` | 2 | `MRTM-STK-002` → `MRTM-SYS-018` → `test_limit_evaluator.test_seventh_consecutive_in_sample_ends_excursion` | declared |
| `test_limit_evaluator.test_seventh_consecutive_out_sample_confirms` | `verificationCase` | 2 | `MRTM-STK-002` → `MRTM-SYS-002` → `test_limit_evaluator.test_seventh_consecutive_out_sample_confirms` | declared |
| `test_limit_evaluator.test_six_out_then_one_in_does_not_confirm` | `verificationCase` | 1 | `MRTM-STK-002` → `test_limit_evaluator.test_six_out_then_one_in_does_not_confirm` | declared |
