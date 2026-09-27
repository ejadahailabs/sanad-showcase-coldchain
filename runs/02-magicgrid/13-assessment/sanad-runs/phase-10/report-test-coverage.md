# Test coverage

**Export schema:** `sanad/verification-coverage/3`

**Mode:** Engineering — generated on a workstation, outside the certification recipe; this report carries no certification credit.

**Generated from commit:** `d43390ba6ac7514d35343936c01fb4a4665cfc92`

**Commit date:** `2026-09-27T01:03:15+05:30`

**Tool version:** `sanad 0.6.3`

**Configuration hash:** `6b75ce79f74de761af730bc68c44e6600622115a9e7f0abcd8899c7ea47c07a7`

**Input hash:** `2c9742367e0e4914da64b949650aa12559cc4a12cbd486d6fa66bf31cf58601b`

**Inputs:** `69 requirements`, `symbol index`, `architecture inventory`, `glossary`, `data dictionary`, `verification cases`

Test coverage — required 69 · covered 69 · not covered 0 (coverage items not counted: no plan approved in this session). By requirement level (covered of required): not declared 69 of 69. Uncovered structures: 0 · resolved 0 (test to add 0 · dead code 0 · deactivated code 0 · analysis 0 · requirement gap 0). Not covered by this record: 8 items, see the evidence pack.

