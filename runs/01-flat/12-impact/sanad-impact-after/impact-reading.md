# Impact reading of change CR-001 (Sanad review impact, headless)

11 artifact(s) rest on the changed artifacts of this request. Derived on this poll and stored nowhere. The changed artifacts rest on 4 artifact(s), listed apart under *Rests on*.

trace read from this clone's files; its commit is not read yet

## `03-requirements/system/MRTM-SYS-024.md`

Reaches: 11 · Rests on: 4

| Origin | Artifact | Hops | Relations | Basis |
|---|---|---:|---|---|
| `MRTM-SYS-024` | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` | 1 | implements | declared |
| `MRTM-SYS-024` | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take` | 1 | implements | declared |
| `MRTM-SYS-024` | `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step` | 1 | implements | declared |
| `MRTM-SYS-024` | `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step` | 1 | implements | declared |
| `MRTM-SYS-024` | `SP-01` | 1 | verifies | declared |
| `MRTM-SYS-024` | `SP-01-H` | 1 | verifies | declared |
| `MRTM-SYS-024` | `test_alarm_mgr.test_early_alarm_clears_back_to_quiet` | 1 | verifies | declared |
| `MRTM-SYS-024` | `test_alarm_mgr.test_early_alarm_is_red_1_hz_without_buzzer_then_escalates` | 1 | verifies | declared |
| `MRTM-SYS-024` | `test_limit_evaluator.test_back_in_band_clears_the_early_alarm` | 1 | verifies | declared |
| `MRTM-SYS-024` | `test_limit_evaluator.test_early_alarm_budget_fits_5_s` | 1 | verifies | declared |
| `MRTM-SYS-024` | `test_limit_evaluator.test_first_out_sample_raises_the_early_alarm` | 1 | verifies | declared |

Rests on:

| Origin | Artifact | Hops | Relations | Basis |
|---|---|---:|---|---|
| `MRTM-SYS-024` | `Excursion Confirmation Time` | 2 | references → references | candidate |
| `MRTM-SYS-024` | `MRTM-STK-001` | 1 | uplink | declared |
| `MRTM-SYS-024` | `MRTM-STK-002` | 1 | references | candidate |
| `MRTM-SYS-024` | `MRTM-SYS-002` | 1 | references | candidate |

