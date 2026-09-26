# Impact reading of change CR-001 (Sanad review impact, headless)

100 artifact(s) rest on the changed artifacts of this request. Derived on this poll and stored nowhere. The changed artifacts rest on 3 artifact(s), listed apart under *Rests on*.

trace read from this clone's files; its commit is not read yet

## `03-requirements/system/MRTM-SYS-024.md`

Reaches: 0 · Rests on: 0

| Origin | Artifact | Hops | Relations | Basis |
|---|---|---:|---|---|

Rests on:

| Origin | Artifact | Hops | Relations | Basis |
|---|---|---:|---|---|

## `03-requirements/stakeholder/MRTM-STK-001.md`

Reaches: 29 · Rests on: 0

| Origin | Artifact | Hops | Relations | Basis |
|---|---|---:|---|---|
| `MRTM-STK-001` | `10-src/firmware/components/config_mgr/src/config_mgr.c#config_mgr_load` | 2 | uplink → implements | declared |
| `MRTM-STK-001` | `10-src/firmware/components/config_mgr/src/config_mgr.c#config_mgr_store` | 3 | uplink → uplink → implements | declared |
| `MRTM-STK-001` | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#display_mgr_init` | 3 | uplink → uplink → implements | declared |
| `MRTM-STK-001` | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw` | 2 | uplink → implements | declared |
| `MRTM-STK-001` | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#recoverBus` | 3 | uplink → uplink → implements | declared |
| `MRTM-STK-001` | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#renderFrame` | 2 | uplink → implements | declared |
| `MRTM-STK-001` | `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_init` | 2 | uplink → implements | declared |
| `MRTM-STK-001` | `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_display_step` | 2 | uplink → implements | declared |
| `MRTM-STK-001` | `10-src/firmware/components/mrtm_common/src/mrtm_crc.c#mrtm_crc32` | 3 | uplink → uplink → implements | declared |
| `MRTM-STK-001` | `MRTM-IFC-004` | 2 | uplink → uplink | declared |
| `MRTM-STK-001` | `MRTM-SAF-015` | 2 | uplink → uplink | declared |
| `MRTM-STK-001` | `MRTM-SAF-016` | 2 | uplink → uplink | declared |
| `MRTM-STK-001` | `MRTM-SAF-017` | 2 | uplink → uplink | declared |
| `MRTM-STK-001` | `MRTM-SAF-021` | 2 | uplink → uplink | declared |
| `MRTM-STK-001` | `MRTM-SYS-004` | 1 | uplink | declared |
| `MRTM-STK-001` | `MRTM-SYS-005` | 1 | uplink | declared |
| `MRTM-STK-001` | `MRTM-SYS-017` | 1 | uplink | declared |
| `MRTM-STK-001` | `SP-01` | 1 | verifies | declared |
| `MRTM-STK-001` | `SP-13` | 2 | uplink → verifies | declared |
| `MRTM-STK-001` | `test_alarm_mgr.test_battery_low_or_fail_safe_forces_the_buzzer` | 3 | uplink → uplink → verifies | declared |
| `MRTM-STK-001` | `test_config_mgr.test_bad_crc_is_refused_with_err_crc` | 3 | uplink → uplink → verifies | declared |
| `MRTM-STK-001` | `test_config_mgr.test_band_outside_2_to_8_is_refused` | 2 | uplink → verifies | declared |
| `MRTM-STK-001` | `test_config_mgr.test_missing_record_is_err_nvs` | 3 | uplink → uplink → verifies | declared |
| `MRTM-STK-001` | `test_config_mgr.test_store_writes_a_fresh_crc_and_logs_config_changed` | 3 | uplink → uplink → verifies | declared |
| `MRTM-STK-001` | `test_config_mgr.test_valid_record_loads_the_2_to_8_degree_band` | 2 | uplink → verifies | declared |
| `MRTM-STK-001` | `test_display_mgr.test_excursion_warning_for_the_whole_excursion` | 2 | uplink → verifies | declared |
| `MRTM-STK-001` | `test_display_mgr.test_i2c_timeout_resets_the_bus_within_1_s` | 3 | uplink → uplink → verifies | declared |
| `MRTM-STK-001` | `test_int_chains.test_int03_corrupt_config_fail_safe` | 3 | uplink → uplink → verifies | declared |
| `MRTM-STK-001` | `test_limit_evaluator.test_band_edges_two_and_eight_degrees_are_inside` | 2 | uplink → verifies | declared |

Rests on:

| Origin | Artifact | Hops | Relations | Basis |
|---|---|---:|---|---|

## `03-requirements/stakeholder/MRTM-STK-002.md`

Reaches: 6 · Rests on: 1

