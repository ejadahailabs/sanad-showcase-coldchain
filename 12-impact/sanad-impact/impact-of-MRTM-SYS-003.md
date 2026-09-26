# Impact of a Requirement

**Export schema:** `sanad/impact-of/1`

**Subject:** `MRTM-SYS-003` — Buzzer on excursion

**Walk depth:** 3 hop(s) — every dependent edge, followed until nothing new was reached; no limit is applied.

39 artifact(s) shown rest on it, 3 through a prose-derived link (candidate, not fact).

| Artifact | Kind | Hops | Via | Basis |
|---|---|---:|---|---|
| `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_heartbeat` | `codeSymbol` | 2 | `MRTM-SYS-003` → `MRTM-SAF-010` → `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_heartbeat` | declared |
| `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_init` | `codeSymbol` | 2 | `MRTM-SYS-003` → `MRTM-SAF-006` → `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_init` | declared |
| `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` | `codeSymbol` | 1 | `MRTM-SYS-003` → `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` | declared |
| `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take` | `codeSymbol` | 1 | `MRTM-SYS-003` → `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take` | declared |
| `10-src/firmware/components/diagnostics/src/diagnostics.c#diagnostics_power_up` | `codeSymbol` | 2 | `MRTM-SYS-003` → `MRTM-SAF-007` → `10-src/firmware/components/diagnostics/src/diagnostics.c#diagnostics_power_up` | declared |
| `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_power_up` | `codeSymbol` | 2 | `MRTM-SYS-003` → `MRTM-SAF-006` → `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_power_up` | declared |
| `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step` | `codeSymbol` | 2 | `MRTM-SYS-003` → `MRTM-SAF-010` → `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step` | declared |
| `10-src/firmware/components/wdt_kicker/src/wdt_kicker.c#wdt_kicker_init` | `codeSymbol` | 3 | `MRTM-SYS-003` → `MRTM-SAF-009` → `MRTM-SAF-004` → `10-src/firmware/components/wdt_kicker/src/wdt_kicker.c#wdt_kicker_init` | candidate |
| `10-src/firmware/components/wdt_kicker/src/wdt_kicker.c#wdt_kicker_step` | `codeSymbol` | 2 | `MRTM-SYS-003` → `MRTM-SAF-009` → `10-src/firmware/components/wdt_kicker/src/wdt_kicker.c#wdt_kicker_step` | declared |
| `MRTM-PRF-002` | `requirement` | 1 | `MRTM-SYS-003` → `MRTM-PRF-002` | declared |
| `MRTM-SAF-001` | `requirement` | 1 | `MRTM-SYS-003` → `MRTM-SAF-001` | declared |
| `MRTM-SAF-004` | `requirement` | 2 | `MRTM-SYS-003` → `MRTM-SAF-009` → `MRTM-SAF-004` | candidate |
| `MRTM-SAF-006` | `requirement` | 1 | `MRTM-SYS-003` → `MRTM-SAF-006` | declared |
| `MRTM-SAF-007` | `requirement` | 1 | `MRTM-SYS-003` → `MRTM-SAF-007` | declared |
| `MRTM-SAF-009` | `requirement` | 1 | `MRTM-SYS-003` → `MRTM-SAF-009` | declared |
| `MRTM-SAF-010` | `requirement` | 1 | `MRTM-SYS-003` → `MRTM-SAF-010` | declared |
| `MRTM-SAF-014` | `requirement` | 1 | `MRTM-SYS-003` → `MRTM-SAF-014` | declared |
| `MRTM-SAF-023` | `requirement` | 1 | `MRTM-SYS-003` → `MRTM-SAF-023` | declared |
| `SP-01` | `verificationCase` | 1 | `MRTM-SYS-003` → `SP-01` | declared |
| `SP-01-H` | `verificationCase` | 1 | `MRTM-SYS-003` → `SP-01-H` | declared |
| `SP-03` | `verificationCase` | 2 | `MRTM-SYS-003` → `MRTM-SAF-009` → `SP-03` | declared |
| `SP-05` | `verificationCase` | 2 | `MRTM-SYS-003` → `MRTM-SAF-006` → `SP-05` | declared |
| `SP-06` | `verificationCase` | 2 | `MRTM-SYS-003` → `MRTM-SAF-001` → `SP-06` | declared |
| `test_alarm_mgr.test_acknowledged_alarm_is_not_restored_as_sounding` | `verificationCase` | 2 | `MRTM-SYS-003` → `MRTM-SAF-006` → `test_alarm_mgr.test_acknowledged_alarm_is_not_restored_as_sounding` | declared |
| `test_alarm_mgr.test_confirm_sounds_the_buzzer_and_flashes_red_at_2_hz` | `verificationCase` | 1 | `MRTM-SYS-003` → `test_alarm_mgr.test_confirm_sounds_the_buzzer_and_flashes_red_at_2_hz` | declared |
| `test_alarm_mgr.test_error_codes_full_and_nvs` | `verificationCase` | 2 | `MRTM-SYS-003` → `MRTM-SAF-006` → `test_alarm_mgr.test_error_codes_full_and_nvs` | declared |
| `test_alarm_mgr.test_heartbeat_moves_on_every_step` | `verificationCase` | 2 | `MRTM-SYS-003` → `MRTM-SAF-010` → `test_alarm_mgr.test_heartbeat_moves_on_every_step` | declared |
| `test_alarm_mgr.test_no_buzzer_current_for_5_steps_declares_buzzer_fault_red_4_hz` | `verificationCase` | 2 | `MRTM-SYS-003` → `MRTM-SAF-014` → `test_alarm_mgr.test_no_buzzer_current_for_5_steps_declares_buzzer_fault_red_4_hz` | declared |
| `test_alarm_mgr.test_unacknowledged_alarm_is_restored_after_a_restart` | `verificationCase` | 2 | `MRTM-SYS-003` → `MRTM-SAF-006` → `test_alarm_mgr.test_unacknowledged_alarm_is_restored_after_a_restart` | declared |
| `test_diagnostics.test_backup_alarm_not_heard_fails_and_pulses_resume` | `verificationCase` | 2 | `MRTM-SYS-003` → `MRTM-SAF-023` → `test_diagnostics.test_backup_alarm_not_heard_fails_and_pulses_resume` | declared |
| `test_diagnostics.test_power_up_tests_pass_inside_their_windows` | `verificationCase` | 2 | `MRTM-SYS-003` → `MRTM-SAF-007` → `test_diagnostics.test_power_up_tests_pass_inside_their_windows` | declared |
| `test_diagnostics.test_silent_buzzer_fails_the_power_up_test` | `verificationCase` | 2 | `MRTM-SYS-003` → `MRTM-SAF-007` → `test_diagnostics.test_silent_buzzer_fails_the_power_up_test` | declared |
| `test_int_chains.test_int01_excursion_chain` | `verificationCase` | 1 | `MRTM-SYS-003` → `test_int_chains.test_int01_excursion_chain` | declared |
| `test_int_chains.test_int02_watchdog_chain` | `verificationCase` | 2 | `MRTM-SYS-003` → `MRTM-SAF-009` → `test_int_chains.test_int02_watchdog_chain` | declared |
| `test_int_chains.test_int04_restart_restores_the_alarm` | `verificationCase` | 2 | `MRTM-SYS-003` → `MRTM-SAF-006` → `test_int_chains.test_int04_restart_restores_the_alarm` | declared |
| `test_wdt_kicker.test_hold_stops_pulses_and_release_resumes` | `verificationCase` | 2 | `MRTM-SYS-003` → `MRTM-SAF-023` → `test_wdt_kicker.test_hold_stops_pulses_and_release_resumes` | declared |
| `test_wdt_kicker.test_pulses_stop_within_2_s_of_a_missed_alarm_cycle` | `verificationCase` | 2 | `MRTM-SYS-003` → `MRTM-SAF-010` → `test_wdt_kicker.test_pulses_stop_within_2_s_of_a_missed_alarm_cycle` | declared |
| `test_wdt_kicker.test_pulses_while_the_heartbeat_moves` | `verificationCase` | 2 | `MRTM-SYS-003` → `MRTM-SAF-010` → `test_wdt_kicker.test_pulses_while_the_heartbeat_moves` | declared |
| `test_wdt_kicker.test_task_watchdog_armed_at_5_s` | `verificationCase` | 3 | `MRTM-SYS-003` → `MRTM-SAF-009` → `MRTM-SAF-004` → `test_wdt_kicker.test_task_watchdog_armed_at_5_s` | candidate |