| Requirement | Type | Folder | Status | Structural coverage | Verification cases | Traces |
|---|---|---|---|---|---|---|
| `MRTM-ENV-001` | `environmental` | `03-requirements/environmental` | covered | no structural coverage report | `SP-04` | `verification` |
| `MRTM-ENV-002` | `environmental` | `03-requirements/environmental` | covered | no structural coverage report | `SP-11` | `verification` |
| `MRTM-ENV-003` | `environmental` | `03-requirements/environmental` | covered | no structural coverage report | `SP-11` | `verification` |
| `MRTM-ENV-004` | `environmental` | `03-requirements/environmental` | covered | no structural coverage report | `SP-10` | `verification` |
| `MRTM-IFC-001` | `interface` | `03-requirements/interface` | covered | no structural coverage report | `SP-10`<br>`test_sensor_sampler.test_error_codes_arg_and_bus`<br>`test_sensor_sampler.test_good_scratchpad_gives_a_valid_sample` | `verification` |
| `MRTM-IFC-002` | `interface` | `03-requirements/interface` | covered | no structural coverage report | `SP-01`<br>`test_alarm_mgr.test_button_debounce_50_ms` | `verification` |
| `MRTM-IFC-003` | `interface` | `03-requirements/interface` | covered | no structural coverage report | `SP-08`<br>`test_usb_export.test_boot_sector_is_a_fat12_volume`<br>`test_usb_export.test_csv_lines_oldest_first_newest_last`<br>`test_usb_export.test_every_write_is_refused`<br>`test_usb_export.test_history_csv_is_marked_read_only` | `verification` |
| `MRTM-IFC-004` | `interface` | `03-requirements/interface` | covered | no structural coverage report | `SP-09` | `verification` |
| `MRTM-MNT-001` | `maintainability` | `03-requirements/maintainability` | covered | no structural coverage report | `SP-10` | `verification` |
| `MRTM-MNT-002` | `maintainability` | `03-requirements/maintainability` | covered | no structural coverage report | `SP-09`<br>`test_display_mgr.test_battery_shown_in_steps_of_10_percent` | `verification` |
| `MRTM-MNT-003` | `maintainability` | `03-requirements/maintainability` | covered | no structural coverage report | `SP-05`<br>`test_display_mgr.test_band_and_version_shown_in_the_first_3_s` | `verification` |
| `MRTM-PRF-001` | `performance` | `03-requirements/performance` | covered | no structural coverage report | `SP-10`<br>`test_sensor_sampler.test_conversion_rounds_to_a_tenth_and_adds_the_offset` | `verification` |
| `MRTM-PRF-002` | `performance` | `03-requirements/performance` | covered | no structural coverage report | `SP-01`<br>`test_int_chains.test_int01_excursion_chain` | `verification` |
| `MRTM-PRF-003` | `performance` | `03-requirements/performance` | covered | no structural coverage report | `SP-08`<br>`test_usb_export.test_full_history_fits_and_fat_chain_ends` | `verification` |
| `MRTM-PRF-004` | `performance` | `03-requirements/performance` | covered | no structural coverage report | `SP-09`<br>`test_display_mgr.test_temperature_refreshes_every_10_s_in_tenths` | `verification` |
| `MRTM-SAF-001` | `safety` | `03-requirements/safety` | covered | no structural coverage report | `SP-06` | `verification` |
| `MRTM-SAF-002` | `safety` | `03-requirements/safety` | covered | no structural coverage report | `SP-02`<br>`test_alarm_mgr.test_probe_fault_sounds_1_s_on_1_s_off` | `verification` |
| `MRTM-SAF-003` | `safety` | `03-requirements/safety` | covered | no structural coverage report | `SP-02`<br>`test_sensor_sampler.test_reading_outside_minus30_to_50_declares_the_fault_at_once` | `verification` |
| `MRTM-SAF-004` | `safety` | `03-requirements/safety` | covered | no structural coverage report | `SP-03`<br>`test_wdt_kicker.test_task_watchdog_armed_at_5_s` | `verification` |
| `MRTM-SAF-005` | `safety` | `03-requirements/safety` | covered | no structural coverage report | `SP-04`<br>`test_int_chains.test_int05_power_loss_logged_within_1_s`<br>`test_power_mon.test_mains_loss_and_restore_are_logged_from_the_edge` | `verification` |
| `MRTM-SAF-006` | `safety` | `03-requirements/safety` | covered | no structural coverage report | `SP-05`<br>`test_alarm_mgr.test_acknowledged_alarm_is_not_restored_as_sounding`<br>`test_alarm_mgr.test_error_codes_full_and_nvs`<br>`test_alarm_mgr.test_unacknowledged_alarm_is_restored_after_a_restart`<br>`test_int_chains.test_int04_restart_restores_the_alarm` | `verification` |
| `MRTM-SAF-007` | `safety` | `03-requirements/safety` | covered | no structural coverage report | `SP-05`<br>`test_diagnostics.test_power_up_tests_pass_inside_their_windows`<br>`test_diagnostics.test_silent_buzzer_fails_the_power_up_test` | `verification` |
| `MRTM-SAF-008` | `safety` | `03-requirements/safety` | covered | no structural coverage report | `SP-04`<br>`test_alarm_mgr.test_battery_low_or_fail_safe_forces_the_buzzer`<br>`test_power_mon.test_battery_below_3400_mv_twice_sounds_the_buzzer` | `verification` |
| `MRTM-SAF-009` | `safety` | `03-requirements/safety` | covered | no structural coverage report | `SP-03`<br>`test_int_chains.test_int02_watchdog_chain` | `verification` |
| `MRTM-SAF-010` | `safety` | `03-requirements/safety` | covered | no structural coverage report | `SP-03`<br>`test_alarm_mgr.test_heartbeat_moves_on_every_step`<br>`test_int_chains.test_int02_watchdog_chain`<br>`test_wdt_kicker.test_pulses_stop_within_2_s_of_a_missed_alarm_cycle`<br>`test_wdt_kicker.test_pulses_while_the_heartbeat_moves` | `verification` |
| `MRTM-SAF-011` | `safety` | `03-requirements/safety` | covered | no structural coverage report | `SP-02`<br>`test_alarm_mgr.test_probe_fault_sounds_1_s_on_1_s_off` | `verification` |
| `MRTM-SAF-012` | `safety` | `03-requirements/safety` | covered | no structural coverage report | `SP-09`<br>`test_display_mgr.test_calibration_due_and_log_capacity_messages` | `verification` |
| `MRTM-SAF-013` | `safety` | `03-requirements/safety` | covered | no structural coverage report | `SP-03` | `verification` |
| `MRTM-SAF-014` | `safety` | `03-requirements/safety` | covered | no structural coverage report | `SP-06`<br>`test_alarm_mgr.test_no_buzzer_current_for_5_steps_declares_buzzer_fault_red_4_hz` | `verification` |
| `MRTM-SAF-015` | `safety` | `03-requirements/safety` | covered | no structural coverage report | `SP-06`<br>`test_alarm_mgr.test_no_buzzer_current_for_5_steps_declares_buzzer_fault_red_4_hz` | `verification` |
| `MRTM-SAF-016` | `safety` | `03-requirements/safety` | covered | no structural coverage report | `SP-05`<br>`test_display_mgr.test_band_and_version_shown_in_the_first_3_s` | `verification` |
| `MRTM-SAF-017` | `safety` | `03-requirements/safety` | covered | no structural coverage report | `SP-05`<br>`test_alarm_mgr.test_battery_low_or_fail_safe_forces_the_buzzer`<br>`test_config_mgr.test_bad_crc_is_refused_with_err_crc`<br>`test_config_mgr.test_missing_record_is_err_nvs`<br>`test_config_mgr.test_store_writes_a_fresh_crc_and_logs_config_changed`<br>`test_int_chains.test_int03_corrupt_config_fail_safe` | `verification` |
| `MRTM-SAF-018` | `safety` | `03-requirements/safety` | covered | no structural coverage report | `SP-07`<br>`test_event_log.test_error_code_full_after_32`<br>`test_event_log.test_flash_failure_does_not_loop`<br>`test_event_log.test_step_numbers_checksums_and_stores_every_queued_record`<br>`test_history_ring.test_append_writes_copy_a_and_copy_b`<br>`test_history_ring.test_corrupt_copy_a_is_read_from_copy_b`<br>`test_history_ring.test_error_codes_flash_arg` | `verification` |
| `MRTM-SAF-019` | `safety` | `03-requirements/safety` | covered | no structural coverage report | `SP-01`<br>`test_alarm_mgr.test_button_held_60_s_is_a_button_fault_and_ignored` | `verification` |
| `MRTM-SAF-020` | `safety` | `03-requirements/safety` | covered | no structural coverage report | `SP-14` | `verification` |
| `MRTM-SAF-021` | `safety` | `03-requirements/safety` | covered | no structural coverage report | `SP-09`<br>`test_display_mgr.test_i2c_timeout_resets_the_bus_within_1_s` | `verification` |
| `MRTM-SAF-022` | `safety` | `03-requirements/safety` | covered | no structural coverage report | `SP-05`<br>`test_rtc_clock.test_error_codes_bus_and_arg`<br>`test_rtc_clock.test_oscillator_stop_at_power_up_logs_clock_fault` | `verification` |
| `MRTM-SAF-023` | `safety` | `03-requirements/safety` | covered | no structural coverage report | `SP-05`<br>`test_diagnostics.test_backup_alarm_not_heard_fails_and_pulses_resume`<br>`test_diagnostics.test_power_up_tests_pass_inside_their_windows`<br>`test_wdt_kicker.test_hold_stops_pulses_and_release_resumes` | `verification` |
| `MRTM-STK-001` | `stakeholder` | `03-requirements/stakeholder` | covered | no structural coverage report | `SP-01` | `verification` |
| `MRTM-STK-002` | `stakeholder` | `03-requirements/stakeholder` | covered | no structural coverage report | `SP-01`<br>`test_limit_evaluator.test_six_out_then_one_in_does_not_confirm` | `verification` |
| `MRTM-STK-003` | `stakeholder` | `03-requirements/stakeholder` | covered | no structural coverage report | `SP-01` | `verification` |
| `MRTM-STK-004` | `stakeholder` | `03-requirements/stakeholder` | covered | no structural coverage report | `SP-09` | `verification` |
| `MRTM-STK-005` | `stakeholder` | `03-requirements/stakeholder` | covered | no structural coverage report | `SP-08` | `verification` |
| `MRTM-STK-006` | `stakeholder` | `03-requirements/stakeholder` | covered | no structural coverage report | `SP-08`<br>`test_usb_export.test_every_write_is_refused` | `verification` |
| `MRTM-STK-007` | `stakeholder` | `03-requirements/stakeholder` | covered | no structural coverage report | `SP-02` | `verification` |
| `MRTM-STK-008` | `stakeholder` | `03-requirements/stakeholder` | covered | no structural coverage report | `SP-04` | `verification` |
| `MRTM-SYS-001` | `system` | `03-requirements/system` | covered | no structural coverage report | `SP-01`<br>`test_sensor_sampler.test_good_scratchpad_gives_a_valid_sample` | `verification` |
| `MRTM-SYS-002` | `system` | `03-requirements/system` | covered | no structural coverage report | `SP-01`<br>`test_int_chains.test_int01_excursion_chain`<br>`test_limit_evaluator.test_invalid_sample_neither_counts_nor_resets`<br>`test_limit_evaluator.test_seventh_consecutive_out_sample_confirms`<br>`test_limit_evaluator.test_six_out_then_one_in_does_not_confirm` | `verification` |
| `MRTM-SYS-003` | `system` | `03-requirements/system` | covered | no structural coverage report | `SP-01`<br>`test_alarm_mgr.test_confirm_sounds_the_buzzer_and_flashes_red_at_2_hz`<br>`test_int_chains.test_int01_excursion_chain` | `verification` |
| `MRTM-SYS-004` | `system` | `03-requirements/system` | covered | no structural coverage report | `SP-01`<br>`test_alarm_mgr.test_confirm_sounds_the_buzzer_and_flashes_red_at_2_hz` | `verification` |
| `MRTM-SYS-005` | `system` | `03-requirements/system` | covered | no structural coverage report | `SP-01`<br>`test_display_mgr.test_excursion_warning_for_the_whole_excursion`<br>`test_int_chains.test_int01_excursion_chain` | `verification` |
| `MRTM-SYS-006` | `system` | `03-requirements/system` | covered | no structural coverage report | `SP-01`<br>`test_alarm_mgr.test_ack_stops_the_buzzer_in_the_same_step_and_logs` | `verification` |
| `MRTM-SYS-007` | `system` | `03-requirements/system` | covered | no structural coverage report | `SP-01`<br>`test_display_mgr.test_excursion_warning_for_the_whole_excursion` | `verification` |
| `MRTM-SYS-008` | `system` | `03-requirements/system` | covered | no structural coverage report | `SP-01`<br>`test_event_log.test_time_stamp_is_the_utc_second_of_the_post`<br>`test_int_chains.test_int01_excursion_chain`<br>`test_usb_export.test_csv_lines_oldest_first_newest_last` | `verification` |
| `MRTM-SYS-009` | `system` | `03-requirements/system` | covered | no structural coverage report | `SP-01`<br>`test_event_log.test_end_record_carries_the_peak_in_tenths`<br>`test_limit_evaluator.test_peak_below_band_counts_distance_downwards`<br>`test_limit_evaluator.test_peak_is_the_most_extreme_sample` | `verification` |
| `MRTM-SYS-010` | `system` | `03-requirements/system` | covered | no structural coverage report | `SP-01`<br>`test_alarm_mgr.test_ack_stops_the_buzzer_in_the_same_step_and_logs`<br>`test_event_log.test_time_stamp_is_the_utc_second_of_the_post` | `verification` |
| `MRTM-SYS-011` | `system` | `03-requirements/system` | covered | no structural coverage report | `SP-09`<br>`test_display_mgr.test_temperature_refreshes_every_10_s_in_tenths`<br>`test_sensor_sampler.test_conversion_rounds_to_a_tenth_and_adds_the_offset` | `verification` |
| `MRTM-SYS-012` | `system` | `03-requirements/system` | covered | no structural coverage report | `SP-02`<br>`test_mrtm_common.test_crc8_over_a_scratchpad`<br>`test_mrtm_common.test_crc_check_values`<br>`test_sensor_sampler.test_bad_crc_is_invalid_but_not_out_of_range`<br>`test_sensor_sampler.test_fault_after_30_s_without_a_correct_crc`<br>`test_sensor_sampler.test_fault_clears_on_the_next_valid_sample` | `verification` |
| `MRTM-SYS-013` | `system` | `03-requirements/system` | covered | no structural coverage report | `SP-02`<br>`test_display_mgr.test_probe_fault_message` | `verification` |
| `MRTM-SYS-014` | `system` | `03-requirements/system` | covered | no structural coverage report | `SP-08`<br>`test_usb_export.test_every_write_is_refused`<br>`test_usb_export.test_history_csv_is_marked_read_only` | `verification` |
| `MRTM-SYS-015` | `system` | `03-requirements/system` | covered | no structural coverage report | `SP-07`<br>`test_history_ring.test_init_finds_the_head_again_after_a_restart`<br>`test_history_ring.test_retains_10000_records_after_wrapping`<br>`test_history_ring.test_retains_10000_straight_after_an_erase_ahead`<br>`test_usb_export.test_full_history_fits_and_fat_chain_ends` | `verification` |
| `MRTM-SYS-016` | `system` | `03-requirements/system` | covered | no structural coverage report | `SP-04` | `verification` |
| `MRTM-SYS-017` | `system` | `03-requirements/system` | covered | no structural coverage report | `SP-13`<br>`test_config_mgr.test_band_outside_2_to_8_is_refused`<br>`test_config_mgr.test_valid_record_loads_the_2_to_8_degree_band`<br>`test_limit_evaluator.test_band_edges_two_and_eight_degrees_are_inside` | `verification` |
| `MRTM-SYS-018` | `system` | `03-requirements/system` | covered | no structural coverage report | `SP-01`<br>`test_alarm_mgr.test_end_returns_to_quiet_from_sounding_and_silenced`<br>`test_limit_evaluator.test_hysteresis_knob_is_zero`<br>`test_limit_evaluator.test_out_sample_restarts_the_in_run`<br>`test_limit_evaluator.test_seventh_consecutive_in_sample_ends_excursion` | `verification` |
| `MRTM-SYS-019` | `system` | `03-requirements/system` | covered | no structural coverage report | `SP-01`<br>`test_alarm_mgr.test_re_sounds_15_minutes_after_the_ack` | `verification` |
| `MRTM-SYS-020` | `system` | `03-requirements/system` | covered | no structural coverage report | `SP-12`<br>`test_rtc_clock.test_now_is_the_rtc_copy_refreshed_each_second` | `verification` |
| `MRTM-SYS-021` | `system` | `03-requirements/system` | covered | no structural coverage report | `SP-07`<br>`test_history_ring.test_both_copies_corrupt_reports_err_crc_and_logs_it`<br>`test_history_ring.test_corrupt_copy_a_is_read_from_copy_b`<br>`test_mrtm_common.test_crc_check_values`<br>`test_usb_export.test_unreadable_record_is_a_corrupt_line` | `verification` |
| `MRTM-SYS-022` | `system` | `03-requirements/system` | covered | no structural coverage report | `SP-07`<br>`test_display_mgr.test_calibration_due_and_log_capacity_messages`<br>`test_history_ring.test_capacity_warning_once_at_9000` | `verification` |
| `MRTM-SYS-023` | `system` | `03-requirements/system` | covered | no structural coverage report | `SP-04`<br>`test_event_log.test_time_stamp_is_the_utc_second_of_the_post`<br>`test_power_mon.test_mains_loss_and_restore_are_logged_from_the_edge` | `verification` |

**Index**

- [Uncovered structures](#uncovered-structures)

## Uncovered structures

Resolution file: none declared.

The tracefiles report no uncovered structure.