| Origin | Artifact | Hops | Relations | Basis |
|---|---|---:|---|---|
| `MRTM-STK-002` | `MRTM-SYS-018` | 1 | uplink | declared |
| `MRTM-STK-002` | `test_alarm_mgr.test_end_returns_to_quiet_from_sounding_and_silenced` | 2 | uplink → verifies | declared |
| `MRTM-STK-002` | `test_limit_evaluator.test_hysteresis_knob_is_zero` | 2 | uplink → verifies | declared |
| `MRTM-STK-002` | `test_limit_evaluator.test_out_sample_restarts_the_in_run` | 2 | uplink → verifies | declared |
| `MRTM-STK-002` | `test_limit_evaluator.test_seventh_consecutive_in_sample_ends_excursion` | 2 | uplink → verifies | declared |
| `MRTM-STK-002` | `test_limit_evaluator.test_six_out_then_one_in_does_not_confirm` | 1 | verifies | declared |

Rests on:

| Origin | Artifact | Hops | Relations | Basis |
|---|---|---:|---|---|
| `MRTM-STK-002` | `Excursion Confirmation Time` | 1 | references | candidate |

## `03-requirements/system/MRTM-SYS-001.md`

Reaches: 33 · Rests on: 2

| Origin | Artifact | Hops | Relations | Basis |
|---|---|---:|---|---|
| `MRTM-SYS-001` | `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_power_up` | 2 | uplink → implements | declared |
| `MRTM-SYS-001` | `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step` | 1 | implements | declared |
| `MRTM-SYS-001` | `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step` | 2 | uplink → implements | declared |
| `MRTM-SYS-001` | `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_init` | 2 | uplink → implements | declared |
| `MRTM-SYS-001` | `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_probe_fault` | 2 | uplink → implements | declared |
| `MRTM-SYS-001` | `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_read` | 1 | implements | declared |
| `MRTM-SYS-001` | `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_to_tenths` | 2 | uplink → implements | declared |
| `MRTM-SYS-001` | `10-src/firmware/components/wdt_kicker/src/wdt_kicker.c#wdt_kicker_init` | 2 | uplink → implements | declared |
| `MRTM-SYS-001` | `MRTM-ENV-002` | 1 | uplink | declared |
| `MRTM-SYS-001` | `MRTM-ENV-003` | 1 | uplink | declared |
| `MRTM-SYS-001` | `MRTM-ENV-004` | 1 | uplink | declared |
| `MRTM-SYS-001` | `MRTM-IFC-001` | 1 | uplink | declared |
| `MRTM-SYS-001` | `MRTM-MNT-003` | 1 | uplink | declared |
| `MRTM-SYS-001` | `MRTM-PRF-001` | 1 | uplink | declared |
| `MRTM-SYS-001` | `MRTM-SAF-003` | 1 | uplink | declared |
| `MRTM-SYS-001` | `MRTM-SAF-004` | 1 | uplink | declared |
| `MRTM-SYS-001` | `MRTM-SAF-012` | 1 | uplink | declared |
| `MRTM-SYS-001` | `MRTM-SAF-020` | 1 | uplink | declared |
| `MRTM-SYS-001` | `SP-01-H` | 1 | verifies | declared |
| `MRTM-SYS-001` | `SP-02` | 2 | uplink → verifies | declared |
| `MRTM-SYS-001` | `SP-03` | 2 | uplink → verifies | declared |
| `MRTM-SYS-001` | `SP-05` | 2 | uplink → verifies | declared |
| `MRTM-SYS-001` | `SP-09` | 2 | uplink → verifies | declared |
| `MRTM-SYS-001` | `SP-10` | 2 | uplink → verifies | declared |
| `MRTM-SYS-001` | `SP-11` | 2 | uplink → verifies | declared |
| `MRTM-SYS-001` | `SP-14` | 2 | uplink → verifies | declared |
| `MRTM-SYS-001` | `test_display_mgr.test_band_and_version_shown_in_the_first_3_s` | 2 | uplink → verifies | declared |
| `MRTM-SYS-001` | `test_display_mgr.test_calibration_due_and_log_capacity_messages` | 2 | uplink → verifies | declared |
| `MRTM-SYS-001` | `test_sensor_sampler.test_conversion_rounds_to_a_tenth_and_adds_the_offset` | 2 | uplink → verifies | declared |
| `MRTM-SYS-001` | `test_sensor_sampler.test_error_codes_arg_and_bus` | 2 | uplink → verifies | declared |
| `MRTM-SYS-001` | `test_sensor_sampler.test_good_scratchpad_gives_a_valid_sample` | 1 | verifies | declared |
| `MRTM-SYS-001` | `test_sensor_sampler.test_reading_outside_minus30_to_50_declares_the_fault_at_once` | 2 | uplink → verifies | declared |
| `MRTM-SYS-001` | `test_wdt_kicker.test_task_watchdog_armed_at_5_s` | 2 | uplink → verifies | declared |

Rests on:

| Origin | Artifact | Hops | Relations | Basis |
|---|---|---:|---|---|
| `MRTM-SYS-001` | `MRTM-STK-004` | 1 | uplink | declared |
| `MRTM-SYS-001` | `Sampling Period` | 1 | references | candidate |

## `03-requirements/system/MRTM-SYS-002.md`

