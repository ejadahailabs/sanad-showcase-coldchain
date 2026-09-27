# Audit-Ready Traceability Report

**Index**

- [Configuration identity and completeness](#configuration-identity-and-completeness)
- [Trace legs required by criticality band](#trace-legs-required-by-criticality-band)
- [Level trace matrices](#level-trace-matrices)
  - [Stakeholder Requirement ⇄ System Requirement](#stakeholder-requirement--system-requirement)
    - [Stakeholder Requirement → System Requirement (parent to children)](#stakeholder-requirement--system-requirement-parent-to-children)
    - [System Requirement → Stakeholder Requirement (child to parents)](#system-requirement--stakeholder-requirement-child-to-parents)
  - [System Requirement ⇄ Environmental Requirement](#system-requirement--environmental-requirement)
    - [System Requirement → Environmental Requirement (parent to children)](#system-requirement--environmental-requirement-parent-to-children)
    - [Environmental Requirement → System Requirement (child to parents)](#environmental-requirement--system-requirement-child-to-parents)
  - [System Requirement ⇄ Interface Requirement](#system-requirement--interface-requirement)
    - [System Requirement → Interface Requirement (parent to children)](#system-requirement--interface-requirement-parent-to-children)
    - [Interface Requirement → System Requirement (child to parents)](#interface-requirement--system-requirement-child-to-parents)
  - [System Requirement ⇄ Maintainability Requirement](#system-requirement--maintainability-requirement)
    - [System Requirement → Maintainability Requirement (parent to children)](#system-requirement--maintainability-requirement-parent-to-children)
    - [Maintainability Requirement → System Requirement (child to parents)](#maintainability-requirement--system-requirement-child-to-parents)
  - [System Requirement ⇄ Performance Requirement](#system-requirement--performance-requirement)
    - [System Requirement → Performance Requirement (parent to children)](#system-requirement--performance-requirement-parent-to-children)
    - [Performance Requirement → System Requirement (child to parents)](#performance-requirement--system-requirement-child-to-parents)
  - [System Requirement ⇄ Safety Requirement](#system-requirement--safety-requirement)
    - [System Requirement → Safety Requirement (parent to children)](#system-requirement--safety-requirement-parent-to-children)
    - [Safety Requirement → System Requirement (child to parents)](#safety-requirement--system-requirement-child-to-parents)
  - [Requirements ⇄ Allocated items](#requirements--allocated-items)
    - [Requirements → Allocated items (requirement to allocated item)](#requirements--allocated-items-requirement-to-allocated-item)
    - [Allocated items → Requirements (item to requirements)](#allocated-items--requirements-item-to-requirements)
- [Derived requirements](#derived-requirements)
- [Traceability deficiencies](#traceability-deficiencies)
- [Declared gaps](#declared-gaps)
  - [Orphans — requirements tracing up to nothing](#orphans--requirements-tracing-up-to-nothing)
  - [Childless — an approved requirement nothing traces up to](#childless--an-approved-requirement-nothing-traces-up-to)
  - [Unverified — requirements with no verifying case](#unverified--requirements-with-no-verifying-case)
  - [Derived / exempted — requirements a declaration waived from the orphan rule](#derived--exempted--requirements-a-declaration-waived-from-the-orphan-rule)

## Configuration identity and completeness

**Mode:** Engineering — generated on a workstation, outside the certification recipe; this report carries no certification credit.

**Generated from commit:** `139d80087b653abfdd5cc8e2cd99e1aeb8e97399`

**Tool version:** `sanad 0.6.3`

**Inputs:** `70 requirements`, `symbol index`, `architecture inventory`, `glossary`, `data dictionary`, `verification cases`

This report regenerates byte-identically from the same commit with the same tool version and inputs — it names no clock and reads nothing outside those inputs, so any second run that differs is evidence something changed, not that the report drifted.

**Rule pack:** `requirements-writing`

**Analyses that ran:** `validation`, `traceability`, `quality`, `structure`, `verification`, `implementation`, `safety`, `architecture`, `consistency`, `conformance`, `impact`

**Analyses that did not run:**

- `interface` — did not run: no template in this repository declares the role `interface`. It produced no findings, and that silence is not a clean result.
- `security` — did not run: no template in this repository declares the role `threat`. It produced no findings, and that silence is not a clean result.

**Criticality levels present:** `C`

## Trace legs required by criticality band

The resolved band decides which trace legs are *mandatory*; a leg a band does not require is shown as one that did not run, never dropped (rule 4). Policy is resolved once at load — this table renders that result, it does not compute it (rule 11).

| Band (rigour) | Native level(s) | Requirements | Mandatory legs | Did not run at this level |
|---|---|---|---|---|
| rigour 4 | `C` | 70 | none | trace up (uplink), verification, implementation (code) |

## Level trace matrices

**Objective:** DO-178C Table A-3 objective 6, *high-level requirements are traceable to system requirements*, and the same objective at each level below it; evidenced by the trace data of §5.5, *the bi-directional association between* requirements at adjacent levels.

### Stakeholder Requirement ⇄ System Requirement

#### Stakeholder Requirement → System Requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-STK-001 | Alert on excursion | C (rigour 4) | `MRTM-SYS-003`, `MRTM-SYS-004`, `MRTM-SYS-005`, `MRTM-SYS-017`, `MRTM-SYS-024` | `SP-01` | verified | — |
| MRTM-STK-002 | No alert on brief door opening | C (rigour 4) | `MRTM-SYS-002`, `MRTM-SYS-018` | `SP-01`, `test_alarm_mgr.test_early_alarm_is_red_1_hz_without_buzzer_then_escalates`, `test_limit_evaluator.test_back_in_band_clears_the_early_alarm`, `test_limit_evaluator.test_n_minus_one_out_then_one_in_does_not_confirm` | verified | — |
| MRTM-STK-003 | Silence the alert | C (rigour 4) | `MRTM-SYS-006`, `MRTM-SYS-007`, `MRTM-SYS-019` | `SP-01` | verified | — |
| MRTM-STK-004 | See the temperature | C (rigour 4) | `MRTM-SYS-001`, `MRTM-SYS-011` | `SP-09` | verified | — |
| MRTM-STK-005 | Audit history | C (rigour 4) | `MRTM-SYS-008`, `MRTM-SYS-009`, `MRTM-SYS-010`, `MRTM-SYS-015`, `MRTM-SYS-020`, `MRTM-SYS-022` | `SP-08` | verified | — |
| MRTM-STK-006 | History cannot be edited | C (rigour 4) | `MRTM-SYS-014`, `MRTM-SYS-021` | `SP-08`, `test_usb_export.test_every_write_is_refused` | verified | — |
| MRTM-STK-007 | Probe failure is visible | C (rigour 4) | `MRTM-SYS-012`, `MRTM-SYS-013` | `SP-02` | verified | — |
| MRTM-STK-008 | Monitoring through a power cut | C (rigour 4) | `MRTM-SYS-016`, `MRTM-SYS-023` | `SP-04` | verified | — |

#### System Requirement → Stakeholder Requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SYS-001 | Sampling period | C (rigour 4) | `MRTM-STK-004` | `SP-01`, `SP-01-H`, `test_sensor_sampler.test_good_scratchpad_gives_a_valid_sample` | verified | `10-src/config/mrtm_config.h#off`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_read` |
| MRTM-SYS-002 | Excursion confirmation | C (rigour 4) | `MRTM-STK-002` | `SP-01`, `SP-01-H`, `test_int_chains.test_int01_excursion_chain`, `test_limit_evaluator.test_invalid_sample_neither_counts_nor_resets`, `test_limit_evaluator.test_n_minus_one_out_then_one_in_does_not_confirm`, `test_limit_evaluator.test_nth_consecutive_out_sample_confirms` | verified | `10-src/config/mrtm_config.h#off`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step` |
| MRTM-SYS-003 | Buzzer on excursion | C (rigour 4) | `MRTM-STK-001` | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_confirm_sounds_the_buzzer_and_flashes_red_at_2_hz`, `test_int_chains.test_int01_excursion_chain` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take` |
| MRTM-SYS-004 | Red indicator on excursion | C (rigour 4) | `MRTM-STK-001` | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_confirm_sounds_the_buzzer_and_flashes_red_at_2_hz` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SYS-005 | Warning on excursion | C (rigour 4) | `MRTM-STK-001` | `SP-01`, `SP-01-H`, `test_display_mgr.test_excursion_warning_for_the_whole_excursion`, `test_int_chains.test_int01_excursion_chain` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/display_mgr/src/display_mgr.cpp#renderFrame`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_display_step` |
| MRTM-SYS-006 | Acknowledge silences buzzer | C (rigour 4) | `MRTM-STK-003` | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_ack_stops_the_buzzer_in_the_same_step_and_logs` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_button_debounced`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_post`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take` |
| MRTM-SYS-007 | Warning stays while excursion is open | C (rigour 4) | `MRTM-STK-003` | `SP-01`, `test_display_mgr.test_excursion_warning_for_the_whole_excursion` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw` |
| MRTM-SYS-008 | Log excursion start | C (rigour 4) | `MRTM-STK-005` | `SP-01`, `SP-01-H`, `test_event_log.test_time_stamp_is_the_utc_second_of_the_post`, `test_int_chains.test_int01_excursion_chain`, `test_usb_export.test_csv_lines_oldest_first_newest_last` | verified | `10-src/firmware/components/event_log/src/event_log.c#event_log_post`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now` |
| MRTM-SYS-009 | Log excursion end | C (rigour 4) | `MRTM-STK-005` | `SP-01`, `SP-01-H`, `test_event_log.test_end_record_carries_the_peak_in_tenths`, `test_limit_evaluator.test_peak_below_band_counts_distance_downwards`, `test_limit_evaluator.test_peak_is_the_most_extreme_sample` | verified | `10-src/firmware/components/event_log/src/event_log.c#event_log_post`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_peak`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step` |
| MRTM-SYS-010 | Log acknowledgement | C (rigour 4) | `MRTM-STK-005` | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_ack_stops_the_buzzer_in_the_same_step_and_logs`, `test_event_log.test_time_stamp_is_the_utc_second_of_the_post` | verified | `10-src/firmware/components/event_log/src/event_log.c#event_log_post`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now` |
| MRTM-SYS-011 | Display resolution | C (rigour 4) | `MRTM-STK-004` | `SP-09`, `test_display_mgr.test_temperature_refreshes_every_10_s_in_tenths`, `test_sensor_sampler.test_conversion_rounds_to_a_tenth_and_adds_the_offset` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_to_tenths` |
| MRTM-SYS-012 | Probe fault detection | C (rigour 4) | `MRTM-STK-007` | `SP-02`, `test_mrtm_common.test_crc8_over_a_scratchpad`, `test_mrtm_common.test_crc_check_values`, `test_sensor_sampler.test_bad_crc_is_invalid_but_not_out_of_range`, `test_sensor_sampler.test_fault_after_30_s_without_a_correct_crc`, `test_sensor_sampler.test_fault_clears_on_the_next_valid_sample` | verified | `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step`, `10-src/firmware/components/mrtm_common/src/mrtm_crc.c#mrtm_crc8_maxim`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_probe_fault`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_read` |
| MRTM-SYS-013 | Probe fault message | C (rigour 4) | `MRTM-STK-007` | `SP-02`, `test_display_mgr.test_probe_fault_message` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/display_mgr/src/display_mgr.cpp#renderFrame`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_display_step` |
| MRTM-SYS-014 | Read-only event log | C (rigour 4) | `MRTM-STK-006` | `SP-08`, `test_usb_export.test_every_write_is_refused`, `test_usb_export.test_history_csv_is_marked_read_only` | verified | `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_init`, `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_write10` |
| MRTM-SYS-015 | Event log capacity | C (rigour 4) | `MRTM-STK-005` | `SP-07`, `test_history_ring.test_init_finds_the_head_again_after_a_restart`, `test_history_ring.test_retains_10000_records_after_wrapping`, `test_history_ring.test_retains_10000_straight_after_an_erase_ahead`, `test_usb_export.test_full_history_fits_and_fat_chain_ends` | verified | `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_append`, `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_init`, `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_read` |
| MRTM-SYS-016 | Battery operation | C (rigour 4) | `MRTM-STK-008` | `SP-04` | verified | — |
| MRTM-SYS-017 | Allowed band | C (rigour 4) | `MRTM-STK-001` | `SP-13`, `test_config_mgr.test_band_outside_2_to_8_is_refused`, `test_config_mgr.test_valid_record_loads_the_2_to_8_degree_band`, `test_limit_evaluator.test_band_edges_two_and_eight_degrees_are_inside` | verified | `10-src/firmware/components/config_mgr/src/config_mgr.c#config_mgr_load`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_init`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step` |
| MRTM-SYS-018 | Excursion end confirmation | C (rigour 4) | `MRTM-STK-002` | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_end_returns_to_quiet_from_sounding_and_silenced`, `test_limit_evaluator.test_hysteresis_knob_is_zero`, `test_limit_evaluator.test_nth_consecutive_in_sample_ends_excursion`, `test_limit_evaluator.test_out_sample_restarts_the_in_run` | verified | `10-src/config/mrtm_config.h#off`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step` |
| MRTM-SYS-019 | Alarm comes back after silence | C (rigour 4) | `MRTM-STK-003` | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_re_sounds_15_minutes_after_the_ack` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SYS-020 | Clock drift | C (rigour 4) | `MRTM-STK-005` | `SP-12`, `test_rtc_clock.test_now_is_the_rtc_copy_refreshed_each_second` | verified | `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_tick` |
| MRTM-SYS-021 | Event log integrity | C (rigour 4) | `MRTM-STK-006` | `SP-07`, `test_history_ring.test_both_copies_corrupt_reports_err_crc_and_logs_it`, `test_history_ring.test_corrupt_copy_a_is_read_from_copy_b`, `test_mrtm_common.test_crc_check_values`, `test_usb_export.test_unreadable_record_is_a_corrupt_line` | verified | `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_read`, `10-src/firmware/components/mrtm_common/src/mrtm_crc.c#mrtm_crc32` |
| MRTM-SYS-022 | Log capacity warning | C (rigour 4) | `MRTM-STK-005` | `SP-07`, `test_display_mgr.test_calibration_due_and_log_capacity_messages`, `test_history_ring.test_capacity_warning_once_at_9000` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_append`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step` |
| MRTM-SYS-023 | Power restore event | C (rigour 4) | `MRTM-STK-008` | `SP-04`, `test_event_log.test_time_stamp_is_the_utc_second_of_the_post`, `test_power_mon.test_mains_loss_and_restore_are_logged_from_the_edge` | verified | `10-src/firmware/components/event_log/src/event_log.c#event_log_post`, `10-src/firmware/components/power_mon/src/power_mon.c#power_mon_isr`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now` |
| MRTM-SYS-024 | Early excursion alarm | C (rigour 4) | `MRTM-STK-001` | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_early_alarm_clears_back_to_quiet`, `test_alarm_mgr.test_early_alarm_is_red_1_hz_without_buzzer_then_escalates`, `test_limit_evaluator.test_back_in_band_clears_the_early_alarm`, `test_limit_evaluator.test_early_alarm_budget_fits_5_s`, `test_limit_evaluator.test_first_out_sample_raises_the_early_alarm` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step` |

### System Requirement ⇄ Environmental Requirement

#### System Requirement → Environmental Requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SYS-001 | Sampling period | C (rigour 4) | `MRTM-ENV-002`, `MRTM-ENV-003`, `MRTM-ENV-004` | `SP-01`, `SP-01-H`, `test_sensor_sampler.test_good_scratchpad_gives_a_valid_sample` | verified | `10-src/config/mrtm_config.h#off`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_read` |
| MRTM-SYS-002 | Excursion confirmation | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_int_chains.test_int01_excursion_chain`, `test_limit_evaluator.test_invalid_sample_neither_counts_nor_resets`, `test_limit_evaluator.test_n_minus_one_out_then_one_in_does_not_confirm`, `test_limit_evaluator.test_nth_consecutive_out_sample_confirms` | verified | `10-src/config/mrtm_config.h#off`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step` |
| MRTM-SYS-003 | Buzzer on excursion | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_confirm_sounds_the_buzzer_and_flashes_red_at_2_hz`, `test_int_chains.test_int01_excursion_chain` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take` |
| MRTM-SYS-004 | Red indicator on excursion | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_confirm_sounds_the_buzzer_and_flashes_red_at_2_hz` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SYS-005 | Warning on excursion | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_display_mgr.test_excursion_warning_for_the_whole_excursion`, `test_int_chains.test_int01_excursion_chain` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/display_mgr/src/display_mgr.cpp#renderFrame`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_display_step` |
| MRTM-SYS-006 | Acknowledge silences buzzer | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_ack_stops_the_buzzer_in_the_same_step_and_logs` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_button_debounced`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_post`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take` |
| MRTM-SYS-007 | Warning stays while excursion is open | C (rigour 4) | none | `SP-01`, `test_display_mgr.test_excursion_warning_for_the_whole_excursion` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw` |
| MRTM-SYS-008 | Log excursion start | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_event_log.test_time_stamp_is_the_utc_second_of_the_post`, `test_int_chains.test_int01_excursion_chain`, `test_usb_export.test_csv_lines_oldest_first_newest_last` | verified | `10-src/firmware/components/event_log/src/event_log.c#event_log_post`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now` |
| MRTM-SYS-009 | Log excursion end | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_event_log.test_end_record_carries_the_peak_in_tenths`, `test_limit_evaluator.test_peak_below_band_counts_distance_downwards`, `test_limit_evaluator.test_peak_is_the_most_extreme_sample` | verified | `10-src/firmware/components/event_log/src/event_log.c#event_log_post`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_peak`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step` |
| MRTM-SYS-010 | Log acknowledgement | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_ack_stops_the_buzzer_in_the_same_step_and_logs`, `test_event_log.test_time_stamp_is_the_utc_second_of_the_post` | verified | `10-src/firmware/components/event_log/src/event_log.c#event_log_post`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now` |
| MRTM-SYS-011 | Display resolution | C (rigour 4) | none | `SP-09`, `test_display_mgr.test_temperature_refreshes_every_10_s_in_tenths`, `test_sensor_sampler.test_conversion_rounds_to_a_tenth_and_adds_the_offset` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_to_tenths` |
| MRTM-SYS-012 | Probe fault detection | C (rigour 4) | none | `SP-02`, `test_mrtm_common.test_crc8_over_a_scratchpad`, `test_mrtm_common.test_crc_check_values`, `test_sensor_sampler.test_bad_crc_is_invalid_but_not_out_of_range`, `test_sensor_sampler.test_fault_after_30_s_without_a_correct_crc`, `test_sensor_sampler.test_fault_clears_on_the_next_valid_sample` | verified | `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step`, `10-src/firmware/components/mrtm_common/src/mrtm_crc.c#mrtm_crc8_maxim`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_probe_fault`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_read` |
| MRTM-SYS-013 | Probe fault message | C (rigour 4) | none | `SP-02`, `test_display_mgr.test_probe_fault_message` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/display_mgr/src/display_mgr.cpp#renderFrame`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_display_step` |
| MRTM-SYS-014 | Read-only event log | C (rigour 4) | none | `SP-08`, `test_usb_export.test_every_write_is_refused`, `test_usb_export.test_history_csv_is_marked_read_only` | verified | `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_init`, `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_write10` |
| MRTM-SYS-015 | Event log capacity | C (rigour 4) | none | `SP-07`, `test_history_ring.test_init_finds_the_head_again_after_a_restart`, `test_history_ring.test_retains_10000_records_after_wrapping`, `test_history_ring.test_retains_10000_straight_after_an_erase_ahead`, `test_usb_export.test_full_history_fits_and_fat_chain_ends` | verified | `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_append`, `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_init`, `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_read` |
| MRTM-SYS-016 | Battery operation | C (rigour 4) | `MRTM-ENV-001` | `SP-04` | verified | — |
| MRTM-SYS-017 | Allowed band | C (rigour 4) | none | `SP-13`, `test_config_mgr.test_band_outside_2_to_8_is_refused`, `test_config_mgr.test_valid_record_loads_the_2_to_8_degree_band`, `test_limit_evaluator.test_band_edges_two_and_eight_degrees_are_inside` | verified | `10-src/firmware/components/config_mgr/src/config_mgr.c#config_mgr_load`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_init`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step` |
| MRTM-SYS-018 | Excursion end confirmation | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_end_returns_to_quiet_from_sounding_and_silenced`, `test_limit_evaluator.test_hysteresis_knob_is_zero`, `test_limit_evaluator.test_nth_consecutive_in_sample_ends_excursion`, `test_limit_evaluator.test_out_sample_restarts_the_in_run` | verified | `10-src/config/mrtm_config.h#off`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step` |
| MRTM-SYS-019 | Alarm comes back after silence | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_re_sounds_15_minutes_after_the_ack` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SYS-020 | Clock drift | C (rigour 4) | none | `SP-12`, `test_rtc_clock.test_now_is_the_rtc_copy_refreshed_each_second` | verified | `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_tick` |
| MRTM-SYS-021 | Event log integrity | C (rigour 4) | none | `SP-07`, `test_history_ring.test_both_copies_corrupt_reports_err_crc_and_logs_it`, `test_history_ring.test_corrupt_copy_a_is_read_from_copy_b`, `test_mrtm_common.test_crc_check_values`, `test_usb_export.test_unreadable_record_is_a_corrupt_line` | verified | `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_read`, `10-src/firmware/components/mrtm_common/src/mrtm_crc.c#mrtm_crc32` |
| MRTM-SYS-022 | Log capacity warning | C (rigour 4) | none | `SP-07`, `test_display_mgr.test_calibration_due_and_log_capacity_messages`, `test_history_ring.test_capacity_warning_once_at_9000` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_append`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step` |
| MRTM-SYS-023 | Power restore event | C (rigour 4) | none | `SP-04`, `test_event_log.test_time_stamp_is_the_utc_second_of_the_post`, `test_power_mon.test_mains_loss_and_restore_are_logged_from_the_edge` | verified | `10-src/firmware/components/event_log/src/event_log.c#event_log_post`, `10-src/firmware/components/power_mon/src/power_mon.c#power_mon_isr`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now` |
| MRTM-SYS-024 | Early excursion alarm | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_early_alarm_clears_back_to_quiet`, `test_alarm_mgr.test_early_alarm_is_red_1_hz_without_buzzer_then_escalates`, `test_limit_evaluator.test_back_in_band_clears_the_early_alarm`, `test_limit_evaluator.test_early_alarm_budget_fits_5_s`, `test_limit_evaluator.test_first_out_sample_raises_the_early_alarm` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step` |

#### Environmental Requirement → System Requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-ENV-001 | Battery endurance | C (rigour 4) | `MRTM-SYS-016` | `SP-04` | verified | — |
| MRTM-ENV-002 | Ambient temperature | C (rigour 4) | `MRTM-SYS-001` | `SP-11` | verified | — |
| MRTM-ENV-003 | Humidity | C (rigour 4) | `MRTM-SYS-001` | `SP-11` | verified | — |
| MRTM-ENV-004 | Probe environment | C (rigour 4) | `MRTM-SYS-001` | `SP-10` | verified | — |

### System Requirement ⇄ Interface Requirement

#### System Requirement → Interface Requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SYS-001 | Sampling period | C (rigour 4) | `MRTM-IFC-001` | `SP-01`, `SP-01-H`, `test_sensor_sampler.test_good_scratchpad_gives_a_valid_sample` | verified | `10-src/config/mrtm_config.h#off`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_read` |
| MRTM-SYS-002 | Excursion confirmation | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_int_chains.test_int01_excursion_chain`, `test_limit_evaluator.test_invalid_sample_neither_counts_nor_resets`, `test_limit_evaluator.test_n_minus_one_out_then_one_in_does_not_confirm`, `test_limit_evaluator.test_nth_consecutive_out_sample_confirms` | verified | `10-src/config/mrtm_config.h#off`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step` |
| MRTM-SYS-003 | Buzzer on excursion | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_confirm_sounds_the_buzzer_and_flashes_red_at_2_hz`, `test_int_chains.test_int01_excursion_chain` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take` |
| MRTM-SYS-004 | Red indicator on excursion | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_confirm_sounds_the_buzzer_and_flashes_red_at_2_hz` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SYS-005 | Warning on excursion | C (rigour 4) | `MRTM-IFC-004` | `SP-01`, `SP-01-H`, `test_display_mgr.test_excursion_warning_for_the_whole_excursion`, `test_int_chains.test_int01_excursion_chain` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/display_mgr/src/display_mgr.cpp#renderFrame`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_display_step` |
| MRTM-SYS-006 | Acknowledge silences buzzer | C (rigour 4) | `MRTM-IFC-002` | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_ack_stops_the_buzzer_in_the_same_step_and_logs` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_button_debounced`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_post`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take` |
| MRTM-SYS-007 | Warning stays while excursion is open | C (rigour 4) | none | `SP-01`, `test_display_mgr.test_excursion_warning_for_the_whole_excursion` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw` |
| MRTM-SYS-008 | Log excursion start | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_event_log.test_time_stamp_is_the_utc_second_of_the_post`, `test_int_chains.test_int01_excursion_chain`, `test_usb_export.test_csv_lines_oldest_first_newest_last` | verified | `10-src/firmware/components/event_log/src/event_log.c#event_log_post`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now` |
| MRTM-SYS-009 | Log excursion end | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_event_log.test_end_record_carries_the_peak_in_tenths`, `test_limit_evaluator.test_peak_below_band_counts_distance_downwards`, `test_limit_evaluator.test_peak_is_the_most_extreme_sample` | verified | `10-src/firmware/components/event_log/src/event_log.c#event_log_post`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_peak`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step` |
| MRTM-SYS-010 | Log acknowledgement | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_ack_stops_the_buzzer_in_the_same_step_and_logs`, `test_event_log.test_time_stamp_is_the_utc_second_of_the_post` | verified | `10-src/firmware/components/event_log/src/event_log.c#event_log_post`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now` |
| MRTM-SYS-011 | Display resolution | C (rigour 4) | none | `SP-09`, `test_display_mgr.test_temperature_refreshes_every_10_s_in_tenths`, `test_sensor_sampler.test_conversion_rounds_to_a_tenth_and_adds_the_offset` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_to_tenths` |
| MRTM-SYS-012 | Probe fault detection | C (rigour 4) | none | `SP-02`, `test_mrtm_common.test_crc8_over_a_scratchpad`, `test_mrtm_common.test_crc_check_values`, `test_sensor_sampler.test_bad_crc_is_invalid_but_not_out_of_range`, `test_sensor_sampler.test_fault_after_30_s_without_a_correct_crc`, `test_sensor_sampler.test_fault_clears_on_the_next_valid_sample` | verified | `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step`, `10-src/firmware/components/mrtm_common/src/mrtm_crc.c#mrtm_crc8_maxim`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_probe_fault`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_read` |
| MRTM-SYS-013 | Probe fault message | C (rigour 4) | none | `SP-02`, `test_display_mgr.test_probe_fault_message` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/display_mgr/src/display_mgr.cpp#renderFrame`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_display_step` |
| MRTM-SYS-014 | Read-only event log | C (rigour 4) | `MRTM-IFC-003` | `SP-08`, `test_usb_export.test_every_write_is_refused`, `test_usb_export.test_history_csv_is_marked_read_only` | verified | `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_init`, `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_write10` |
| MRTM-SYS-015 | Event log capacity | C (rigour 4) | none | `SP-07`, `test_history_ring.test_init_finds_the_head_again_after_a_restart`, `test_history_ring.test_retains_10000_records_after_wrapping`, `test_history_ring.test_retains_10000_straight_after_an_erase_ahead`, `test_usb_export.test_full_history_fits_and_fat_chain_ends` | verified | `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_append`, `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_init`, `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_read` |
| MRTM-SYS-016 | Battery operation | C (rigour 4) | none | `SP-04` | verified | — |
| MRTM-SYS-017 | Allowed band | C (rigour 4) | none | `SP-13`, `test_config_mgr.test_band_outside_2_to_8_is_refused`, `test_config_mgr.test_valid_record_loads_the_2_to_8_degree_band`, `test_limit_evaluator.test_band_edges_two_and_eight_degrees_are_inside` | verified | `10-src/firmware/components/config_mgr/src/config_mgr.c#config_mgr_load`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_init`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step` |
| MRTM-SYS-018 | Excursion end confirmation | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_end_returns_to_quiet_from_sounding_and_silenced`, `test_limit_evaluator.test_hysteresis_knob_is_zero`, `test_limit_evaluator.test_nth_consecutive_in_sample_ends_excursion`, `test_limit_evaluator.test_out_sample_restarts_the_in_run` | verified | `10-src/config/mrtm_config.h#off`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step` |
| MRTM-SYS-019 | Alarm comes back after silence | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_re_sounds_15_minutes_after_the_ack` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SYS-020 | Clock drift | C (rigour 4) | none | `SP-12`, `test_rtc_clock.test_now_is_the_rtc_copy_refreshed_each_second` | verified | `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_tick` |
| MRTM-SYS-021 | Event log integrity | C (rigour 4) | none | `SP-07`, `test_history_ring.test_both_copies_corrupt_reports_err_crc_and_logs_it`, `test_history_ring.test_corrupt_copy_a_is_read_from_copy_b`, `test_mrtm_common.test_crc_check_values`, `test_usb_export.test_unreadable_record_is_a_corrupt_line` | verified | `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_read`, `10-src/firmware/components/mrtm_common/src/mrtm_crc.c#mrtm_crc32` |
| MRTM-SYS-022 | Log capacity warning | C (rigour 4) | none | `SP-07`, `test_display_mgr.test_calibration_due_and_log_capacity_messages`, `test_history_ring.test_capacity_warning_once_at_9000` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_append`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step` |
| MRTM-SYS-023 | Power restore event | C (rigour 4) | none | `SP-04`, `test_event_log.test_time_stamp_is_the_utc_second_of_the_post`, `test_power_mon.test_mains_loss_and_restore_are_logged_from_the_edge` | verified | `10-src/firmware/components/event_log/src/event_log.c#event_log_post`, `10-src/firmware/components/power_mon/src/power_mon.c#power_mon_isr`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now` |
| MRTM-SYS-024 | Early excursion alarm | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_early_alarm_clears_back_to_quiet`, `test_alarm_mgr.test_early_alarm_is_red_1_hz_without_buzzer_then_escalates`, `test_limit_evaluator.test_back_in_band_clears_the_early_alarm`, `test_limit_evaluator.test_early_alarm_budget_fits_5_s`, `test_limit_evaluator.test_first_out_sample_raises_the_early_alarm` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step` |

#### Interface Requirement → System Requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-IFC-001 | Probe bus | C (rigour 4) | `MRTM-SYS-001` | `SP-10`, `test_sensor_sampler.test_error_codes_arg_and_bus`, `test_sensor_sampler.test_good_scratchpad_gives_a_valid_sample` | verified | `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_init`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_read` |
| MRTM-IFC-002 | Acknowledge input | C (rigour 4) | `MRTM-SYS-006` | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_button_debounce_50_ms` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_button_debounced`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_button_isr` |
| MRTM-IFC-003 | USB readout | C (rigour 4) | `MRTM-SYS-014` | `SP-08`, `test_usb_export.test_boot_sector_is_a_fat12_volume`, `test_usb_export.test_csv_lines_oldest_first_newest_last`, `test_usb_export.test_every_write_is_refused`, `test_usb_export.test_history_csv_is_marked_read_only` | verified | `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_init`, `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_read10`, `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_write10` |
| MRTM-IFC-004 | Display character height | C (rigour 4) | `MRTM-SYS-005` | `SP-09` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw` |

### System Requirement ⇄ Maintainability Requirement

#### System Requirement → Maintainability Requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SYS-001 | Sampling period | C (rigour 4) | `MRTM-MNT-003` | `SP-01`, `SP-01-H`, `test_sensor_sampler.test_good_scratchpad_gives_a_valid_sample` | verified | `10-src/config/mrtm_config.h#off`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_read` |
| MRTM-SYS-002 | Excursion confirmation | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_int_chains.test_int01_excursion_chain`, `test_limit_evaluator.test_invalid_sample_neither_counts_nor_resets`, `test_limit_evaluator.test_n_minus_one_out_then_one_in_does_not_confirm`, `test_limit_evaluator.test_nth_consecutive_out_sample_confirms` | verified | `10-src/config/mrtm_config.h#off`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step` |
| MRTM-SYS-003 | Buzzer on excursion | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_confirm_sounds_the_buzzer_and_flashes_red_at_2_hz`, `test_int_chains.test_int01_excursion_chain` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take` |
| MRTM-SYS-004 | Red indicator on excursion | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_confirm_sounds_the_buzzer_and_flashes_red_at_2_hz` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SYS-005 | Warning on excursion | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_display_mgr.test_excursion_warning_for_the_whole_excursion`, `test_int_chains.test_int01_excursion_chain` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/display_mgr/src/display_mgr.cpp#renderFrame`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_display_step` |
| MRTM-SYS-006 | Acknowledge silences buzzer | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_ack_stops_the_buzzer_in_the_same_step_and_logs` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_button_debounced`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_post`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take` |
| MRTM-SYS-007 | Warning stays while excursion is open | C (rigour 4) | none | `SP-01`, `test_display_mgr.test_excursion_warning_for_the_whole_excursion` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw` |
| MRTM-SYS-008 | Log excursion start | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_event_log.test_time_stamp_is_the_utc_second_of_the_post`, `test_int_chains.test_int01_excursion_chain`, `test_usb_export.test_csv_lines_oldest_first_newest_last` | verified | `10-src/firmware/components/event_log/src/event_log.c#event_log_post`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now` |
| MRTM-SYS-009 | Log excursion end | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_event_log.test_end_record_carries_the_peak_in_tenths`, `test_limit_evaluator.test_peak_below_band_counts_distance_downwards`, `test_limit_evaluator.test_peak_is_the_most_extreme_sample` | verified | `10-src/firmware/components/event_log/src/event_log.c#event_log_post`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_peak`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step` |
| MRTM-SYS-010 | Log acknowledgement | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_ack_stops_the_buzzer_in_the_same_step_and_logs`, `test_event_log.test_time_stamp_is_the_utc_second_of_the_post` | verified | `10-src/firmware/components/event_log/src/event_log.c#event_log_post`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now` |
| MRTM-SYS-011 | Display resolution | C (rigour 4) | none | `SP-09`, `test_display_mgr.test_temperature_refreshes_every_10_s_in_tenths`, `test_sensor_sampler.test_conversion_rounds_to_a_tenth_and_adds_the_offset` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_to_tenths` |
| MRTM-SYS-012 | Probe fault detection | C (rigour 4) | `MRTM-MNT-001` | `SP-02`, `test_mrtm_common.test_crc8_over_a_scratchpad`, `test_mrtm_common.test_crc_check_values`, `test_sensor_sampler.test_bad_crc_is_invalid_but_not_out_of_range`, `test_sensor_sampler.test_fault_after_30_s_without_a_correct_crc`, `test_sensor_sampler.test_fault_clears_on_the_next_valid_sample` | verified | `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step`, `10-src/firmware/components/mrtm_common/src/mrtm_crc.c#mrtm_crc8_maxim`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_probe_fault`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_read` |
| MRTM-SYS-013 | Probe fault message | C (rigour 4) | none | `SP-02`, `test_display_mgr.test_probe_fault_message` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/display_mgr/src/display_mgr.cpp#renderFrame`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_display_step` |
| MRTM-SYS-014 | Read-only event log | C (rigour 4) | none | `SP-08`, `test_usb_export.test_every_write_is_refused`, `test_usb_export.test_history_csv_is_marked_read_only` | verified | `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_init`, `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_write10` |
| MRTM-SYS-015 | Event log capacity | C (rigour 4) | none | `SP-07`, `test_history_ring.test_init_finds_the_head_again_after_a_restart`, `test_history_ring.test_retains_10000_records_after_wrapping`, `test_history_ring.test_retains_10000_straight_after_an_erase_ahead`, `test_usb_export.test_full_history_fits_and_fat_chain_ends` | verified | `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_append`, `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_init`, `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_read` |
| MRTM-SYS-016 | Battery operation | C (rigour 4) | `MRTM-MNT-002` | `SP-04` | verified | — |
| MRTM-SYS-017 | Allowed band | C (rigour 4) | none | `SP-13`, `test_config_mgr.test_band_outside_2_to_8_is_refused`, `test_config_mgr.test_valid_record_loads_the_2_to_8_degree_band`, `test_limit_evaluator.test_band_edges_two_and_eight_degrees_are_inside` | verified | `10-src/firmware/components/config_mgr/src/config_mgr.c#config_mgr_load`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_init`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step` |
| MRTM-SYS-018 | Excursion end confirmation | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_end_returns_to_quiet_from_sounding_and_silenced`, `test_limit_evaluator.test_hysteresis_knob_is_zero`, `test_limit_evaluator.test_nth_consecutive_in_sample_ends_excursion`, `test_limit_evaluator.test_out_sample_restarts_the_in_run` | verified | `10-src/config/mrtm_config.h#off`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step` |
| MRTM-SYS-019 | Alarm comes back after silence | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_re_sounds_15_minutes_after_the_ack` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SYS-020 | Clock drift | C (rigour 4) | none | `SP-12`, `test_rtc_clock.test_now_is_the_rtc_copy_refreshed_each_second` | verified | `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_tick` |
| MRTM-SYS-021 | Event log integrity | C (rigour 4) | none | `SP-07`, `test_history_ring.test_both_copies_corrupt_reports_err_crc_and_logs_it`, `test_history_ring.test_corrupt_copy_a_is_read_from_copy_b`, `test_mrtm_common.test_crc_check_values`, `test_usb_export.test_unreadable_record_is_a_corrupt_line` | verified | `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_read`, `10-src/firmware/components/mrtm_common/src/mrtm_crc.c#mrtm_crc32` |
| MRTM-SYS-022 | Log capacity warning | C (rigour 4) | none | `SP-07`, `test_display_mgr.test_calibration_due_and_log_capacity_messages`, `test_history_ring.test_capacity_warning_once_at_9000` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_append`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step` |
| MRTM-SYS-023 | Power restore event | C (rigour 4) | none | `SP-04`, `test_event_log.test_time_stamp_is_the_utc_second_of_the_post`, `test_power_mon.test_mains_loss_and_restore_are_logged_from_the_edge` | verified | `10-src/firmware/components/event_log/src/event_log.c#event_log_post`, `10-src/firmware/components/power_mon/src/power_mon.c#power_mon_isr`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now` |
| MRTM-SYS-024 | Early excursion alarm | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_early_alarm_clears_back_to_quiet`, `test_alarm_mgr.test_early_alarm_is_red_1_hz_without_buzzer_then_escalates`, `test_limit_evaluator.test_back_in_band_clears_the_early_alarm`, `test_limit_evaluator.test_early_alarm_budget_fits_5_s`, `test_limit_evaluator.test_first_out_sample_raises_the_early_alarm` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step` |

#### Maintainability Requirement → System Requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-MNT-001 | Probe replacement | C (rigour 4) | `MRTM-SYS-012` | `SP-10` | verified | — |
| MRTM-MNT-002 | Battery level | C (rigour 4) | `MRTM-SYS-016` | `SP-09`, `test_display_mgr.test_battery_shown_in_steps_of_10_percent` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step` |
| MRTM-MNT-003 | Firmware version | C (rigour 4) | `MRTM-SYS-001` | `SP-05`, `test_display_mgr.test_band_and_version_shown_in_the_first_3_s` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/display_mgr/src/display_mgr.cpp#renderFrame`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_power_up` |

### System Requirement ⇄ Performance Requirement

#### System Requirement → Performance Requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SYS-001 | Sampling period | C (rigour 4) | `MRTM-PRF-001` | `SP-01`, `SP-01-H`, `test_sensor_sampler.test_good_scratchpad_gives_a_valid_sample` | verified | `10-src/config/mrtm_config.h#off`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_read` |
| MRTM-SYS-002 | Excursion confirmation | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_int_chains.test_int01_excursion_chain`, `test_limit_evaluator.test_invalid_sample_neither_counts_nor_resets`, `test_limit_evaluator.test_n_minus_one_out_then_one_in_does_not_confirm`, `test_limit_evaluator.test_nth_consecutive_out_sample_confirms` | verified | `10-src/config/mrtm_config.h#off`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step` |
| MRTM-SYS-003 | Buzzer on excursion | C (rigour 4) | `MRTM-PRF-002` | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_confirm_sounds_the_buzzer_and_flashes_red_at_2_hz`, `test_int_chains.test_int01_excursion_chain` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take` |
| MRTM-SYS-004 | Red indicator on excursion | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_confirm_sounds_the_buzzer_and_flashes_red_at_2_hz` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SYS-005 | Warning on excursion | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_display_mgr.test_excursion_warning_for_the_whole_excursion`, `test_int_chains.test_int01_excursion_chain` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/display_mgr/src/display_mgr.cpp#renderFrame`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_display_step` |
| MRTM-SYS-006 | Acknowledge silences buzzer | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_ack_stops_the_buzzer_in_the_same_step_and_logs` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_button_debounced`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_post`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take` |
| MRTM-SYS-007 | Warning stays while excursion is open | C (rigour 4) | none | `SP-01`, `test_display_mgr.test_excursion_warning_for_the_whole_excursion` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw` |
| MRTM-SYS-008 | Log excursion start | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_event_log.test_time_stamp_is_the_utc_second_of_the_post`, `test_int_chains.test_int01_excursion_chain`, `test_usb_export.test_csv_lines_oldest_first_newest_last` | verified | `10-src/firmware/components/event_log/src/event_log.c#event_log_post`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now` |
| MRTM-SYS-009 | Log excursion end | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_event_log.test_end_record_carries_the_peak_in_tenths`, `test_limit_evaluator.test_peak_below_band_counts_distance_downwards`, `test_limit_evaluator.test_peak_is_the_most_extreme_sample` | verified | `10-src/firmware/components/event_log/src/event_log.c#event_log_post`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_peak`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step` |
| MRTM-SYS-010 | Log acknowledgement | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_ack_stops_the_buzzer_in_the_same_step_and_logs`, `test_event_log.test_time_stamp_is_the_utc_second_of_the_post` | verified | `10-src/firmware/components/event_log/src/event_log.c#event_log_post`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now` |
| MRTM-SYS-011 | Display resolution | C (rigour 4) | `MRTM-PRF-004` | `SP-09`, `test_display_mgr.test_temperature_refreshes_every_10_s_in_tenths`, `test_sensor_sampler.test_conversion_rounds_to_a_tenth_and_adds_the_offset` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_to_tenths` |
| MRTM-SYS-012 | Probe fault detection | C (rigour 4) | none | `SP-02`, `test_mrtm_common.test_crc8_over_a_scratchpad`, `test_mrtm_common.test_crc_check_values`, `test_sensor_sampler.test_bad_crc_is_invalid_but_not_out_of_range`, `test_sensor_sampler.test_fault_after_30_s_without_a_correct_crc`, `test_sensor_sampler.test_fault_clears_on_the_next_valid_sample` | verified | `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step`, `10-src/firmware/components/mrtm_common/src/mrtm_crc.c#mrtm_crc8_maxim`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_probe_fault`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_read` |
| MRTM-SYS-013 | Probe fault message | C (rigour 4) | none | `SP-02`, `test_display_mgr.test_probe_fault_message` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/display_mgr/src/display_mgr.cpp#renderFrame`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_display_step` |
| MRTM-SYS-014 | Read-only event log | C (rigour 4) | none | `SP-08`, `test_usb_export.test_every_write_is_refused`, `test_usb_export.test_history_csv_is_marked_read_only` | verified | `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_init`, `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_write10` |
| MRTM-SYS-015 | Event log capacity | C (rigour 4) | `MRTM-PRF-003` | `SP-07`, `test_history_ring.test_init_finds_the_head_again_after_a_restart`, `test_history_ring.test_retains_10000_records_after_wrapping`, `test_history_ring.test_retains_10000_straight_after_an_erase_ahead`, `test_usb_export.test_full_history_fits_and_fat_chain_ends` | verified | `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_append`, `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_init`, `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_read` |
| MRTM-SYS-016 | Battery operation | C (rigour 4) | none | `SP-04` | verified | — |
| MRTM-SYS-017 | Allowed band | C (rigour 4) | none | `SP-13`, `test_config_mgr.test_band_outside_2_to_8_is_refused`, `test_config_mgr.test_valid_record_loads_the_2_to_8_degree_band`, `test_limit_evaluator.test_band_edges_two_and_eight_degrees_are_inside` | verified | `10-src/firmware/components/config_mgr/src/config_mgr.c#config_mgr_load`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_init`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step` |
| MRTM-SYS-018 | Excursion end confirmation | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_end_returns_to_quiet_from_sounding_and_silenced`, `test_limit_evaluator.test_hysteresis_knob_is_zero`, `test_limit_evaluator.test_nth_consecutive_in_sample_ends_excursion`, `test_limit_evaluator.test_out_sample_restarts_the_in_run` | verified | `10-src/config/mrtm_config.h#off`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step` |
| MRTM-SYS-019 | Alarm comes back after silence | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_re_sounds_15_minutes_after_the_ack` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SYS-020 | Clock drift | C (rigour 4) | none | `SP-12`, `test_rtc_clock.test_now_is_the_rtc_copy_refreshed_each_second` | verified | `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_tick` |
| MRTM-SYS-021 | Event log integrity | C (rigour 4) | none | `SP-07`, `test_history_ring.test_both_copies_corrupt_reports_err_crc_and_logs_it`, `test_history_ring.test_corrupt_copy_a_is_read_from_copy_b`, `test_mrtm_common.test_crc_check_values`, `test_usb_export.test_unreadable_record_is_a_corrupt_line` | verified | `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_read`, `10-src/firmware/components/mrtm_common/src/mrtm_crc.c#mrtm_crc32` |
| MRTM-SYS-022 | Log capacity warning | C (rigour 4) | none | `SP-07`, `test_display_mgr.test_calibration_due_and_log_capacity_messages`, `test_history_ring.test_capacity_warning_once_at_9000` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_append`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step` |
| MRTM-SYS-023 | Power restore event | C (rigour 4) | none | `SP-04`, `test_event_log.test_time_stamp_is_the_utc_second_of_the_post`, `test_power_mon.test_mains_loss_and_restore_are_logged_from_the_edge` | verified | `10-src/firmware/components/event_log/src/event_log.c#event_log_post`, `10-src/firmware/components/power_mon/src/power_mon.c#power_mon_isr`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now` |
| MRTM-SYS-024 | Early excursion alarm | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_early_alarm_clears_back_to_quiet`, `test_alarm_mgr.test_early_alarm_is_red_1_hz_without_buzzer_then_escalates`, `test_limit_evaluator.test_back_in_band_clears_the_early_alarm`, `test_limit_evaluator.test_early_alarm_budget_fits_5_s`, `test_limit_evaluator.test_first_out_sample_raises_the_early_alarm` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step` |

#### Performance Requirement → System Requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-PRF-001 | Measurement accuracy | C (rigour 4) | `MRTM-SYS-001` | `SP-10`, `test_sensor_sampler.test_conversion_rounds_to_a_tenth_and_adds_the_offset` | verified | `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_to_tenths` |
| MRTM-PRF-002 | End-to-end alert time | C (rigour 4) | `MRTM-SYS-003` | `SP-01`, `SP-01-H`, `test_int_chains.test_int01_excursion_chain` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-PRF-003 | Log readout time | C (rigour 4) | `MRTM-SYS-015` | `SP-08`, `test_usb_export.test_full_history_fits_and_fat_chain_ends` | verified | `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_read10` |
| MRTM-PRF-004 | Display refresh | C (rigour 4) | `MRTM-SYS-011` | `SP-09`, `test_display_mgr.test_temperature_refreshes_every_10_s_in_tenths` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#display_mgr_tick`, `10-src/firmware/components/display_mgr/src/display_mgr.cpp#renderFrame` |

### System Requirement ⇄ Safety Requirement

#### System Requirement → Safety Requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SYS-001 | Sampling period | C (rigour 4) | `MRTM-SAF-003`, `MRTM-SAF-004`, `MRTM-SAF-012`, `MRTM-SAF-020` | `SP-01`, `SP-01-H`, `test_sensor_sampler.test_good_scratchpad_gives_a_valid_sample` | verified | `10-src/config/mrtm_config.h#off`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_read` |
| MRTM-SYS-002 | Excursion confirmation | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_int_chains.test_int01_excursion_chain`, `test_limit_evaluator.test_invalid_sample_neither_counts_nor_resets`, `test_limit_evaluator.test_n_minus_one_out_then_one_in_does_not_confirm`, `test_limit_evaluator.test_nth_consecutive_out_sample_confirms` | verified | `10-src/config/mrtm_config.h#off`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step` |
| MRTM-SYS-003 | Buzzer on excursion | C (rigour 4) | `MRTM-SAF-001`, `MRTM-SAF-006`, `MRTM-SAF-007`, `MRTM-SAF-009`, `MRTM-SAF-010`, `MRTM-SAF-014`, `MRTM-SAF-023` | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_confirm_sounds_the_buzzer_and_flashes_red_at_2_hz`, `test_int_chains.test_int01_excursion_chain` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take` |
| MRTM-SYS-004 | Red indicator on excursion | C (rigour 4) | `MRTM-SAF-015` | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_confirm_sounds_the_buzzer_and_flashes_red_at_2_hz` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SYS-005 | Warning on excursion | C (rigour 4) | `MRTM-SAF-021` | `SP-01`, `SP-01-H`, `test_display_mgr.test_excursion_warning_for_the_whole_excursion`, `test_int_chains.test_int01_excursion_chain` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/display_mgr/src/display_mgr.cpp#renderFrame`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_display_step` |
| MRTM-SYS-006 | Acknowledge silences buzzer | C (rigour 4) | `MRTM-SAF-019` | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_ack_stops_the_buzzer_in_the_same_step_and_logs` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_button_debounced`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_post`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take` |
| MRTM-SYS-007 | Warning stays while excursion is open | C (rigour 4) | none | `SP-01`, `test_display_mgr.test_excursion_warning_for_the_whole_excursion` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw` |
| MRTM-SYS-008 | Log excursion start | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_event_log.test_time_stamp_is_the_utc_second_of_the_post`, `test_int_chains.test_int01_excursion_chain`, `test_usb_export.test_csv_lines_oldest_first_newest_last` | verified | `10-src/firmware/components/event_log/src/event_log.c#event_log_post`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now` |
| MRTM-SYS-009 | Log excursion end | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_event_log.test_end_record_carries_the_peak_in_tenths`, `test_limit_evaluator.test_peak_below_band_counts_distance_downwards`, `test_limit_evaluator.test_peak_is_the_most_extreme_sample` | verified | `10-src/firmware/components/event_log/src/event_log.c#event_log_post`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_peak`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step` |
| MRTM-SYS-010 | Log acknowledgement | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_ack_stops_the_buzzer_in_the_same_step_and_logs`, `test_event_log.test_time_stamp_is_the_utc_second_of_the_post` | verified | `10-src/firmware/components/event_log/src/event_log.c#event_log_post`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now` |
| MRTM-SYS-011 | Display resolution | C (rigour 4) | none | `SP-09`, `test_display_mgr.test_temperature_refreshes_every_10_s_in_tenths`, `test_sensor_sampler.test_conversion_rounds_to_a_tenth_and_adds_the_offset` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_to_tenths` |
| MRTM-SYS-012 | Probe fault detection | C (rigour 4) | `MRTM-SAF-002`, `MRTM-SAF-011` | `SP-02`, `test_mrtm_common.test_crc8_over_a_scratchpad`, `test_mrtm_common.test_crc_check_values`, `test_sensor_sampler.test_bad_crc_is_invalid_but_not_out_of_range`, `test_sensor_sampler.test_fault_after_30_s_without_a_correct_crc`, `test_sensor_sampler.test_fault_clears_on_the_next_valid_sample` | verified | `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step`, `10-src/firmware/components/mrtm_common/src/mrtm_crc.c#mrtm_crc8_maxim`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_probe_fault`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_read` |
| MRTM-SYS-013 | Probe fault message | C (rigour 4) | none | `SP-02`, `test_display_mgr.test_probe_fault_message` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/display_mgr/src/display_mgr.cpp#renderFrame`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_display_step` |
| MRTM-SYS-014 | Read-only event log | C (rigour 4) | none | `SP-08`, `test_usb_export.test_every_write_is_refused`, `test_usb_export.test_history_csv_is_marked_read_only` | verified | `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_init`, `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_write10` |
| MRTM-SYS-015 | Event log capacity | C (rigour 4) | `MRTM-SAF-018` | `SP-07`, `test_history_ring.test_init_finds_the_head_again_after_a_restart`, `test_history_ring.test_retains_10000_records_after_wrapping`, `test_history_ring.test_retains_10000_straight_after_an_erase_ahead`, `test_usb_export.test_full_history_fits_and_fat_chain_ends` | verified | `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_append`, `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_init`, `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_read` |
| MRTM-SYS-016 | Battery operation | C (rigour 4) | `MRTM-SAF-005`, `MRTM-SAF-008`, `MRTM-SAF-013` | `SP-04` | verified | — |
| MRTM-SYS-017 | Allowed band | C (rigour 4) | `MRTM-SAF-016`, `MRTM-SAF-017` | `SP-13`, `test_config_mgr.test_band_outside_2_to_8_is_refused`, `test_config_mgr.test_valid_record_loads_the_2_to_8_degree_band`, `test_limit_evaluator.test_band_edges_two_and_eight_degrees_are_inside` | verified | `10-src/firmware/components/config_mgr/src/config_mgr.c#config_mgr_load`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_init`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step` |
| MRTM-SYS-018 | Excursion end confirmation | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_end_returns_to_quiet_from_sounding_and_silenced`, `test_limit_evaluator.test_hysteresis_knob_is_zero`, `test_limit_evaluator.test_nth_consecutive_in_sample_ends_excursion`, `test_limit_evaluator.test_out_sample_restarts_the_in_run` | verified | `10-src/config/mrtm_config.h#off`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step` |
| MRTM-SYS-019 | Alarm comes back after silence | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_re_sounds_15_minutes_after_the_ack` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SYS-020 | Clock drift | C (rigour 4) | `MRTM-SAF-022` | `SP-12`, `test_rtc_clock.test_now_is_the_rtc_copy_refreshed_each_second` | verified | `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_tick` |
| MRTM-SYS-021 | Event log integrity | C (rigour 4) | none | `SP-07`, `test_history_ring.test_both_copies_corrupt_reports_err_crc_and_logs_it`, `test_history_ring.test_corrupt_copy_a_is_read_from_copy_b`, `test_mrtm_common.test_crc_check_values`, `test_usb_export.test_unreadable_record_is_a_corrupt_line` | verified | `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_read`, `10-src/firmware/components/mrtm_common/src/mrtm_crc.c#mrtm_crc32` |
| MRTM-SYS-022 | Log capacity warning | C (rigour 4) | none | `SP-07`, `test_display_mgr.test_calibration_due_and_log_capacity_messages`, `test_history_ring.test_capacity_warning_once_at_9000` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_append`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step` |
| MRTM-SYS-023 | Power restore event | C (rigour 4) | none | `SP-04`, `test_event_log.test_time_stamp_is_the_utc_second_of_the_post`, `test_power_mon.test_mains_loss_and_restore_are_logged_from_the_edge` | verified | `10-src/firmware/components/event_log/src/event_log.c#event_log_post`, `10-src/firmware/components/power_mon/src/power_mon.c#power_mon_isr`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now` |
| MRTM-SYS-024 | Early excursion alarm | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_early_alarm_clears_back_to_quiet`, `test_alarm_mgr.test_early_alarm_is_red_1_hz_without_buzzer_then_escalates`, `test_limit_evaluator.test_back_in_band_clears_the_early_alarm`, `test_limit_evaluator.test_early_alarm_budget_fits_5_s`, `test_limit_evaluator.test_first_out_sample_raises_the_early_alarm` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step` |

#### Safety Requirement → System Requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SAF-001 | Buzzer loudness | C (rigour 4) | `MRTM-SYS-003` | `SP-06` | verified | — |
| MRTM-SAF-002 | Probe fault raises alert | C (rigour 4) | `MRTM-SYS-012` | `SP-02`, `test_alarm_mgr.test_probe_fault_sounds_1_s_on_1_s_off` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step` |
| MRTM-SAF-003 | Implausible sample | C (rigour 4) | `MRTM-SYS-001` | `SP-02`, `test_sensor_sampler.test_reading_outside_minus30_to_50_declares_the_fault_at_once` | verified | `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_probe_fault`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_read` |
| MRTM-SAF-004 | Watchdog restart | C (rigour 4) | `MRTM-SYS-001` | `SP-03`, `test_wdt_kicker.test_task_watchdog_armed_at_5_s` | verified | `10-src/firmware/components/wdt_kicker/src/wdt_kicker.c#wdt_kicker_init` |
| MRTM-SAF-005 | Log power loss | C (rigour 4) | `MRTM-SYS-016` | `SP-04`, `test_int_chains.test_int05_power_loss_logged_within_1_s`, `test_power_mon.test_mains_loss_and_restore_are_logged_from_the_edge` | verified | `10-src/firmware/components/power_mon/src/power_mon.c#power_mon_isr` |
| MRTM-SAF-006 | Alert survives restart | C (rigour 4) | `MRTM-SYS-003` | `SP-05`, `test_alarm_mgr.test_acknowledged_alarm_is_not_restored_as_sounding`, `test_alarm_mgr.test_error_codes_full_and_nvs`, `test_alarm_mgr.test_unacknowledged_alarm_is_restored_after_a_restart`, `test_int_chains.test_int04_restart_restores_the_alarm` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_init`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_power_up` |
| MRTM-SAF-007 | Buzzer self-test | C (rigour 4) | `MRTM-SYS-003` | `SP-05`, `test_diagnostics.test_power_up_tests_pass_inside_their_windows`, `test_diagnostics.test_silent_buzzer_fails_the_power_up_test` | verified | `10-src/firmware/components/diagnostics/src/diagnostics.c#diagnostics_power_up` |
| MRTM-SAF-008 | Low battery alarm | C (rigour 4) | `MRTM-SYS-016` | `SP-04`, `test_alarm_mgr.test_battery_low_or_fail_safe_forces_the_buzzer`, `test_power_mon.test_battery_below_3400_mv_twice_sounds_the_buzzer` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step`, `10-src/firmware/components/power_mon/src/power_mon.c#power_mon_step` |
| MRTM-SAF-009 | Backup alarm on firmware silence | C (rigour 4) | `MRTM-SYS-003` | `SP-03`, `test_int_chains.test_int02_watchdog_chain` | verified | `10-src/firmware/components/wdt_kicker/src/wdt_kicker.c#wdt_kicker_step` |
| MRTM-SAF-010 | Watchdog tied to the alarm service | C (rigour 4) | `MRTM-SYS-003` | `SP-03`, `test_alarm_mgr.test_heartbeat_moves_on_every_step`, `test_int_chains.test_int02_watchdog_chain`, `test_wdt_kicker.test_pulses_stop_within_2_s_of_a_missed_alarm_cycle`, `test_wdt_kicker.test_pulses_while_the_heartbeat_moves` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_heartbeat`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step`, `10-src/firmware/components/wdt_kicker/src/wdt_kicker.c#wdt_kicker_step` |
| MRTM-SAF-011 | Fault tone differs from excursion tone | C (rigour 4) | `MRTM-SYS-012` | `SP-02`, `test_alarm_mgr.test_probe_fault_sounds_1_s_on_1_s_off` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SAF-012 | Probe calibration due | C (rigour 4) | `MRTM-SYS-001` | `SP-09`, `test_display_mgr.test_calibration_due_and_log_capacity_messages` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step` |
| MRTM-SAF-013 | Alarm on total power loss | C (rigour 4) | `MRTM-SYS-016` | `SP-03` | verified | — |
| MRTM-SAF-014 | Buzzer open-circuit detection | C (rigour 4) | `MRTM-SYS-003` | `SP-06`, `test_alarm_mgr.test_no_buzzer_current_for_5_steps_declares_buzzer_fault_red_4_hz` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SAF-015 | Diverse signal for buzzer fault | C (rigour 4) | `MRTM-SYS-004` | `SP-06`, `test_alarm_mgr.test_no_buzzer_current_for_5_steps_declares_buzzer_fault_red_4_hz` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SAF-016 | Show the band at power-up | C (rigour 4) | `MRTM-SYS-017` | `SP-05`, `test_display_mgr.test_band_and_version_shown_in_the_first_3_s` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#display_mgr_init`, `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/display_mgr/src/display_mgr.cpp#renderFrame`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_power_up` |
| MRTM-SAF-017 | Band integrity check | C (rigour 4) | `MRTM-SYS-017` | `SP-05`, `test_alarm_mgr.test_battery_low_or_fail_safe_forces_the_buzzer`, `test_config_mgr.test_bad_crc_is_refused_with_err_crc`, `test_config_mgr.test_missing_record_is_err_nvs`, `test_config_mgr.test_store_writes_a_fresh_crc_and_logs_config_changed`, `test_int_chains.test_int03_corrupt_config_fail_safe` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step`, `10-src/firmware/components/config_mgr/src/config_mgr.c#config_mgr_load`, `10-src/firmware/components/config_mgr/src/config_mgr.c#config_mgr_store`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_power_up`, `10-src/firmware/components/mrtm_common/src/mrtm_crc.c#mrtm_crc32` |
| MRTM-SAF-018 | Two copies of every record | C (rigour 4) | `MRTM-SYS-015` | `SP-07`, `test_event_log.test_error_code_full_after_32`, `test_event_log.test_flash_failure_does_not_loop`, `test_event_log.test_step_numbers_checksums_and_stores_every_queued_record`, `test_history_ring.test_append_writes_copy_a_and_copy_b`, `test_history_ring.test_corrupt_copy_a_is_read_from_copy_b`, `test_history_ring.test_error_codes_flash_arg` | verified | `10-src/firmware/components/event_log/src/event_log.c#event_log_step`, `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_append` |
| MRTM-SAF-019 | Stuck acknowledge button | C (rigour 4) | `MRTM-SYS-006` | `SP-01`, `test_alarm_mgr.test_button_held_60_s_is_a_button_fault_and_ignored` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_button_debounced`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SAF-020 | Probe placement in the instructions | C (rigour 4) | `MRTM-SYS-001` | `SP-14` | verified | — |
| MRTM-SAF-021 | I2C bus recovery | C (rigour 4) | `MRTM-SYS-005` | `SP-09`, `test_display_mgr.test_i2c_timeout_resets_the_bus_within_1_s` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#recoverBus` |
| MRTM-SAF-022 | Clock stop detection | C (rigour 4) | `MRTM-SYS-020` | `SP-05`, `test_rtc_clock.test_error_codes_bus_and_arg`, `test_rtc_clock.test_oscillator_stop_at_power_up_logs_clock_fault` | verified | `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_power_up`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_init` |
| MRTM-SAF-023 | Backup alarm power-up test | C (rigour 4) | `MRTM-SYS-003` | `SP-05`, `test_diagnostics.test_backup_alarm_not_heard_fails_and_pulses_resume`, `test_diagnostics.test_power_up_tests_pass_inside_their_windows`, `test_wdt_kicker.test_hold_stops_pulses_and_release_resumes` | verified | `10-src/firmware/components/diagnostics/src/diagnostics.c#diagnostics_power_up` |

### Requirements ⇄ Allocated items

**Objective:** ARP4754A 5.3, *allocation of requirements to items*; and DO-178C Table A-2 objective 1, *high-level requirements are developed* — from the system requirements allocated to software.

#### Requirements → Allocated items (requirement to allocated item)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-ENV-001 | Battery endurance | C (rigour 4) | `battery`, `batteryFeed` | `SP-04` | verified | — |
| MRTM-ENV-002 | Ambient temperature | C (rigour 4) | `esp32`, `hardware` | `SP-11` | verified | — |
| MRTM-ENV-003 | Humidity | C (rigour 4) | `hardware` | `SP-11` | verified | — |
| MRTM-ENV-004 | Probe environment | C (rigour 4) | `airContact`, `fridge`, `probe` | `SP-10` | verified | — |
| MRTM-IFC-001 | Probe bus | C (rigour 4) | `probe`, `probeLink`, `sensorSampler`, `sensorSamplerApi` | `SP-10`, `test_sensor_sampler.test_error_codes_arg_and_bus`, `test_sensor_sampler.test_good_scratchpad_gives_a_valid_sample` | verified | `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_init`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_read` |
| MRTM-IFC-002 | Acknowledge input | C (rigour 4) | `ackLine`, `alarmMgr`, `alarmMgrApi` | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_button_debounce_50_ms` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_button_debounced`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_button_isr` |
| MRTM-IFC-003 | USB readout | C (rigour 4) | `esp32`, `historyLink`, `usb`, `usbExport`, `usbExportApi`, `usbHost`, `usbService` | `SP-08`, `test_usb_export.test_boot_sector_is_a_fat12_volume`, `test_usb_export.test_csv_lines_oldest_first_newest_last`, `test_usb_export.test_every_write_is_refused`, `test_usb_export.test_history_csv_is_marked_read_only` | verified | `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_init`, `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_read10`, `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_write10` |
| MRTM-IFC-004 | Display character height | C (rigour 4) | `displayLink`, `displayMgr`, `displayMgrApi`, `oled`, `screen` | `SP-09` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw` |
| MRTM-MNT-001 | Probe replacement | C (rigour 4) | `probe` | `SP-10` | verified | — |
| MRTM-MNT-002 | Battery level | C (rigour 4) | `displayMgr`, `statusDisplay` | `SP-09`, `test_display_mgr.test_battery_shown_in_steps_of_10_percent` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step` |
| MRTM-MNT-003 | Firmware version | C (rigour 4) | `displayMgr`, `selfTest` | `SP-05`, `test_display_mgr.test_band_and_version_shown_in_the_first_3_s` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/display_mgr/src/display_mgr.cpp#renderFrame`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_power_up` |
| MRTM-PRF-001 | Measurement accuracy | C (rigour 4) | `probe`, `sampler`, `sensorSampler`, `sensorSamplerApi` | `SP-10`, `test_sensor_sampler.test_conversion_rounds_to_a_tenth_and_adds_the_offset` | verified | `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_to_tenths` |
| MRTM-PRF-002 | End-to-end alert time | C (rigour 4) | `alarmManager`, `alarmMgr`, `alarmMgrApi` | `SP-01`, `SP-01-H`, `test_int_chains.test_int01_excursion_chain` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-PRF-003 | Log readout time | C (rigour 4) | `historyLink`, `historyServer`, `usbExport`, `usbExportApi` | `SP-08`, `test_usb_export.test_full_history_fits_and_fat_chain_ends` | verified | `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_read10` |
| MRTM-PRF-004 | Display refresh | C (rigour 4) | `displayMgr`, `displayMgrApi`, `statusDisplay` | `SP-09`, `test_display_mgr.test_temperature_refreshes_every_10_s_in_tenths` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#display_mgr_tick`, `10-src/firmware/components/display_mgr/src/display_mgr.cpp#renderFrame` |
| MRTM-SAF-001 | Buzzer loudness | C (rigour 4) | `alarmMgr`, `alarmMgrApi`, `buzzer` | `SP-06` | verified | — |
| MRTM-SAF-002 | Probe fault raises alert | C (rigour 4) | `alarmManager`, `alarmMgr`, `alarmMgrApi`, `firmware.alarmService` | `SP-02`, `test_alarm_mgr.test_probe_fault_sounds_1_s_on_1_s_off` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step` |
| MRTM-SAF-003 | Implausible sample | C (rigour 4) | `firmware.sensorService`, `probeSupervisor`, `sensorSampler`, `sensorSamplerApi` | `SP-02`, `test_sensor_sampler.test_reading_outside_minus30_to_50_declares_the_fault_at_once` | verified | `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_probe_fault`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_read` |
| MRTM-SAF-004 | Watchdog restart | C (rigour 4) | `firmware`, `supervisor`, `watchdog`, `wdtKicker`, `wdtKickerApi` | `SP-03`, `test_wdt_kicker.test_task_watchdog_armed_at_5_s` | verified | `10-src/firmware/components/wdt_kicker/src/wdt_kicker.c#wdt_kicker_init` |
| MRTM-SAF-005 | Log power loss | C (rigour 4) | `eventLogger`, `firmware.logService`, `mains`, `mainsSenseLine`, `powerMon`, `powerMonApi` | `SP-04`, `test_int_chains.test_int05_power_loss_logged_within_1_s`, `test_power_mon.test_mains_loss_and_restore_are_logged_from_the_edge` | verified | `10-src/firmware/components/power_mon/src/power_mon.c#power_mon_isr` |
| MRTM-SAF-006 | Alert survives restart | C (rigour 4) | `alarmMgr`, `alarmMgrApi`, `firmware`, `firmware.alarmService`, `watchdog` | `SP-05`, `test_alarm_mgr.test_acknowledged_alarm_is_not_restored_as_sounding`, `test_alarm_mgr.test_error_codes_full_and_nvs`, `test_alarm_mgr.test_unacknowledged_alarm_is_restored_after_a_restart`, `test_int_chains.test_int04_restart_restores_the_alarm` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_init`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_power_up` |
| MRTM-SAF-007 | Buzzer self-test | C (rigour 4) | `diagnostics`, `diagnosticsApi`, `firmware.supervisor`, `selfTest` | `SP-05`, `test_diagnostics.test_power_up_tests_pass_inside_their_windows`, `test_diagnostics.test_silent_buzzer_fails_the_power_up_test` | verified | `10-src/firmware/components/diagnostics/src/diagnostics.c#diagnostics_power_up` |
| MRTM-SAF-008 | Low battery alarm | C (rigour 4) | `alarmMgr`, `batterySenseLine`, `powerMon`, `powerMonApi`, `powerService`, `powerSupervisor` | `SP-04`, `test_alarm_mgr.test_battery_low_or_fail_safe_forces_the_buzzer`, `test_power_mon.test_battery_below_3400_mv_twice_sounds_the_buzzer` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step`, `10-src/firmware/components/power_mon/src/power_mon.c#power_mon_step` |
| MRTM-SAF-009 | Backup alarm on firmware silence | C (rigour 4) | `backupAlarm`, `hardware.backupAlarm`, `hardware.backupBuzzerLine`, `hardware.wdtKickLine`, `wdtKicker`, `wdtKickerApi` | `SP-03`, `test_int_chains.test_int02_watchdog_chain` | verified | `10-src/firmware/components/wdt_kicker/src/wdt_kicker.c#wdt_kicker_step` |
| MRTM-SAF-010 | Watchdog tied to the alarm service | C (rigour 4) | `alarmMgr`, `firmware.alarmService`, `firmware.supervisor`, `wdtKicker`, `wdtKickerApi` | `SP-03`, `test_alarm_mgr.test_heartbeat_moves_on_every_step`, `test_int_chains.test_int02_watchdog_chain`, `test_wdt_kicker.test_pulses_stop_within_2_s_of_a_missed_alarm_cycle`, `test_wdt_kicker.test_pulses_while_the_heartbeat_moves` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_heartbeat`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step`, `10-src/firmware/components/wdt_kicker/src/wdt_kicker.c#wdt_kicker_step` |
| MRTM-SAF-011 | Fault tone differs from excursion tone | C (rigour 4) | `alarmMgr`, `alarmMgrApi`, `firmware.alarmService` | `SP-02`, `test_alarm_mgr.test_probe_fault_sounds_1_s_on_1_s_off` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SAF-012 | Probe calibration due | C (rigour 4) | `displayMgr`, `displayMgrApi`, `firmware.displayService` | `SP-09`, `test_display_mgr.test_calibration_due_and_log_capacity_messages` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step` |
| MRTM-SAF-013 | Alarm on total power loss | C (rigour 4) | `hardware.backupAlarm`, `hardware.holdUpCap`, `holdUpCap` | `SP-03` | verified | — |
| MRTM-SAF-014 | Buzzer open-circuit detection | C (rigour 4) | `alarmMgr`, `alarmMgrApi`, `buzzer`, `firmware.alarmService`, `hardware.buzzerSenseLine` | `SP-06`, `test_alarm_mgr.test_no_buzzer_current_for_5_steps_declares_buzzer_fault_red_4_hz` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SAF-015 | Diverse signal for buzzer fault | C (rigour 4) | `alarmMgr`, `alarmMgrApi`, `firmware.alarmService`, `hardware.redLine`, `redLed` | `SP-06`, `test_alarm_mgr.test_no_buzzer_current_for_5_steps_declares_buzzer_fault_red_4_hz` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SAF-016 | Show the band at power-up | C (rigour 4) | `displayMgr`, `displayMgrApi`, `firmware.displayService` | `SP-05`, `test_display_mgr.test_band_and_version_shown_in_the_first_3_s` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#display_mgr_init`, `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/display_mgr/src/display_mgr.cpp#renderFrame`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_power_up` |
| MRTM-SAF-017 | Band integrity check | C (rigour 4) | `alarmMgr`, `configMgr`, `configMgrApi`, `firmware.supervisor` | `SP-05`, `test_alarm_mgr.test_battery_low_or_fail_safe_forces_the_buzzer`, `test_config_mgr.test_bad_crc_is_refused_with_err_crc`, `test_config_mgr.test_missing_record_is_err_nvs`, `test_config_mgr.test_store_writes_a_fresh_crc_and_logs_config_changed`, `test_int_chains.test_int03_corrupt_config_fail_safe` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step`, `10-src/firmware/components/config_mgr/src/config_mgr.c#config_mgr_load`, `10-src/firmware/components/config_mgr/src/config_mgr.c#config_mgr_store`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_power_up`, `10-src/firmware/components/mrtm_common/src/mrtm_crc.c#mrtm_crc32` |
| MRTM-SAF-018 | Two copies of every record | C (rigour 4) | `eventLog`, `eventLogApi`, `firmware.logService`, `historyRing` | `SP-07`, `test_event_log.test_error_code_full_after_32`, `test_event_log.test_flash_failure_does_not_loop`, `test_event_log.test_step_numbers_checksums_and_stores_every_queued_record`, `test_history_ring.test_append_writes_copy_a_and_copy_b`, `test_history_ring.test_corrupt_copy_a_is_read_from_copy_b`, `test_history_ring.test_error_codes_flash_arg` | verified | `10-src/firmware/components/event_log/src/event_log.c#event_log_step`, `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_append` |
| MRTM-SAF-019 | Stuck acknowledge button | C (rigour 4) | `ackLine`, `alarmMgr`, `alarmMgrApi`, `firmware.alarmService` | `SP-01`, `test_alarm_mgr.test_button_held_60_s_is_a_button_fault_and_ignored` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_button_debounced`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SAF-020 | Probe placement in the instructions | C (rigour 4) | none | `SP-14` | verified | — |
| MRTM-SAF-021 | I2C bus recovery | C (rigour 4) | `displayLink`, `displayMgr`, `displayMgrApi`, `firmware.displayService`, `screen` | `SP-09`, `test_display_mgr.test_i2c_timeout_resets_the_bus_within_1_s` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#recoverBus` |
| MRTM-SAF-022 | Clock stop detection | C (rigour 4) | `firmware.logService`, `hardware.rtc`, `rtc`, `rtcClock`, `rtcClockApi` | `SP-05`, `test_rtc_clock.test_error_codes_bus_and_arg`, `test_rtc_clock.test_oscillator_stop_at_power_up_logs_clock_fault` | verified | `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_power_up`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_init` |
| MRTM-SAF-023 | Backup alarm power-up test | C (rigour 4) | `diagnostics`, `diagnosticsApi`, `firmware.supervisor`, `hardware.backupAlarm`, `hardware.buzzerSenseLine` | `SP-05`, `test_diagnostics.test_backup_alarm_not_heard_fails_and_pulses_resume`, `test_diagnostics.test_power_up_tests_pass_inside_their_windows`, `test_wdt_kicker.test_hold_stops_pulses_and_release_resumes` | verified | `10-src/firmware/components/diagnostics/src/diagnostics.c#diagnostics_power_up` |
| MRTM-STK-001 | Alert on excursion | C (rigour 4) | `alarmManager`, `functions`, `monitor` | `SP-01` | verified | — |
| MRTM-STK-002 | No alert on brief door opening | C (rigour 4) | `excursionDetector` | `SP-01`, `test_alarm_mgr.test_early_alarm_is_red_1_hz_without_buzzer_then_escalates`, `test_limit_evaluator.test_back_in_band_clears_the_early_alarm`, `test_limit_evaluator.test_n_minus_one_out_then_one_in_does_not_confirm` | verified | — |
| MRTM-STK-003 | Silence the alert | C (rigour 4) | `alarmManager` | `SP-01` | verified | — |
| MRTM-STK-004 | See the temperature | C (rigour 4) | `greenLed`, `greenLine`, `statusDisplay` | `SP-09` | verified | — |
| MRTM-STK-005 | Audit history | C (rigour 4) | `eventLogger` | `SP-08` | verified | — |
| MRTM-STK-006 | History cannot be edited | C (rigour 4) | `historyServer` | `SP-08`, `test_usb_export.test_every_write_is_refused` | verified | — |
| MRTM-STK-007 | Probe failure is visible | C (rigour 4) | `probeSupervisor` | `SP-02` | verified | — |
| MRTM-STK-008 | Monitoring through a power cut | C (rigour 4) | `mainsFeed`, `powerSupervisor` | `SP-04` | verified | — |
| MRTM-SYS-001 | Sampling period | C (rigour 4) | `esp32`, `sampler`, `sensorSampler`, `sensorSamplerApi`, `sensorService` | `SP-01`, `SP-01-H`, `test_sensor_sampler.test_good_scratchpad_gives_a_valid_sample` | verified | `10-src/config/mrtm_config.h#off`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_read` |
| MRTM-SYS-002 | Excursion confirmation | C (rigour 4) | `excursionDetector`, `excursionService`, `limitEvaluator`, `limitEvaluatorApi` | `SP-01`, `SP-01-H`, `test_int_chains.test_int01_excursion_chain`, `test_limit_evaluator.test_invalid_sample_neither_counts_nor_resets`, `test_limit_evaluator.test_n_minus_one_out_then_one_in_does_not_confirm`, `test_limit_evaluator.test_nth_consecutive_out_sample_confirms` | verified | `10-src/config/mrtm_config.h#off`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step` |
| MRTM-SYS-003 | Buzzer on excursion | C (rigour 4) | `alarmManager`, `alarmMgr`, `alarmMgrApi`, `alarmService`, `buzzer`, `buzzerLine` | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_confirm_sounds_the_buzzer_and_flashes_red_at_2_hz`, `test_int_chains.test_int01_excursion_chain` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take` |
| MRTM-SYS-004 | Red indicator on excursion | C (rigour 4) | `alarmManager`, `alarmMgr`, `alarmMgrApi`, `redLed`, `redLine` | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_confirm_sounds_the_buzzer_and_flashes_red_at_2_hz` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SYS-005 | Warning on excursion | C (rigour 4) | `displayMgr`, `displayMgrApi`, `displayService`, `statusDisplay` | `SP-01`, `SP-01-H`, `test_display_mgr.test_excursion_warning_for_the_whole_excursion`, `test_int_chains.test_int01_excursion_chain` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/display_mgr/src/display_mgr.cpp#renderFrame`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_display_step` |
| MRTM-SYS-006 | Acknowledge silences buzzer | C (rigour 4) | `ackButton`, `alarmManager`, `alarmMgr`, `alarmMgrApi` | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_ack_stops_the_buzzer_in_the_same_step_and_logs` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_button_debounced`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_post`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take` |
| MRTM-SYS-007 | Warning stays while excursion is open | C (rigour 4) | `displayMgr`, `displayMgrApi`, `statusDisplay` | `SP-01`, `test_display_mgr.test_excursion_warning_for_the_whole_excursion` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw` |
| MRTM-SYS-008 | Log excursion start | C (rigour 4) | `eventLog`, `eventLogApi`, `eventLogger` | `SP-01`, `SP-01-H`, `test_event_log.test_time_stamp_is_the_utc_second_of_the_post`, `test_int_chains.test_int01_excursion_chain`, `test_usb_export.test_csv_lines_oldest_first_newest_last` | verified | `10-src/firmware/components/event_log/src/event_log.c#event_log_post`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now` |
| MRTM-SYS-009 | Log excursion end | C (rigour 4) | `eventLog`, `eventLogApi`, `eventLogger` | `SP-01`, `SP-01-H`, `test_event_log.test_end_record_carries_the_peak_in_tenths`, `test_limit_evaluator.test_peak_below_band_counts_distance_downwards`, `test_limit_evaluator.test_peak_is_the_most_extreme_sample` | verified | `10-src/firmware/components/event_log/src/event_log.c#event_log_post`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_peak`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step` |
| MRTM-SYS-010 | Log acknowledgement | C (rigour 4) | `eventLog`, `eventLogApi`, `eventLogger` | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_ack_stops_the_buzzer_in_the_same_step_and_logs`, `test_event_log.test_time_stamp_is_the_utc_second_of_the_post` | verified | `10-src/firmware/components/event_log/src/event_log.c#event_log_post`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now` |
| MRTM-SYS-011 | Display resolution | C (rigour 4) | `displayMgr`, `displayMgrApi`, `oled`, `screen`, `statusDisplay` | `SP-09`, `test_display_mgr.test_temperature_refreshes_every_10_s_in_tenths`, `test_sensor_sampler.test_conversion_rounds_to_a_tenth_and_adds_the_offset` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_to_tenths` |
| MRTM-SYS-012 | Probe fault detection | C (rigour 4) | `probeLink`, `probeSupervisor`, `sensorSampler`, `sensorSamplerApi` | `SP-02`, `test_mrtm_common.test_crc8_over_a_scratchpad`, `test_mrtm_common.test_crc_check_values`, `test_sensor_sampler.test_bad_crc_is_invalid_but_not_out_of_range`, `test_sensor_sampler.test_fault_after_30_s_without_a_correct_crc`, `test_sensor_sampler.test_fault_clears_on_the_next_valid_sample` | verified | `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step`, `10-src/firmware/components/mrtm_common/src/mrtm_crc.c#mrtm_crc8_maxim`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_probe_fault`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_read` |
| MRTM-SYS-013 | Probe fault message | C (rigour 4) | `displayMgr`, `displayMgrApi`, `statusDisplay` | `SP-02`, `test_display_mgr.test_probe_fault_message` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/display_mgr/src/display_mgr.cpp#renderFrame`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_display_step` |
| MRTM-SYS-014 | Read-only event log | C (rigour 4) | `historyServer`, `usbExport`, `usbExportApi` | `SP-08`, `test_usb_export.test_every_write_is_refused`, `test_usb_export.test_history_csv_is_marked_read_only` | verified | `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_init`, `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_write10` |
| MRTM-SYS-015 | Event log capacity | C (rigour 4) | `eventLogger`, `historyRing`, `historyRingApi`, `logService` | `SP-07`, `test_history_ring.test_init_finds_the_head_again_after_a_restart`, `test_history_ring.test_retains_10000_records_after_wrapping`, `test_history_ring.test_retains_10000_straight_after_an_erase_ahead`, `test_usb_export.test_full_history_fits_and_fat_chain_ends` | verified | `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_append`, `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_init`, `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_read` |
| MRTM-SYS-016 | Battery operation | C (rigour 4) | `mains`, `powerMon`, `powerMonApi`, `powerPath`, `powerSupervisor`, `supplyFeed` | `SP-04` | verified | — |
| MRTM-SYS-017 | Allowed band | C (rigour 4) | `excursionDetector`, `limitEvaluator`, `limitEvaluatorApi` | `SP-13`, `test_config_mgr.test_band_outside_2_to_8_is_refused`, `test_config_mgr.test_valid_record_loads_the_2_to_8_degree_band`, `test_limit_evaluator.test_band_edges_two_and_eight_degrees_are_inside` | verified | `10-src/firmware/components/config_mgr/src/config_mgr.c#config_mgr_load`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_init`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step` |
| MRTM-SYS-018 | Excursion end confirmation | C (rigour 4) | `excursionDetector`, `limitEvaluator`, `limitEvaluatorApi` | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_end_returns_to_quiet_from_sounding_and_silenced`, `test_limit_evaluator.test_hysteresis_knob_is_zero`, `test_limit_evaluator.test_nth_consecutive_in_sample_ends_excursion`, `test_limit_evaluator.test_out_sample_restarts_the_in_run` | verified | `10-src/config/mrtm_config.h#off`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step` |
| MRTM-SYS-019 | Alarm comes back after silence | C (rigour 4) | `alarmManager`, `alarmMgr`, `alarmMgrApi` | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_re_sounds_15_minutes_after_the_ack` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SYS-020 | Clock drift | C (rigour 4) | `clockLink`, `rtc`, `rtcClock`, `rtcClockApi`, `timekeeper` | `SP-12`, `test_rtc_clock.test_now_is_the_rtc_copy_refreshed_each_second` | verified | `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_tick` |
| MRTM-SYS-021 | Event log integrity | C (rigour 4) | `eventLogger`, `historyRing`, `historyRingApi`, `logService` | `SP-07`, `test_history_ring.test_both_copies_corrupt_reports_err_crc_and_logs_it`, `test_history_ring.test_corrupt_copy_a_is_read_from_copy_b`, `test_mrtm_common.test_crc_check_values`, `test_usb_export.test_unreadable_record_is_a_corrupt_line` | verified | `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_read`, `10-src/firmware/components/mrtm_common/src/mrtm_crc.c#mrtm_crc32` |
| MRTM-SYS-022 | Log capacity warning | C (rigour 4) | `displayMgr`, `displayMgrApi`, `historyRing`, `historyRingApi`, `logService`, `statusDisplay` | `SP-07`, `test_display_mgr.test_calibration_due_and_log_capacity_messages`, `test_history_ring.test_capacity_warning_once_at_9000` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_append`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step` |
| MRTM-SYS-023 | Power restore event | C (rigour 4) | `eventLog`, `eventLogApi`, `eventLogger` | `SP-04`, `test_event_log.test_time_stamp_is_the_utc_second_of_the_post`, `test_power_mon.test_mains_loss_and_restore_are_logged_from_the_edge` | verified | `10-src/firmware/components/event_log/src/event_log.c#event_log_post`, `10-src/firmware/components/power_mon/src/power_mon.c#power_mon_isr`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now` |
| MRTM-SYS-024 | Early excursion alarm | C (rigour 4) | `alarmManager`, `alarmMgr`, `excursionDetector`, `excursionService`, `limitEvaluator` | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_early_alarm_clears_back_to_quiet`, `test_alarm_mgr.test_early_alarm_is_red_1_hz_without_buzzer_then_escalates`, `test_limit_evaluator.test_back_in_band_clears_the_early_alarm`, `test_limit_evaluator.test_early_alarm_budget_fits_5_s`, `test_limit_evaluator.test_first_out_sample_raises_the_early_alarm` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step` |

#### Allocated items → Requirements (item to requirements)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| AckButton |  | not classified | none | — | n/a — allocated item | — |
| AlarmItem |  | not classified | none | — | n/a — allocated item | — |
| AlarmMgr |  | not classified | none | — | n/a — allocated item | — |
| AlarmTask |  | not classified | none | — | n/a — allocated item | — |
| BackupAlarm |  | not classified | none | — | n/a — allocated item | — |
| BannerWidget |  | not classified | none | — | n/a — allocated item | — |
| Battery |  | not classified | none | — | n/a — allocated item | — |
| Buzzer |  | not classified | none | — | n/a — allocated item | — |
| ChargerPowerPath |  | not classified | none | — | n/a — allocated item | — |
| ClinicManager |  | not classified | none | — | n/a — allocated item | — |
| ClinicSetting |  | not classified | none | — | n/a — allocated item | — |
| Component |  | not classified | none | — | n/a — allocated item | — |
| ConfigMgr |  | not classified | none | — | n/a — allocated item | — |
| Diagnostics |  | not classified | none | — | n/a — allocated item | — |
| DisplayItem |  | not classified | none | — | n/a — allocated item | — |
| DisplayMgr |  | not classified | none | — | n/a — allocated item | — |
| DisplayTask |  | not classified | none | — | n/a — allocated item | — |
| Ds18b20 |  | not classified | none | — | n/a — allocated item | — |
| Ds18b20Probe |  | not classified | none | — | n/a — allocated item | — |
| Esp32Module |  | not classified | none | — | n/a — allocated item | — |
| Esp32S3Module |  | not classified | none | — | n/a — allocated item | — |
| EventLog |  | not classified | none | — | n/a — allocated item | — |
| ExcursionItem |  | not classified | none | — | n/a — allocated item | — |
| FrameBuffer |  | not classified | none | — | n/a — allocated item | — |
| Fridge |  | not classified | none | — | n/a — allocated item | — |
| HistoryRingStore |  | not classified | none | — | n/a — allocated item | — |
| HoldUpCapacitor |  | not classified | none | — | n/a — allocated item | — |
| IconWidget |  | not classified | none | — | n/a — allocated item | — |
| IndicatorLed |  | not classified | none | — | n/a — allocated item | — |
| Led |  | not classified | none | — | n/a — allocated item | — |
| LiIonCell |  | not classified | none | — | n/a — allocated item | — |
| LimitEvaluator |  | not classified | none | — | n/a — allocated item | — |
| LogItem |  | not classified | none | — | n/a — allocated item | — |
| LogTask |  | not classified | none | — | n/a — allocated item | — |
| LogicalMonitor |  | not classified | none | — | n/a — allocated item | — |
| MainsSupply |  | not classified | none | — | n/a — allocated item | — |
| Monitor |  | not classified | none | — | n/a — allocated item | — |
| MonitoringFirmware |  | not classified | none | — | n/a — allocated item | — |
| MrtmBoard |  | not classified | none | — | n/a — allocated item | — |
| MrtmContext |  | not classified | none | — | n/a — allocated item | — |
| MrtmFirmware |  | not classified | none | — | n/a — allocated item | — |
| MrtmRiskControls |  | not classified | none | — | n/a — allocated item | — |
| MrtmSwDeployment |  | not classified | none | — | n/a — allocated item | — |
| MrtmSystem |  | not classified | none | — | n/a — allocated item | — |
| MrtmUnit |  | not classified | none | — | n/a — allocated item | — |
| MrtmUnitContracts |  | not classified | none | — | n/a — allocated item | — |
| Nurse |  | not classified | none | — | n/a — allocated item | — |
| Oled128x64 |  | not classified | none | — | n/a — allocated item | — |
| OledPanel |  | not classified | none | — | n/a — allocated item | — |
| PiezoBuzzerStage |  | not classified | none | — | n/a — allocated item | — |
| PowerItem |  | not classified | none | — | n/a — allocated item | — |
| PowerMon |  | not classified | none | — | n/a — allocated item | — |
| PowerPath |  | not classified | none | — | n/a — allocated item | — |
| QualityOfficer |  | not classified | none | — | n/a — allocated item | — |
| RtcChip |  | not classified | none | — | n/a — allocated item | — |
| RtcClock |  | not classified | none | — | n/a — allocated item | — |
| RtosTask |  | not classified | none | — | n/a — allocated item | — |
| Screen |  | not classified | none | — | n/a — allocated item | — |
| SensorItem |  | not classified | none | — | n/a — allocated item | — |
| SensorSampler |  | not classified | none | — | n/a — allocated item | — |
| SensorTask |  | not classified | none | — | n/a — allocated item | — |
| Ssd1306Driver |  | not classified | none | — | n/a — allocated item | — |
| Supercap |  | not classified | none | — | n/a — allocated item | — |
| SupervisorItem |  | not classified | none | — | n/a — allocated item | — |
| SupervisorTask |  | not classified | none | — | n/a — allocated item | — |
| TactileButton |  | not classified | none | — | n/a — allocated item | — |
| TcxoRtc |  | not classified | none | — | n/a — allocated item | — |
| Technician |  | not classified | none | — | n/a — allocated item | — |
| TextWidget |  | not classified | none | — | n/a — allocated item | — |
| UsbExport |  | not classified | none | — | n/a — allocated item | — |
| UsbHost |  | not classified | none | — | n/a — allocated item | — |
| UsbItem |  | not classified | none | — | n/a — allocated item | — |
| UsbTask |  | not classified | none | — | n/a — allocated item | — |
| WatchdogAlarmTimer |  | not classified | none | — | n/a — allocated item | — |
| WdtKicker |  | not classified | none | — | n/a — allocated item | — |
| Widget |  | not classified | none | — | n/a — allocated item | — |
| ackButton |  | not classified | `MRTM-SYS-006` | — | n/a — allocated item | — |
| ackLine |  | not classified | `MRTM-IFC-002`, `MRTM-SAF-019` | — | n/a — allocated item | — |
| airContact |  | not classified | `MRTM-ENV-004` | — | n/a — allocated item | — |
| alarm |  | not classified | none | — | n/a — allocated item | — |
| alarmItem |  | not classified | none | — | n/a — allocated item | — |
| alarmManager |  | not classified | `MRTM-PRF-002`, `MRTM-SAF-002`, `MRTM-STK-001`, `MRTM-STK-003`, `MRTM-SYS-003`, `MRTM-SYS-004`, `MRTM-SYS-006`, `MRTM-SYS-019`, `MRTM-SYS-024` | — | n/a — allocated item | — |
| alarmMgr |  | not classified | `MRTM-IFC-002`, `MRTM-PRF-002`, `MRTM-SAF-001`, `MRTM-SAF-002`, `MRTM-SAF-006`, `MRTM-SAF-008`, `MRTM-SAF-010`, `MRTM-SAF-011`, `MRTM-SAF-014`, `MRTM-SAF-015`, `MRTM-SAF-017`, `MRTM-SAF-019`, `MRTM-SYS-003`, `MRTM-SYS-004`, `MRTM-SYS-006`, `MRTM-SYS-019`, `MRTM-SYS-024` | — | n/a — allocated item | — |
| alarmMgrApi |  | not classified | `MRTM-IFC-002`, `MRTM-PRF-002`, `MRTM-SAF-001`, `MRTM-SAF-002`, `MRTM-SAF-006`, `MRTM-SAF-011`, `MRTM-SAF-014`, `MRTM-SAF-015`, `MRTM-SAF-019`, `MRTM-SYS-003`, `MRTM-SYS-004`, `MRTM-SYS-006`, `MRTM-SYS-019` | — | n/a — allocated item | — |
| alarmService |  | not classified | `MRTM-SYS-003` | — | n/a — allocated item | — |
| alarmTask |  | not classified | none | — | n/a — allocated item | — |
| backupAlarm |  | not classified | `MRTM-SAF-009` | — | n/a — allocated item | — |
| banner |  | not classified | none | — | n/a — allocated item | — |
| battery |  | not classified | `MRTM-ENV-001` | — | n/a — allocated item | — |
| batteryFeed |  | not classified | `MRTM-ENV-001` | — | n/a — allocated item | — |
| batterySenseLine |  | not classified | `MRTM-SAF-008` | — | n/a — allocated item | — |
| board |  | not classified | none | — | n/a — allocated item | — |
| buzzer |  | not classified | `MRTM-SAF-001`, `MRTM-SAF-014`, `MRTM-SYS-003` | — | n/a — allocated item | — |
| buzzerLine |  | not classified | `MRTM-SYS-003` | — | n/a — allocated item | — |
| clockLink |  | not classified | `MRTM-SYS-020` | — | n/a — allocated item | — |
| configMgr |  | not classified | `MRTM-SAF-017` | — | n/a — allocated item | — |
| configMgrApi |  | not classified | `MRTM-SAF-017` | — | n/a — allocated item | — |
| diagnostics |  | not classified | `MRTM-SAF-007`, `MRTM-SAF-023` | — | n/a — allocated item | — |
| diagnosticsApi |  | not classified | `MRTM-SAF-007`, `MRTM-SAF-023` | — | n/a — allocated item | — |
| display |  | not classified | none | — | n/a — allocated item | — |
| displayItem |  | not classified | none | — | n/a — allocated item | — |
| displayLink |  | not classified | `MRTM-IFC-004`, `MRTM-SAF-021` | — | n/a — allocated item | — |
| displayMgr |  | not classified | `MRTM-IFC-004`, `MRTM-MNT-002`, `MRTM-MNT-003`, `MRTM-PRF-004`, `MRTM-SAF-012`, `MRTM-SAF-016`, `MRTM-SAF-021`, `MRTM-SYS-005`, `MRTM-SYS-007`, `MRTM-SYS-011`, `MRTM-SYS-013`, `MRTM-SYS-022` | — | n/a — allocated item | — |
| displayMgrApi |  | not classified | `MRTM-IFC-004`, `MRTM-PRF-004`, `MRTM-SAF-012`, `MRTM-SAF-016`, `MRTM-SAF-021`, `MRTM-SYS-005`, `MRTM-SYS-007`, `MRTM-SYS-011`, `MRTM-SYS-013`, `MRTM-SYS-022` | — | n/a — allocated item | — |
| displayService |  | not classified | `MRTM-SYS-005` | — | n/a — allocated item | — |
| displayTask |  | not classified | none | — | n/a — allocated item | — |
| driver |  | not classified | none | — | n/a — allocated item | — |
| esp32 |  | not classified | `MRTM-ENV-002`, `MRTM-IFC-003`, `MRTM-SYS-001` | — | n/a — allocated item | — |
| evaluator |  | not classified | none | — | n/a — allocated item | — |
| eventLog |  | not classified | `MRTM-SAF-018`, `MRTM-SYS-008`, `MRTM-SYS-009`, `MRTM-SYS-010`, `MRTM-SYS-023` | — | n/a — allocated item | — |
| eventLogApi |  | not classified | `MRTM-SAF-018`, `MRTM-SYS-008`, `MRTM-SYS-009`, `MRTM-SYS-010`, `MRTM-SYS-023` | — | n/a — allocated item | — |
| eventLogger |  | not classified | `MRTM-SAF-005`, `MRTM-STK-005`, `MRTM-SYS-008`, `MRTM-SYS-009`, `MRTM-SYS-010`, `MRTM-SYS-015`, `MRTM-SYS-021`, `MRTM-SYS-023` | — | n/a — allocated item | — |
| excursionDetector |  | not classified | `MRTM-STK-002`, `MRTM-SYS-002`, `MRTM-SYS-017`, `MRTM-SYS-018`, `MRTM-SYS-024` | — | n/a — allocated item | — |
| excursionItem |  | not classified | none | — | n/a — allocated item | — |
| excursionService |  | not classified | `MRTM-SYS-002`, `MRTM-SYS-024` | — | n/a — allocated item | — |
| faultAlarm |  | not classified | none | — | n/a — allocated item | — |
| faultBuzzer |  | not classified | none | — | n/a — allocated item | — |
| faultDisplay |  | not classified | none | — | n/a — allocated item | — |
| faultLogger |  | not classified | none | — | n/a — allocated item | — |
| faultProbe |  | not classified | none | — | n/a — allocated item | — |
| faultSampler |  | not classified | none | — | n/a — allocated item | — |
| fb |  | not classified | none | — | n/a — allocated item | — |
| firmware |  | not classified | `MRTM-SAF-004`, `MRTM-SAF-006` | — | n/a — allocated item | — |
| firmware.alarmService |  | not classified | `MRTM-SAF-002`, `MRTM-SAF-006`, `MRTM-SAF-010`, `MRTM-SAF-011`, `MRTM-SAF-014`, `MRTM-SAF-015`, `MRTM-SAF-019` | — | n/a — unresolved reference | — |
| firmware.displayService |  | not classified | `MRTM-SAF-012`, `MRTM-SAF-016`, `MRTM-SAF-021` | — | n/a — unresolved reference | — |
| firmware.logService |  | not classified | `MRTM-SAF-005`, `MRTM-SAF-018`, `MRTM-SAF-022` | — | n/a — unresolved reference | — |
| firmware.sensorService |  | not classified | `MRTM-SAF-003` | — | n/a — unresolved reference | — |
| firmware.supervisor |  | not classified | `MRTM-SAF-007`, `MRTM-SAF-010`, `MRTM-SAF-017`, `MRTM-SAF-023` | — | n/a — unresolved reference | — |
| fridge |  | not classified | `MRTM-ENV-004` | — | n/a — allocated item | — |
| functions |  | not classified | `MRTM-STK-001` | — | n/a — allocated item | — |
| greenLed |  | not classified | `MRTM-STK-004` | — | n/a — allocated item | — |
| greenLine |  | not classified | `MRTM-STK-004` | — | n/a — allocated item | — |
| hardware |  | not classified | `MRTM-ENV-002`, `MRTM-ENV-003` | — | n/a — allocated item | — |
| hardware.backupAlarm |  | not classified | `MRTM-SAF-009`, `MRTM-SAF-013`, `MRTM-SAF-023` | — | n/a — unresolved reference | — |
| hardware.backupBuzzerLine |  | not classified | `MRTM-SAF-009` | — | n/a — unresolved reference | — |
| hardware.buzzerSenseLine |  | not classified | `MRTM-SAF-014`, `MRTM-SAF-023` | — | n/a — unresolved reference | — |
| hardware.holdUpCap |  | not classified | `MRTM-SAF-013` | — | n/a — unresolved reference | — |
| hardware.redLine |  | not classified | `MRTM-SAF-015` | — | n/a — unresolved reference | — |
| hardware.rtc |  | not classified | `MRTM-SAF-022` | — | n/a — unresolved reference | — |
| hardware.wdtKickLine |  | not classified | `MRTM-SAF-009` | — | n/a — unresolved reference | — |
| historyLink |  | not classified | `MRTM-IFC-003`, `MRTM-PRF-003` | — | n/a — allocated item | — |
| historyRing |  | not classified | `MRTM-SAF-018`, `MRTM-SYS-015`, `MRTM-SYS-021`, `MRTM-SYS-022` | — | n/a — allocated item | — |
| historyRingApi |  | not classified | `MRTM-SYS-015`, `MRTM-SYS-021`, `MRTM-SYS-022` | — | n/a — allocated item | — |
| historyServer |  | not classified | `MRTM-PRF-003`, `MRTM-STK-006`, `MRTM-SYS-014` | — | n/a — allocated item | — |
| holdUpCap |  | not classified | `MRTM-SAF-013` | — | n/a — allocated item | — |
| icon |  | not classified | none | — | n/a — allocated item | — |
| limitEvaluator |  | not classified | `MRTM-SYS-002`, `MRTM-SYS-017`, `MRTM-SYS-018`, `MRTM-SYS-024` | — | n/a — allocated item | — |
| limitEvaluatorApi |  | not classified | `MRTM-SYS-002`, `MRTM-SYS-017`, `MRTM-SYS-018` | — | n/a — allocated item | — |
| logItem |  | not classified | none | — | n/a — allocated item | — |
| logService |  | not classified | `MRTM-SYS-015`, `MRTM-SYS-021`, `MRTM-SYS-022` | — | n/a — allocated item | — |
| logTask |  | not classified | none | — | n/a — allocated item | — |
| logger |  | not classified | none | — | n/a — allocated item | — |
| mains |  | not classified | `MRTM-SAF-005`, `MRTM-SYS-016` | — | n/a — allocated item | — |
| mainsFeed |  | not classified | `MRTM-STK-008` | — | n/a — allocated item | — |
| mainsSenseLine |  | not classified | `MRTM-SAF-005` | — | n/a — allocated item | — |
| monitor |  | not classified | `MRTM-STK-001` | — | n/a — allocated item | — |
| nurse |  | not classified | none | — | n/a — allocated item | — |
| oled |  | not classified | `MRTM-IFC-004`, `MRTM-SYS-011` | — | n/a — allocated item | — |
| powerClock |  | not classified | none | — | n/a — allocated item | — |
| powerItem |  | not classified | none | — | n/a — allocated item | — |
| powerLogger |  | not classified | none | — | n/a — allocated item | — |
| powerMon |  | not classified | `MRTM-SAF-005`, `MRTM-SAF-008`, `MRTM-SYS-016` | — | n/a — allocated item | — |
| powerMonApi |  | not classified | `MRTM-SAF-005`, `MRTM-SAF-008`, `MRTM-SYS-016` | — | n/a — allocated item | — |
| powerPath |  | not classified | `MRTM-SYS-016` | — | n/a — allocated item | — |
| powerRing |  | not classified | none | — | n/a — allocated item | — |
| powerService |  | not classified | `MRTM-SAF-008` | — | n/a — allocated item | — |
| powerSupervisor |  | not classified | `MRTM-SAF-008`, `MRTM-STK-008`, `MRTM-SYS-016` | — | n/a — allocated item | — |
| probe |  | not classified | `MRTM-ENV-004`, `MRTM-IFC-001`, `MRTM-MNT-001`, `MRTM-PRF-001` | — | n/a — allocated item | — |
| probeLink |  | not classified | `MRTM-IFC-001`, `MRTM-SYS-012` | — | n/a — allocated item | — |
| probeSupervisor |  | not classified | `MRTM-SAF-003`, `MRTM-STK-007`, `MRTM-SYS-012` | — | n/a — allocated item | — |
| redLed |  | not classified | `MRTM-SAF-015`, `MRTM-SYS-004` | — | n/a — allocated item | — |
| redLine |  | not classified | `MRTM-SYS-004` | — | n/a — allocated item | — |
| rtc |  | not classified | `MRTM-SAF-022`, `MRTM-SYS-020` | — | n/a — allocated item | — |
| rtcClock |  | not classified | `MRTM-SAF-022`, `MRTM-SYS-020` | — | n/a — allocated item | — |
| rtcClockApi |  | not classified | `MRTM-SAF-022`, `MRTM-SYS-020` | — | n/a — allocated item | — |
| sampler |  | not classified | `MRTM-PRF-001`, `MRTM-SYS-001` | — | n/a — allocated item | — |
| screen |  | not classified | `MRTM-IFC-004`, `MRTM-SAF-021`, `MRTM-SYS-011` | — | n/a — allocated item | — |
| selfTest |  | not classified | `MRTM-MNT-003`, `MRTM-SAF-007` | — | n/a — allocated item | — |
| sensorItem |  | not classified | none | — | n/a — allocated item | — |
| sensorSampler |  | not classified | `MRTM-IFC-001`, `MRTM-PRF-001`, `MRTM-SAF-003`, `MRTM-SYS-001`, `MRTM-SYS-012` | — | n/a — allocated item | — |
| sensorSamplerApi |  | not classified | `MRTM-IFC-001`, `MRTM-PRF-001`, `MRTM-SAF-003`, `MRTM-SYS-001`, `MRTM-SYS-012` | — | n/a — allocated item | — |
| sensorService |  | not classified | `MRTM-SYS-001` | — | n/a — allocated item | — |
| sensorTask |  | not classified | none | — | n/a — allocated item | — |
| statusDisplay |  | not classified | `MRTM-MNT-002`, `MRTM-PRF-004`, `MRTM-STK-004`, `MRTM-SYS-005`, `MRTM-SYS-007`, `MRTM-SYS-011`, `MRTM-SYS-013`, `MRTM-SYS-022` | — | n/a — allocated item | — |
| supervisor |  | not classified | `MRTM-SAF-004` | — | n/a — allocated item | — |
| supervisorItem |  | not classified | none | — | n/a — allocated item | — |
| supervisorTask |  | not classified | none | — | n/a — allocated item | — |
| supplyFeed |  | not classified | `MRTM-SYS-016` | — | n/a — allocated item | — |
| technician |  | not classified | none | — | n/a — allocated item | — |
| temperature |  | not classified | none | — | n/a — allocated item | — |
| timekeeper |  | not classified | `MRTM-SYS-020` | — | n/a — allocated item | — |
| usb |  | not classified | `MRTM-IFC-003` | — | n/a — unresolved reference | — |
| usbExport |  | not classified | `MRTM-IFC-003`, `MRTM-PRF-003`, `MRTM-SYS-014` | — | n/a — allocated item | — |
| usbExportApi |  | not classified | `MRTM-IFC-003`, `MRTM-PRF-003`, `MRTM-SYS-014` | — | n/a — allocated item | — |
| usbHost |  | not classified | `MRTM-IFC-003` | — | n/a — allocated item | — |
| usbItem |  | not classified | none | — | n/a — allocated item | — |
| usbService |  | not classified | `MRTM-IFC-003` | — | n/a — allocated item | — |
| usbTask |  | not classified | none | — | n/a — allocated item | — |
| watchdog |  | not classified | `MRTM-SAF-004`, `MRTM-SAF-006` | — | n/a — allocated item | — |
| wdtKicker |  | not classified | `MRTM-SAF-004`, `MRTM-SAF-009`, `MRTM-SAF-010` | — | n/a — allocated item | — |
| wdtKickerApi |  | not classified | `MRTM-SAF-004`, `MRTM-SAF-009`, `MRTM-SAF-010` | — | n/a — allocated item | — |

## Derived requirements

**Objective:** DO-178C Table A-2 objectives 2 and 5, *derived requirements are defined and provided to the system processes, including the system safety assessment process* (§5.1.2).

Every requirement this repository marks derived, with the argument for it. A derived requirement is one no higher-level requirement demands, so nothing above it justifies it: each has to be identified, and the argument for it has to reach the system processes — the system safety assessment among them. Those are this table's last two columns. The justification is the requirement's own recorded rationale, printed verbatim — where none is recorded the row says so and names the finding, and the report does not argue the exemption for the author (rule 4).

**Count:** 0

No requirement in this repository is marked derived.

## Traceability deficiencies

**Objective:** DO-178C §11.17, a problem report records *deficiencies in software life cycle data* — here the trace data of §5.5, read against Table A-3 objective 6.

Every traceability defect the analysis raised over this commit, one row each: the kind of defect, the requirement it is about, the other end of the link where the defect names one, the level that requirement belongs to, the severity THIS repository staged for that kind, and the finding in the words the engineer sees. Nothing here is recomputed for the report — these are the findings themselves, so the table and the editor cannot disagree (rule 4).

**Count:** 0

None found.

## Declared gaps

Every gap class below is present even when empty — "no gaps" is a count of zero, never a missing section (rule 4).

### Orphans — requirements tracing up to nothing

**Count:** 0

No orphans.

### Childless — an approved requirement nothing traces up to

Where the repository declares a hierarchy, an approved requirement with no child is a gap in downward trace.

**Count:** 0

No childless approved requirements.

### Unverified — requirements with no verifying case

**Count:** 0

No unverified requirements.

### Derived / exempted — requirements a declaration waived from the orphan rule

**Count:** 0

No derived exemptions.

