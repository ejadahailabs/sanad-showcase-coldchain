# Impact of a Requirement

**Export schema:** `sanad/impact-of/1`

**Subject:** `MRTM-SYS-024` — Early excursion alarm

**Walk depth:** 1 hop(s) — every dependent edge, followed until nothing new was reached; no limit is applied.

11 artifact(s) shown rest on it.

| Artifact | Kind | Hops | Via | Basis |
|---|---|---:|---|---|
| `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` | `codeSymbol` | 1 | `MRTM-SYS-024` → `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` | declared |
| `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take` | `codeSymbol` | 1 | `MRTM-SYS-024` → `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take` | declared |
| `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step` | `codeSymbol` | 1 | `MRTM-SYS-024` → `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step` | declared |
| `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step` | `codeSymbol` | 1 | `MRTM-SYS-024` → `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step` | declared |
| `SP-01` | `verificationCase` | 1 | `MRTM-SYS-024` → `SP-01` | declared |
| `SP-01-H` | `verificationCase` | 1 | `MRTM-SYS-024` → `SP-01-H` | declared |
| `test_alarm_mgr.test_early_alarm_clears_back_to_quiet` | `verificationCase` | 1 | `MRTM-SYS-024` → `test_alarm_mgr.test_early_alarm_clears_back_to_quiet` | declared |
| `test_alarm_mgr.test_early_alarm_is_red_1_hz_without_buzzer_then_escalates` | `verificationCase` | 1 | `MRTM-SYS-024` → `test_alarm_mgr.test_early_alarm_is_red_1_hz_without_buzzer_then_escalates` | declared |
| `test_limit_evaluator.test_back_in_band_clears_the_early_alarm` | `verificationCase` | 1 | `MRTM-SYS-024` → `test_limit_evaluator.test_back_in_band_clears_the_early_alarm` | declared |
| `test_limit_evaluator.test_early_alarm_budget_fits_5_s` | `verificationCase` | 1 | `MRTM-SYS-024` → `test_limit_evaluator.test_early_alarm_budget_fits_5_s` | declared |
| `test_limit_evaluator.test_first_out_sample_raises_the_early_alarm` | `verificationCase` | 1 | `MRTM-SYS-024` → `test_limit_evaluator.test_first_out_sample_raises_the_early_alarm` | declared |