Reaches: 4 · Rests on: 0

| Origin | Artifact | Hops | Relations | Basis |
|---|---|---:|---|---|
| `MRTM-SYS-002` | `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step` | 1 | implements | declared |
| `MRTM-SYS-002` | `test_int_chains.test_int01_excursion_chain` | 1 | verifies | declared |
| `MRTM-SYS-002` | `test_limit_evaluator.test_invalid_sample_neither_counts_nor_resets` | 1 | verifies | declared |
| `MRTM-SYS-002` | `test_limit_evaluator.test_seventh_consecutive_out_sample_confirms` | 1 | verifies | declared |

Rests on:

| Origin | Artifact | Hops | Relations | Basis |
|---|---|---:|---|---|

## `03-requirements/system/MRTM-SYS-003.md`

Reaches: 28 · Rests on: 0

| Origin | Artifact | Hops | Relations | Basis |
|---|---|---:|---|---|
| `MRTM-SYS-003` | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_heartbeat` | 2 | uplink → implements | declared |
| `MRTM-SYS-003` | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_init` | 2 | uplink → implements | declared |
| `MRTM-SYS-003` | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` | 1 | implements | declared |
| `MRTM-SYS-003` | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take` | 1 | implements | declared |
| `MRTM-SYS-003` | `10-src/firmware/components/diagnostics/src/diagnostics.c#diagnostics_power_up` | 2 | uplink → implements | declared |
| `MRTM-SYS-003` | `10-src/firmware/components/wdt_kicker/src/wdt_kicker.c#wdt_kicker_step` | 2 | uplink → implements | declared |
| `MRTM-SYS-003` | `MRTM-SAF-001` | 1 | uplink | declared |
| `MRTM-SYS-003` | `MRTM-SAF-006` | 1 | uplink | declared |
| `MRTM-SYS-003` | `MRTM-SAF-007` | 1 | uplink | declared |
| `MRTM-SYS-003` | `MRTM-SAF-009` | 1 | uplink | declared |
| `MRTM-SYS-003` | `MRTM-SAF-010` | 1 | uplink | declared |
| `MRTM-SYS-003` | `MRTM-SAF-014` | 1 | uplink | declared |
| `MRTM-SYS-003` | `MRTM-SAF-023` | 1 | uplink | declared |
| `MRTM-SYS-003` | `SP-06` | 2 | uplink → verifies | declared |
| `MRTM-SYS-003` | `test_alarm_mgr.test_acknowledged_alarm_is_not_restored_as_sounding` | 2 | uplink → verifies | declared |
| `MRTM-SYS-003` | `test_alarm_mgr.test_confirm_sounds_the_buzzer_and_flashes_red_at_2_hz` | 1 | verifies | declared |
| `MRTM-SYS-003` | `test_alarm_mgr.test_error_codes_full_and_nvs` | 2 | uplink → verifies | declared |
| `MRTM-SYS-003` | `test_alarm_mgr.test_heartbeat_moves_on_every_step` | 2 | uplink → verifies | declared |
| `MRTM-SYS-003` | `test_alarm_mgr.test_no_buzzer_current_for_5_steps_declares_buzzer_fault_red_4_hz` | 2 | uplink → verifies | declared |
| `MRTM-SYS-003` | `test_alarm_mgr.test_unacknowledged_alarm_is_restored_after_a_restart` | 2 | uplink → verifies | declared |
| `MRTM-SYS-003` | `test_diagnostics.test_backup_alarm_not_heard_fails_and_pulses_resume` | 2 | uplink → verifies | declared |
| `MRTM-SYS-003` | `test_diagnostics.test_power_up_tests_pass_inside_their_windows` | 2 | uplink → verifies | declared |
| `MRTM-SYS-003` | `test_diagnostics.test_silent_buzzer_fails_the_power_up_test` | 2 | uplink → verifies | declared |
| `MRTM-SYS-003` | `test_int_chains.test_int02_watchdog_chain` | 2 | uplink → verifies | declared |
| `MRTM-SYS-003` | `test_int_chains.test_int04_restart_restores_the_alarm` | 2 | uplink → verifies | declared |
| `MRTM-SYS-003` | `test_wdt_kicker.test_hold_stops_pulses_and_release_resumes` | 2 | uplink → verifies | declared |
| `MRTM-SYS-003` | `test_wdt_kicker.test_pulses_stop_within_2_s_of_a_missed_alarm_cycle` | 2 | uplink → verifies | declared |
| `MRTM-SYS-003` | `test_wdt_kicker.test_pulses_while_the_heartbeat_moves` | 2 | uplink → verifies | declared |

Rests on:

| Origin | Artifact | Hops | Relations | Basis |
|---|---|---:|---|---|

## `03-requirements/performance/MRTM-PRF-002.md`

Reaches: 0 · Rests on: 0

| Origin | Artifact | Hops | Relations | Basis |
|---|---|---:|---|---|

Rests on:

| Origin | Artifact | Hops | Relations | Basis |
|---|---|---:|---|---|

