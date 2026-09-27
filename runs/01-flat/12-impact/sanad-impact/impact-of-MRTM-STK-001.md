# Impact of a Requirement

**Export schema:** `sanad/impact-of/1`

**Subject:** `MRTM-STK-001` — Alert on excursion

**Walk depth:** 4 hop(s) — every dependent edge, followed until nothing new was reached; no limit is applied.

72 artifact(s) shown rest on it, 3 through a prose-derived link (candidate, not fact).

| Artifact | Kind | Hops | Via | Basis |
|---|---|---:|---|---|
| `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_heartbeat` | `codeSymbol` | 3 | `MRTM-STK-001` → `MRTM-SYS-003` → `MRTM-SAF-010` → `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_heartbeat` | declared |
| `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_init` | `codeSymbol` | 3 | `MRTM-STK-001` → `MRTM-SYS-003` → `MRTM-SAF-006` → `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_init` | declared |
| `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` | `codeSymbol` | 2 | `MRTM-STK-001` → `MRTM-SYS-003` → `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` | declared |
| `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take` | `codeSymbol` | 2 | `MRTM-STK-001` → `MRTM-SYS-003` → `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take` | declared |
| `10-src/firmware/components/config_mgr/src/config_mgr.c#config_mgr_load` | `codeSymbol` | 2 | `MRTM-STK-001` → `MRTM-SYS-017` → `10-src/firmware/components/config_mgr/src/config_mgr.c#config_mgr_load` | declared |
| `10-src/firmware/components/config_mgr/src/config_mgr.c#config_mgr_store` | `codeSymbol` | 3 | `MRTM-STK-001` → `MRTM-SYS-017` → `MRTM-SAF-017` → `10-src/firmware/components/config_mgr/src/config_mgr.c#config_mgr_store` | declared |
| `10-src/firmware/components/diagnostics/src/diagnostics.c#diagnostics_power_up` | `codeSymbol` | 3 | `MRTM-STK-001` → `MRTM-SYS-003` → `MRTM-SAF-007` → `10-src/firmware/components/diagnostics/src/diagnostics.c#diagnostics_power_up` | declared |
| `10-src/firmware/components/display_mgr/src/display_mgr.cpp#display_mgr_init` | `codeSymbol` | 3 | `MRTM-STK-001` → `MRTM-SYS-017` → `MRTM-SAF-016` → `10-src/firmware/components/display_mgr/src/display_mgr.cpp#display_mgr_init` | declared |
| `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw` | `codeSymbol` | 2 | `MRTM-STK-001` → `MRTM-SYS-005` → `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw` | declared |
| `10-src/firmware/components/display_mgr/src/display_mgr.cpp#recoverBus` | `codeSymbol` | 3 | `MRTM-STK-001` → `MRTM-SYS-005` → `MRTM-SAF-021` → `10-src/firmware/components/display_mgr/src/display_mgr.cpp#recoverBus` | declared |
| `10-src/firmware/components/display_mgr/src/display_mgr.cpp#renderFrame` | `codeSymbol` | 2 | `MRTM-STK-001` → `MRTM-SYS-005` → `10-src/firmware/components/display_mgr/src/display_mgr.cpp#renderFrame` | declared |
| `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_init` | `codeSymbol` | 2 | `MRTM-STK-001` → `MRTM-SYS-017` → `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_init` | declared |
| `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step` | `codeSymbol` | 2 | `MRTM-STK-001` → `MRTM-SYS-017` → `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step` | declared |
| `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_display_step` | `codeSymbol` | 2 | `MRTM-STK-001` → `MRTM-SYS-005` → `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_display_step` | declared |
| `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_power_up` | `codeSymbol` | 3 | `MRTM-STK-001` → `MRTM-SYS-003` → `MRTM-SAF-006` → `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_power_up` | declared |
| `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step` | `codeSymbol` | 3 | `MRTM-STK-001` → `MRTM-SYS-003` → `MRTM-SAF-010` → `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step` | declared |
| `10-src/firmware/components/mrtm_common/src/mrtm_crc.c#mrtm_crc32` | `codeSymbol` | 3 | `MRTM-STK-001` → `MRTM-SYS-017` → `MRTM-SAF-017` → `10-src/firmware/components/mrtm_common/src/mrtm_crc.c#mrtm_crc32` | declared |
| `10-src/firmware/components/wdt_kicker/src/wdt_kicker.c#wdt_kicker_init` | `codeSymbol` | 4 | `MRTM-STK-001` → `MRTM-SYS-003` → `MRTM-SAF-009` → `MRTM-SAF-004` → `10-src/firmware/components/wdt_kicker/src/wdt_kicker.c#wdt_kicker_init` | candidate |
| `10-src/firmware/components/wdt_kicker/src/wdt_kicker.c#wdt_kicker_step` | `codeSymbol` | 3 | `MRTM-STK-001` → `MRTM-SYS-003` → `MRTM-SAF-009` → `10-src/firmware/components/wdt_kicker/src/wdt_kicker.c#wdt_kicker_step` | declared |
| `MRTM-IFC-004` | `requirement` | 2 | `MRTM-STK-001` → `MRTM-SYS-005` → `MRTM-IFC-004` | declared |
| `MRTM-PRF-002` | `requirement` | 2 | `MRTM-STK-001` → `MRTM-SYS-003` → `MRTM-PRF-002` | declared |
| `MRTM-SAF-001` | `requirement` | 2 | `MRTM-STK-001` → `MRTM-SYS-003` → `MRTM-SAF-001` | declared |
| `MRTM-SAF-004` | `requirement` | 3 | `MRTM-STK-001` → `MRTM-SYS-003` → `MRTM-SAF-009` → `MRTM-SAF-004` | candidate |
| `MRTM-SAF-006` | `requirement` | 2 | `MRTM-STK-001` → `MRTM-SYS-003` → `MRTM-SAF-006` | declared |
| `MRTM-SAF-007` | `requirement` | 2 | `MRTM-STK-001` → `MRTM-SYS-003` → `MRTM-SAF-007` | declared |
| `MRTM-SAF-009` | `requirement` | 2 | `MRTM-STK-001` → `MRTM-SYS-003` → `MRTM-SAF-009` | declared |
| `MRTM-SAF-010` | `requirement` | 2 | `MRTM-STK-001` → `MRTM-SYS-003` → `MRTM-SAF-010` | declared |
| `MRTM-SAF-014` | `requirement` | 2 | `MRTM-STK-001` → `MRTM-SYS-003` → `MRTM-SAF-014` | declared |
| `MRTM-SAF-015` | `requirement` | 2 | `MRTM-STK-001` → `MRTM-SYS-004` → `MRTM-SAF-015` | declared |
| `MRTM-SAF-016` | `requirement` | 2 | `MRTM-STK-001` → `MRTM-SYS-017` → `MRTM-SAF-016` | declared |
| `MRTM-SAF-017` | `requirement` | 2 | `MRTM-STK-001` → `MRTM-SYS-017` → `MRTM-SAF-017` | declared |
| `MRTM-SAF-021` | `requirement` | 2 | `MRTM-STK-001` → `MRTM-SYS-005` → `MRTM-SAF-021` | declared |
| `MRTM-SAF-023` | `requirement` | 2 | `MRTM-STK-001` → `MRTM-SYS-003` → `MRTM-SAF-023` | declared |
| `MRTM-SYS-003` | `requirement` | 1 | `MRTM-STK-001` → `MRTM-SYS-003` | declared |
| `MRTM-SYS-004` | `requirement` | 1 | `MRTM-STK-001` → `MRTM-SYS-004` | declared |
| `MRTM-SYS-005` | `requirement` | 1 | `MRTM-STK-001` → `MRTM-SYS-005` | declared |
| `MRTM-SYS-017` | `requirement` | 1 | `MRTM-STK-001` → `MRTM-SYS-017` | declared |
| `MRTM-SYS-024` | `requirement` | 1 | `MRTM-STK-001` → `MRTM-SYS-024` | declared |
| `SP-01` | `verificationCase` | 1 | `MRTM-STK-001` → `SP-01` | declared |
| `SP-01-H` | `verificationCase` | 2 | `MRTM-STK-001` → `MRTM-SYS-003` → `SP-01-H` | declared |
| `SP-03` | `verificationCase` | 3 | `MRTM-STK-001` → `MRTM-SYS-003` → `MRTM-SAF-009` → `SP-03` | declared |
| `SP-05` | `verificationCase` | 3 | `MRTM-STK-001` → `MRTM-SYS-003` → `MRTM-SAF-006` → `SP-05` | declared |
| `SP-06` | `verificationCase` | 3 | `MRTM-STK-001` → `MRTM-SYS-003` → `MRTM-SAF-001` → `SP-06` | declared |
| `SP-09` | `verificationCase` | 3 | `MRTM-STK-001` → `MRTM-SYS-005` → `MRTM-IFC-004` → `SP-09` | declared |
| `SP-13` | `verificationCase` | 2 | `MRTM-STK-001` → `MRTM-SYS-017` → `SP-13` | declared |
| `test_alarm_mgr.test_acknowledged_alarm_is_not_restored_as_sounding` | `verificationCase` | 3 | `MRTM-STK-001` → `MRTM-SYS-003` → `MRTM-SAF-006` → `test_alarm_mgr.test_acknowledged_alarm_is_not_restored_as_sounding` | declared |
| `test_alarm_mgr.test_battery_low_or_fail_safe_forces_the_buzzer` | `verificationCase` | 3 | `MRTM-STK-001` → `MRTM-SYS-017` → `MRTM-SAF-017` → `test_alarm_mgr.test_battery_low_or_fail_safe_forces_the_buzzer` | declared |
| `test_alarm_mgr.test_confirm_sounds_the_buzzer_and_flashes_red_at_2_hz` | `verificationCase` | 2 | `MRTM-STK-001` → `MRTM-SYS-003` → `test_alarm_mgr.test_confirm_sounds_the_buzzer_and_flashes_red_at_2_hz` | declared |
| `test_alarm_mgr.test_error_codes_full_and_nvs` | `verificationCase` | 3 | `MRTM-STK-001` → `MRTM-SYS-003` → `MRTM-SAF-006` → `test_alarm_mgr.test_error_codes_full_and_nvs` | declared |
| `test_alarm_mgr.test_heartbeat_moves_on_every_step` | `verificationCase` | 3 | `MRTM-STK-001` → `MRTM-SYS-003` → `MRTM-SAF-010` → `test_alarm_mgr.test_heartbeat_moves_on_every_step` | declared |
| `test_alarm_mgr.test_no_buzzer_current_for_5_steps_declares_buzzer_fault_red_4_hz` | `verificationCase` | 3 | `MRTM-STK-001` → `MRTM-SYS-003` → `MRTM-SAF-014` → `test_alarm_mgr.test_no_buzzer_current_for_5_steps_declares_buzzer_fault_red_4_hz` | declared |
| `test_alarm_mgr.test_unacknowledged_alarm_is_restored_after_a_restart` | `verificationCase` | 3 | `MRTM-STK-001` → `MRTM-SYS-003` → `MRTM-SAF-006` → `test_alarm_mgr.test_unacknowledged_alarm_is_restored_after_a_restart` | declared |
| `test_config_mgr.test_bad_crc_is_refused_with_err_crc` | `verificationCase` | 3 | `MRTM-STK-001` → `MRTM-SYS-017` → `MRTM-SAF-017` → `test_config_mgr.test_bad_crc_is_refused_with_err_crc` | declared |
| `test_config_mgr.test_band_outside_2_to_8_is_refused` | `verificationCase` | 2 | `MRTM-STK-001` → `MRTM-SYS-017` → `test_config_mgr.test_band_outside_2_to_8_is_refused` | declared |
| `test_config_mgr.test_missing_record_is_err_nvs` | `verificationCase` | 3 | `MRTM-STK-001` → `MRTM-SYS-017` → `MRTM-SAF-017` → `test_config_mgr.test_missing_record_is_err_nvs` | declared |
| `test_config_mgr.test_store_writes_a_fresh_crc_and_logs_config_changed` | `verificationCase` | 3 | `MRTM-STK-001` → `MRTM-SYS-017` → `MRTM-SAF-017` → `test_config_mgr.test_store_writes_a_fresh_crc_and_logs_config_changed` | declared |
| `test_config_mgr.test_valid_record_loads_the_2_to_8_degree_band` | `verificationCase` | 2 | `MRTM-STK-001` → `MRTM-SYS-017` → `test_config_mgr.test_valid_record_loads_the_2_to_8_degree_band` | declared |
| `test_diagnostics.test_backup_alarm_not_heard_fails_and_pulses_resume` | `verificationCase` | 3 | `MRTM-STK-001` → `MRTM-SYS-003` → `MRTM-SAF-023` → `test_diagnostics.test_backup_alarm_not_heard_fails_and_pulses_resume` | declared |
| `test_diagnostics.test_power_up_tests_pass_inside_their_windows` | `verificationCase` | 3 | `MRTM-STK-001` → `MRTM-SYS-003` → `MRTM-SAF-007` → `test_diagnostics.test_power_up_tests_pass_inside_their_windows` | declared |
| `test_diagnostics.test_silent_buzzer_fails_the_power_up_test` | `verificationCase` | 3 | `MRTM-STK-001` → `MRTM-SYS-003` → `MRTM-SAF-007` → `test_diagnostics.test_silent_buzzer_fails_the_power_up_test` | declared |
| `test_display_mgr.test_band_and_version_shown_in_the_first_3_s` | `verificationCase` | 3 | `MRTM-STK-001` → `MRTM-SYS-017` → `MRTM-SAF-016` → `test_display_mgr.test_band_and_version_shown_in_the_first_3_s` | declared |
| `test_display_mgr.test_excursion_warning_for_the_whole_excursion` | `verificationCase` | 2 | `MRTM-STK-001` → `MRTM-SYS-005` → `test_display_mgr.test_excursion_warning_for_the_whole_excursion` | declared |
| `test_display_mgr.test_i2c_timeout_resets_the_bus_within_1_s` | `verificationCase` | 3 | `MRTM-STK-001` → `MRTM-SYS-005` → `MRTM-SAF-021` → `test_display_mgr.test_i2c_timeout_resets_the_bus_within_1_s` | declared |
| `test_int_chains.test_int01_excursion_chain` | `verificationCase` | 2 | `MRTM-STK-001` → `MRTM-SYS-003` → `test_int_chains.test_int01_excursion_chain` | declared |
| `test_int_chains.test_int02_watchdog_chain` | `verificationCase` | 3 | `MRTM-STK-001` → `MRTM-SYS-003` → `MRTM-SAF-009` → `test_int_chains.test_int02_watchdog_chain` | declared |
| `test_int_chains.test_int03_corrupt_config_fail_safe` | `verificationCase` | 3 | `MRTM-STK-001` → `MRTM-SYS-017` → `MRTM-SAF-017` → `test_int_chains.test_int03_corrupt_config_fail_safe` | declared |
| `test_int_chains.test_int04_restart_restores_the_alarm` | `verificationCase` | 3 | `MRTM-STK-001` → `MRTM-SYS-003` → `MRTM-SAF-006` → `test_int_chains.test_int04_restart_restores_the_alarm` | declared |
| `test_limit_evaluator.test_band_edges_two_and_eight_degrees_are_inside` | `verificationCase` | 2 | `MRTM-STK-001` → `MRTM-SYS-017` → `test_limit_evaluator.test_band_edges_two_and_eight_degrees_are_inside` | declared |
| `test_wdt_kicker.test_hold_stops_pulses_and_release_resumes` | `verificationCase` | 3 | `MRTM-STK-001` → `MRTM-SYS-003` → `MRTM-SAF-023` → `test_wdt_kicker.test_hold_stops_pulses_and_release_resumes` | declared |
| `test_wdt_kicker.test_pulses_stop_within_2_s_of_a_missed_alarm_cycle` | `verificationCase` | 3 | `MRTM-STK-001` → `MRTM-SYS-003` → `MRTM-SAF-010` → `test_wdt_kicker.test_pulses_stop_within_2_s_of_a_missed_alarm_cycle` | declared |
| `test_wdt_kicker.test_pulses_while_the_heartbeat_moves` | `verificationCase` | 3 | `MRTM-STK-001` → `MRTM-SYS-003` → `MRTM-SAF-010` → `test_wdt_kicker.test_pulses_while_the_heartbeat_moves` | declared |
| `test_wdt_kicker.test_task_watchdog_armed_at_5_s` | `verificationCase` | 4 | `MRTM-STK-001` → `MRTM-SYS-003` → `MRTM-SAF-009` → `MRTM-SAF-004` → `test_wdt_kicker.test_task_watchdog_armed_at_5_s` | candidate |
