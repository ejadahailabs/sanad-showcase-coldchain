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
  - [Environmental Requirement ⇄ Hardware item requirement](#environmental-requirement--hardware-item-requirement)
    - [Environmental Requirement → Hardware item requirement (parent to children)](#environmental-requirement--hardware-item-requirement-parent-to-children)
    - [Hardware item requirement → Environmental Requirement (child to parents)](#hardware-item-requirement--environmental-requirement-child-to-parents)
  - [Interface Requirement ⇄ Hardware item requirement](#interface-requirement--hardware-item-requirement)
    - [Interface Requirement → Hardware item requirement (parent to children)](#interface-requirement--hardware-item-requirement-parent-to-children)
    - [Hardware item requirement → Interface Requirement (child to parents)](#hardware-item-requirement--interface-requirement-child-to-parents)
  - [Performance Requirement ⇄ Hardware item requirement](#performance-requirement--hardware-item-requirement)
    - [Performance Requirement → Hardware item requirement (parent to children)](#performance-requirement--hardware-item-requirement-parent-to-children)
    - [Hardware item requirement → Performance Requirement (child to parents)](#hardware-item-requirement--performance-requirement-child-to-parents)
  - [Safety Requirement ⇄ Hardware item requirement](#safety-requirement--hardware-item-requirement)
    - [Safety Requirement → Hardware item requirement (parent to children)](#safety-requirement--hardware-item-requirement-parent-to-children)
    - [Hardware item requirement → Safety Requirement (child to parents)](#hardware-item-requirement--safety-requirement-child-to-parents)
  - [System Requirement ⇄ Hardware item requirement](#system-requirement--hardware-item-requirement)
    - [System Requirement → Hardware item requirement (parent to children)](#system-requirement--hardware-item-requirement-parent-to-children)
    - [Hardware item requirement → System Requirement (child to parents)](#hardware-item-requirement--system-requirement-child-to-parents)
  - [Interface Requirement ⇄ Software system requirement](#interface-requirement--software-system-requirement)
    - [Interface Requirement → Software system requirement (parent to children)](#interface-requirement--software-system-requirement-parent-to-children)
    - [Software system requirement → Interface Requirement (child to parents)](#software-system-requirement--interface-requirement-child-to-parents)
  - [Performance Requirement ⇄ Software system requirement](#performance-requirement--software-system-requirement)
    - [Performance Requirement → Software system requirement (parent to children)](#performance-requirement--software-system-requirement-parent-to-children)
    - [Software system requirement → Performance Requirement (child to parents)](#software-system-requirement--performance-requirement-child-to-parents)
  - [Safety Requirement ⇄ Software system requirement](#safety-requirement--software-system-requirement)
    - [Safety Requirement → Software system requirement (parent to children)](#safety-requirement--software-system-requirement-parent-to-children)
    - [Software system requirement → Safety Requirement (child to parents)](#software-system-requirement--safety-requirement-child-to-parents)
  - [System Requirement ⇄ Software system requirement](#system-requirement--software-system-requirement)
    - [System Requirement → Software system requirement (parent to children)](#system-requirement--software-system-requirement-parent-to-children)
    - [Software system requirement → System Requirement (child to parents)](#software-system-requirement--system-requirement-child-to-parents)
  - [Software system requirement ⇄ Sensor item requirement](#software-system-requirement--sensor-item-requirement)
    - [Software system requirement → Sensor item requirement (parent to children)](#software-system-requirement--sensor-item-requirement-parent-to-children)
    - [Sensor item requirement → Software system requirement (child to parents)](#sensor-item-requirement--software-system-requirement-child-to-parents)
  - [Software system requirement ⇄ Excursion item requirement](#software-system-requirement--excursion-item-requirement)
    - [Software system requirement → Excursion item requirement (parent to children)](#software-system-requirement--excursion-item-requirement-parent-to-children)
    - [Excursion item requirement → Software system requirement (child to parents)](#excursion-item-requirement--software-system-requirement-child-to-parents)
  - [Software system requirement ⇄ Alarm item requirement](#software-system-requirement--alarm-item-requirement)
    - [Software system requirement → Alarm item requirement (parent to children)](#software-system-requirement--alarm-item-requirement-parent-to-children)
    - [Alarm item requirement → Software system requirement (child to parents)](#alarm-item-requirement--software-system-requirement-child-to-parents)
  - [Software system requirement ⇄ Display item requirement](#software-system-requirement--display-item-requirement)
    - [Software system requirement → Display item requirement (parent to children)](#software-system-requirement--display-item-requirement-parent-to-children)
    - [Display item requirement → Software system requirement (child to parents)](#display-item-requirement--software-system-requirement-child-to-parents)
  - [Software system requirement ⇄ Log item requirement](#software-system-requirement--log-item-requirement)
    - [Software system requirement → Log item requirement (parent to children)](#software-system-requirement--log-item-requirement-parent-to-children)
    - [Log item requirement → Software system requirement (child to parents)](#log-item-requirement--software-system-requirement-child-to-parents)
  - [Software system requirement ⇄ Usb item requirement](#software-system-requirement--usb-item-requirement)
    - [Software system requirement → Usb item requirement (parent to children)](#software-system-requirement--usb-item-requirement-parent-to-children)
    - [Usb item requirement → Software system requirement (child to parents)](#usb-item-requirement--software-system-requirement-child-to-parents)
  - [Software system requirement ⇄ Power item requirement](#software-system-requirement--power-item-requirement)
    - [Software system requirement → Power item requirement (parent to children)](#software-system-requirement--power-item-requirement-parent-to-children)
    - [Power item requirement → Software system requirement (child to parents)](#power-item-requirement--software-system-requirement-child-to-parents)
  - [Software system requirement ⇄ Supervisor item requirement](#software-system-requirement--supervisor-item-requirement)
    - [Software system requirement → Supervisor item requirement (parent to children)](#software-system-requirement--supervisor-item-requirement-parent-to-children)
    - [Supervisor item requirement → Software system requirement (child to parents)](#supervisor-item-requirement--software-system-requirement-child-to-parents)
  - [Sensor item requirement ⇄ Sensor sampler requirement](#sensor-item-requirement--sensor-sampler-requirement)
    - [Sensor item requirement → Sensor sampler requirement (parent to children)](#sensor-item-requirement--sensor-sampler-requirement-parent-to-children)
    - [Sensor sampler requirement → Sensor item requirement (child to parents)](#sensor-sampler-requirement--sensor-item-requirement-child-to-parents)
  - [Excursion item requirement ⇄ Limit evaluator requirement](#excursion-item-requirement--limit-evaluator-requirement)
    - [Excursion item requirement → Limit evaluator requirement (parent to children)](#excursion-item-requirement--limit-evaluator-requirement-parent-to-children)
    - [Limit evaluator requirement → Excursion item requirement (child to parents)](#limit-evaluator-requirement--excursion-item-requirement-child-to-parents)
  - [Alarm item requirement ⇄ Alarm mgr requirement](#alarm-item-requirement--alarm-mgr-requirement)
    - [Alarm item requirement → Alarm mgr requirement (parent to children)](#alarm-item-requirement--alarm-mgr-requirement-parent-to-children)
    - [Alarm mgr requirement → Alarm item requirement (child to parents)](#alarm-mgr-requirement--alarm-item-requirement-child-to-parents)
  - [Display item requirement ⇄ Display mgr requirement](#display-item-requirement--display-mgr-requirement)
    - [Display item requirement → Display mgr requirement (parent to children)](#display-item-requirement--display-mgr-requirement-parent-to-children)
    - [Display mgr requirement → Display item requirement (child to parents)](#display-mgr-requirement--display-item-requirement-child-to-parents)
  - [Log item requirement ⇄ Event log requirement](#log-item-requirement--event-log-requirement)
    - [Log item requirement → Event log requirement (parent to children)](#log-item-requirement--event-log-requirement-parent-to-children)
    - [Event log requirement → Log item requirement (child to parents)](#event-log-requirement--log-item-requirement-child-to-parents)
  - [Log item requirement ⇄ History ring requirement](#log-item-requirement--history-ring-requirement)
    - [Log item requirement → History ring requirement (parent to children)](#log-item-requirement--history-ring-requirement-parent-to-children)
    - [History ring requirement → Log item requirement (child to parents)](#history-ring-requirement--log-item-requirement-child-to-parents)
  - [Log item requirement ⇄ Rtc clock requirement](#log-item-requirement--rtc-clock-requirement)
    - [Log item requirement → Rtc clock requirement (parent to children)](#log-item-requirement--rtc-clock-requirement-parent-to-children)
    - [Rtc clock requirement → Log item requirement (child to parents)](#rtc-clock-requirement--log-item-requirement-child-to-parents)
  - [Usb item requirement ⇄ Usb export requirement](#usb-item-requirement--usb-export-requirement)
    - [Usb item requirement → Usb export requirement (parent to children)](#usb-item-requirement--usb-export-requirement-parent-to-children)
    - [Usb export requirement → Usb item requirement (child to parents)](#usb-export-requirement--usb-item-requirement-child-to-parents)
  - [Power item requirement ⇄ Power mon requirement](#power-item-requirement--power-mon-requirement)
    - [Power item requirement → Power mon requirement (parent to children)](#power-item-requirement--power-mon-requirement-parent-to-children)
    - [Power mon requirement → Power item requirement (child to parents)](#power-mon-requirement--power-item-requirement-child-to-parents)
  - [Supervisor item requirement ⇄ Wdt kicker requirement](#supervisor-item-requirement--wdt-kicker-requirement)
    - [Supervisor item requirement → Wdt kicker requirement (parent to children)](#supervisor-item-requirement--wdt-kicker-requirement-parent-to-children)
    - [Wdt kicker requirement → Supervisor item requirement (child to parents)](#wdt-kicker-requirement--supervisor-item-requirement-child-to-parents)
  - [Supervisor item requirement ⇄ Diagnostics requirement](#supervisor-item-requirement--diagnostics-requirement)
    - [Supervisor item requirement → Diagnostics requirement (parent to children)](#supervisor-item-requirement--diagnostics-requirement-parent-to-children)
    - [Diagnostics requirement → Supervisor item requirement (child to parents)](#diagnostics-requirement--supervisor-item-requirement-child-to-parents)
  - [Supervisor item requirement ⇄ Config mgr requirement](#supervisor-item-requirement--config-mgr-requirement)
    - [Supervisor item requirement → Config mgr requirement (parent to children)](#supervisor-item-requirement--config-mgr-requirement-parent-to-children)
    - [Config mgr requirement → Supervisor item requirement (child to parents)](#config-mgr-requirement--supervisor-item-requirement-child-to-parents)
  - [Requirements ⇄ Allocated items](#requirements--allocated-items)
    - [Requirements → Allocated items (requirement to allocated item)](#requirements--allocated-items-requirement-to-allocated-item)
    - [Allocated items → Requirements (item to requirements)](#allocated-items--requirements-item-to-requirements)
- [Derived requirements](#derived-requirements)
- [Traceability deficiencies](#traceability-deficiencies)
- [Trace changes since baseline "REQ-BL-M1"](#trace-changes-since-baseline-req-bl-m1)
- [Declared gaps](#declared-gaps)
  - [Orphans — requirements tracing up to nothing](#orphans--requirements-tracing-up-to-nothing)
  - [Childless — an approved requirement nothing traces up to](#childless--an-approved-requirement-nothing-traces-up-to)
  - [Unverified — requirements with no verifying case](#unverified--requirements-with-no-verifying-case)
  - [Derived / exempted — requirements a declaration waived from the orphan rule](#derived--exempted--requirements-a-declaration-waived-from-the-orphan-rule)

## Configuration identity and completeness

**Mode:** Engineering — generated on a workstation, outside the certification recipe; this report carries no certification credit.

**Generated from commit:** `defc6cd5b1f086a9501eb7a3da1721d9c74bdc21`

**Tool version:** `sanad 0.6.3`

**Inputs:** `146 requirements`, `symbol index`, `architecture inventory`, `glossary`, `data dictionary`, `verification cases`

This report regenerates byte-identically from the same commit with the same tool version and inputs — it names no clock and reads nothing outside those inputs, so any second run that differs is evidence something changed, not that the report drifted.

**Rule pack:** `requirements-writing`

**Analyses that ran:** `validation`, `traceability`, `quality`, `structure`, `verification`, `implementation`, `safety`, `architecture`, `consistency`, `conformance`, `impact`

**Analyses that did not run:**

- `interface` — did not run: no template in this repository declares the role `interface`. It produced no findings, and that silence is not a clean result.
- `security` — did not run: no template in this repository declares the role `threat`. It produced no findings, and that silence is not a clean result.

**Criticality levels present:** `B`, `C`

## Trace legs required by criticality band

The resolved band decides which trace legs are *mandatory*; a leg a band does not require is shown as one that did not run, never dropped (rule 4). Policy is resolved once at load — this table renders that result, it does not compute it (rule 11).

| Band (rigour) | Native level(s) | Requirements | Mandatory legs | Did not run at this level |
|---|---|---|---|---|
| rigour 2 | `B` | 4 | none | trace up (uplink), verification, implementation (code) |
| rigour 4 | `C` | 142 | none | trace up (uplink), verification, implementation (code) |

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

### Environmental Requirement ⇄ Hardware item requirement

#### Environmental Requirement → Hardware item requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-ENV-001 | Battery endurance | C (rigour 4) | `MRTM-HWI-012` | `SP-04` | verified | — |
| MRTM-ENV-002 | Ambient temperature | C (rigour 4) | none | `SP-11` | verified | — |
| MRTM-ENV-003 | Humidity | C (rigour 4) | none | `SP-11` | verified | — |
| MRTM-ENV-004 | Probe environment | C (rigour 4) | `MRTM-HWI-002` | `SP-10` | verified | — |

#### Hardware item requirement → Environmental Requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-HWI-001 | Probe conversion time | C (rigour 4) | none | `SP-10`, `test_limit_evaluator.test_early_alarm_budget_fits_5_s` | verified | — |
| MRTM-HWI-002 | Probe accuracy | C (rigour 4) | `MRTM-ENV-004` | `SP-10` | verified | — |
| MRTM-HWI-003 | Probe scratchpad check | C (rigour 4) | none | `SP-10` | verified | — |
| MRTM-HWI-004 | Buzzer loudness | C (rigour 4) | none | `SP-06` | verified | — |
| MRTM-HWI-005 | Red indicator response | C (rigour 4) | none | `SP-01` | verified | — |
| MRTM-HWI-006 | Acknowledge contact | C (rigour 4) | none | `SP-01` | verified | — |
| MRTM-HWI-007 | Backup alarm timeout | C (rigour 4) | none | `SP-03`, `test_int_chains.test_int02_watchdog_chain` | verified | — |
| MRTM-HWI-008 | Backup alarm hold-up | C (rigour 4) | none | `SP-03` | verified | — |
| MRTM-HWI-009 | Display digit height | C (rigour 4) | none | `SP-09` | verified | — |
| MRTM-HWI-010 | Clock drift | C (rigour 4) | none | `SP-12` | verified | — |
| MRTM-HWI-011 | Power path switch-over | C (rigour 4) | none | `SP-04` | verified | — |
| MRTM-HWI-012 | Battery endurance | C (rigour 4) | `MRTM-ENV-001` | `SP-04` | verified | — |
| MRTM-HWI-013 | Processor watchdog reset | C (rigour 4) | none | `SP-03` | verified | — |

### Interface Requirement ⇄ Hardware item requirement

#### Interface Requirement → Hardware item requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-IFC-001 | Probe bus | C (rigour 4) | none | `SP-10`, `test_sensor_sampler.test_error_codes_arg_and_bus`, `test_sensor_sampler.test_good_scratchpad_gives_a_valid_sample` | verified | `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_init`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_read` |
| MRTM-IFC-002 | Acknowledge input | C (rigour 4) | `MRTM-HWI-006` | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_button_debounce_50_ms` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_button_debounced`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_button_isr` |
| MRTM-IFC-003 | USB readout | C (rigour 4) | none | `SP-08`, `test_usb_export.test_boot_sector_is_a_fat12_volume`, `test_usb_export.test_csv_lines_oldest_first_newest_last`, `test_usb_export.test_every_write_is_refused`, `test_usb_export.test_history_csv_is_marked_read_only` | verified | `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_init`, `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_read10`, `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_write10` |
| MRTM-IFC-004 | Display character height | C (rigour 4) | `MRTM-HWI-009` | `SP-09` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw` |

#### Hardware item requirement → Interface Requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-HWI-001 | Probe conversion time | C (rigour 4) | none | `SP-10`, `test_limit_evaluator.test_early_alarm_budget_fits_5_s` | verified | — |
| MRTM-HWI-002 | Probe accuracy | C (rigour 4) | none | `SP-10` | verified | — |
| MRTM-HWI-003 | Probe scratchpad check | C (rigour 4) | none | `SP-10` | verified | — |
| MRTM-HWI-004 | Buzzer loudness | C (rigour 4) | none | `SP-06` | verified | — |
| MRTM-HWI-005 | Red indicator response | C (rigour 4) | none | `SP-01` | verified | — |
| MRTM-HWI-006 | Acknowledge contact | C (rigour 4) | `MRTM-IFC-002` | `SP-01` | verified | — |
| MRTM-HWI-007 | Backup alarm timeout | C (rigour 4) | none | `SP-03`, `test_int_chains.test_int02_watchdog_chain` | verified | — |
| MRTM-HWI-008 | Backup alarm hold-up | C (rigour 4) | none | `SP-03` | verified | — |
| MRTM-HWI-009 | Display digit height | C (rigour 4) | `MRTM-IFC-004` | `SP-09` | verified | — |
| MRTM-HWI-010 | Clock drift | C (rigour 4) | none | `SP-12` | verified | — |
| MRTM-HWI-011 | Power path switch-over | C (rigour 4) | none | `SP-04` | verified | — |
| MRTM-HWI-012 | Battery endurance | C (rigour 4) | none | `SP-04` | verified | — |
| MRTM-HWI-013 | Processor watchdog reset | C (rigour 4) | none | `SP-03` | verified | — |

### Performance Requirement ⇄ Hardware item requirement

#### Performance Requirement → Hardware item requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-PRF-001 | Measurement accuracy | C (rigour 4) | `MRTM-HWI-002` | `SP-10`, `test_sensor_sampler.test_conversion_rounds_to_a_tenth_and_adds_the_offset` | verified | `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_to_tenths` |
| MRTM-PRF-002 | End-to-end alert time | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_int_chains.test_int01_excursion_chain` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-PRF-003 | Log readout time | C (rigour 4) | none | `SP-08`, `test_usb_export.test_full_history_fits_and_fat_chain_ends` | verified | `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_read10` |
| MRTM-PRF-004 | Display refresh | C (rigour 4) | none | `SP-09`, `test_display_mgr.test_temperature_refreshes_every_10_s_in_tenths` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#display_mgr_tick`, `10-src/firmware/components/display_mgr/src/display_mgr.cpp#renderFrame` |

#### Hardware item requirement → Performance Requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-HWI-001 | Probe conversion time | C (rigour 4) | none | `SP-10`, `test_limit_evaluator.test_early_alarm_budget_fits_5_s` | verified | — |
| MRTM-HWI-002 | Probe accuracy | C (rigour 4) | `MRTM-PRF-001` | `SP-10` | verified | — |
| MRTM-HWI-003 | Probe scratchpad check | C (rigour 4) | none | `SP-10` | verified | — |
| MRTM-HWI-004 | Buzzer loudness | C (rigour 4) | none | `SP-06` | verified | — |
| MRTM-HWI-005 | Red indicator response | C (rigour 4) | none | `SP-01` | verified | — |
| MRTM-HWI-006 | Acknowledge contact | C (rigour 4) | none | `SP-01` | verified | — |
| MRTM-HWI-007 | Backup alarm timeout | C (rigour 4) | none | `SP-03`, `test_int_chains.test_int02_watchdog_chain` | verified | — |
| MRTM-HWI-008 | Backup alarm hold-up | C (rigour 4) | none | `SP-03` | verified | — |
| MRTM-HWI-009 | Display digit height | C (rigour 4) | none | `SP-09` | verified | — |
| MRTM-HWI-010 | Clock drift | C (rigour 4) | none | `SP-12` | verified | — |
| MRTM-HWI-011 | Power path switch-over | C (rigour 4) | none | `SP-04` | verified | — |
| MRTM-HWI-012 | Battery endurance | C (rigour 4) | none | `SP-04` | verified | — |
| MRTM-HWI-013 | Processor watchdog reset | C (rigour 4) | none | `SP-03` | verified | — |

### Safety Requirement ⇄ Hardware item requirement

#### Safety Requirement → Hardware item requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SAF-001 | Buzzer loudness | C (rigour 4) | `MRTM-HWI-004` | `SP-06` | verified | — |
| MRTM-SAF-002 | Probe fault raises alert | C (rigour 4) | none | `SP-02`, `test_alarm_mgr.test_probe_fault_sounds_1_s_on_1_s_off` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step` |
| MRTM-SAF-003 | Implausible sample | C (rigour 4) | `MRTM-HWI-003` | `SP-02`, `test_sensor_sampler.test_reading_outside_minus30_to_50_declares_the_fault_at_once` | verified | `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_probe_fault`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_read` |
| MRTM-SAF-004 | Watchdog restart | C (rigour 4) | `MRTM-HWI-013` | `SP-03`, `test_wdt_kicker.test_task_watchdog_armed_at_5_s` | verified | `10-src/firmware/components/wdt_kicker/src/wdt_kicker.c#wdt_kicker_init` |
| MRTM-SAF-005 | Log power loss | C (rigour 4) | none | `SP-04`, `test_int_chains.test_int05_power_loss_logged_within_1_s`, `test_power_mon.test_mains_loss_and_restore_are_logged_from_the_edge` | verified | `10-src/firmware/components/power_mon/src/power_mon.c#power_mon_isr` |
| MRTM-SAF-006 | Alert survives restart | C (rigour 4) | none | `SP-05`, `test_alarm_mgr.test_acknowledged_alarm_is_not_restored_as_sounding`, `test_alarm_mgr.test_error_codes_full_and_nvs`, `test_alarm_mgr.test_unacknowledged_alarm_is_restored_after_a_restart`, `test_int_chains.test_int04_restart_restores_the_alarm` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_init`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_power_up` |
| MRTM-SAF-007 | Buzzer self-test | C (rigour 4) | none | `SP-05`, `test_diagnostics.test_power_up_tests_pass_inside_their_windows`, `test_diagnostics.test_silent_buzzer_fails_the_power_up_test` | verified | `10-src/firmware/components/diagnostics/src/diagnostics.c#diagnostics_power_up` |
| MRTM-SAF-008 | Low battery alarm | C (rigour 4) | none | `SP-04`, `test_alarm_mgr.test_battery_low_or_fail_safe_forces_the_buzzer`, `test_power_mon.test_battery_below_3400_mv_twice_sounds_the_buzzer` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step`, `10-src/firmware/components/power_mon/src/power_mon.c#power_mon_step` |
| MRTM-SAF-009 | Backup alarm on firmware silence | C (rigour 4) | `MRTM-HWI-007` | `SP-03`, `test_int_chains.test_int02_watchdog_chain` | verified | `10-src/firmware/components/wdt_kicker/src/wdt_kicker.c#wdt_kicker_step` |
| MRTM-SAF-010 | Watchdog tied to the alarm service | C (rigour 4) | none | `SP-03`, `test_alarm_mgr.test_heartbeat_moves_on_every_step`, `test_int_chains.test_int02_watchdog_chain`, `test_wdt_kicker.test_pulses_stop_within_2_s_of_a_missed_alarm_cycle`, `test_wdt_kicker.test_pulses_while_the_heartbeat_moves` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_heartbeat`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step`, `10-src/firmware/components/wdt_kicker/src/wdt_kicker.c#wdt_kicker_step` |
| MRTM-SAF-011 | Fault tone differs from excursion tone | C (rigour 4) | none | `SP-02`, `test_alarm_mgr.test_probe_fault_sounds_1_s_on_1_s_off` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SAF-012 | Probe calibration due | C (rigour 4) | none | `SP-09`, `test_display_mgr.test_calibration_due_and_log_capacity_messages` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step` |
| MRTM-SAF-013 | Alarm on total power loss | C (rigour 4) | `MRTM-HWI-008` | `SP-03` | verified | — |
| MRTM-SAF-014 | Buzzer open-circuit detection | C (rigour 4) | none | `SP-06`, `test_alarm_mgr.test_no_buzzer_current_for_5_steps_declares_buzzer_fault_red_4_hz` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SAF-015 | Diverse signal for buzzer fault | C (rigour 4) | none | `SP-06`, `test_alarm_mgr.test_no_buzzer_current_for_5_steps_declares_buzzer_fault_red_4_hz` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SAF-016 | Show the band at power-up | C (rigour 4) | none | `SP-05`, `test_display_mgr.test_band_and_version_shown_in_the_first_3_s` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#display_mgr_init`, `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/display_mgr/src/display_mgr.cpp#renderFrame`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_power_up` |
| MRTM-SAF-017 | Band integrity check | C (rigour 4) | none | `SP-05`, `test_alarm_mgr.test_battery_low_or_fail_safe_forces_the_buzzer`, `test_config_mgr.test_bad_crc_is_refused_with_err_crc`, `test_config_mgr.test_missing_record_is_err_nvs`, `test_config_mgr.test_store_writes_a_fresh_crc_and_logs_config_changed`, `test_int_chains.test_int03_corrupt_config_fail_safe` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step`, `10-src/firmware/components/config_mgr/src/config_mgr.c#config_mgr_load`, `10-src/firmware/components/config_mgr/src/config_mgr.c#config_mgr_store`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_power_up`, `10-src/firmware/components/mrtm_common/src/mrtm_crc.c#mrtm_crc32` |
| MRTM-SAF-018 | Two copies of every record | C (rigour 4) | none | `SP-07`, `test_event_log.test_error_code_full_after_32`, `test_event_log.test_flash_failure_does_not_loop`, `test_event_log.test_step_numbers_checksums_and_stores_every_queued_record`, `test_history_ring.test_append_writes_copy_a_and_copy_b`, `test_history_ring.test_corrupt_copy_a_is_read_from_copy_b`, `test_history_ring.test_error_codes_flash_arg` | verified | `10-src/firmware/components/event_log/src/event_log.c#event_log_step`, `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_append` |
| MRTM-SAF-019 | Stuck acknowledge button | C (rigour 4) | none | `SP-01`, `test_alarm_mgr.test_button_held_60_s_is_a_button_fault_and_ignored` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_button_debounced`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SAF-020 | Probe placement in the instructions | C (rigour 4) | none | `SP-14` | verified | — |
| MRTM-SAF-021 | I2C bus recovery | C (rigour 4) | none | `SP-09`, `test_display_mgr.test_i2c_timeout_resets_the_bus_within_1_s` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#recoverBus` |
| MRTM-SAF-022 | Clock stop detection | C (rigour 4) | none | `SP-05`, `test_rtc_clock.test_error_codes_bus_and_arg`, `test_rtc_clock.test_oscillator_stop_at_power_up_logs_clock_fault` | verified | `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_power_up`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_init` |
| MRTM-SAF-023 | Backup alarm power-up test | C (rigour 4) | none | `SP-05`, `test_diagnostics.test_backup_alarm_not_heard_fails_and_pulses_resume`, `test_diagnostics.test_power_up_tests_pass_inside_their_windows`, `test_wdt_kicker.test_hold_stops_pulses_and_release_resumes` | verified | `10-src/firmware/components/diagnostics/src/diagnostics.c#diagnostics_power_up` |

#### Hardware item requirement → Safety Requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-HWI-001 | Probe conversion time | C (rigour 4) | none | `SP-10`, `test_limit_evaluator.test_early_alarm_budget_fits_5_s` | verified | — |
| MRTM-HWI-002 | Probe accuracy | C (rigour 4) | none | `SP-10` | verified | — |
| MRTM-HWI-003 | Probe scratchpad check | C (rigour 4) | `MRTM-SAF-003` | `SP-10` | verified | — |
| MRTM-HWI-004 | Buzzer loudness | C (rigour 4) | `MRTM-SAF-001` | `SP-06` | verified | — |
| MRTM-HWI-005 | Red indicator response | C (rigour 4) | none | `SP-01` | verified | — |
| MRTM-HWI-006 | Acknowledge contact | C (rigour 4) | none | `SP-01` | verified | — |
| MRTM-HWI-007 | Backup alarm timeout | C (rigour 4) | `MRTM-SAF-009` | `SP-03`, `test_int_chains.test_int02_watchdog_chain` | verified | — |
| MRTM-HWI-008 | Backup alarm hold-up | C (rigour 4) | `MRTM-SAF-013` | `SP-03` | verified | — |
| MRTM-HWI-009 | Display digit height | C (rigour 4) | none | `SP-09` | verified | — |
| MRTM-HWI-010 | Clock drift | C (rigour 4) | none | `SP-12` | verified | — |
| MRTM-HWI-011 | Power path switch-over | C (rigour 4) | none | `SP-04` | verified | — |
| MRTM-HWI-012 | Battery endurance | C (rigour 4) | none | `SP-04` | verified | — |
| MRTM-HWI-013 | Processor watchdog reset | C (rigour 4) | `MRTM-SAF-004` | `SP-03` | verified | — |

### System Requirement ⇄ Hardware item requirement

#### System Requirement → Hardware item requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SYS-001 | Sampling period | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_sensor_sampler.test_good_scratchpad_gives_a_valid_sample` | verified | `10-src/config/mrtm_config.h#off`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_read` |
| MRTM-SYS-002 | Excursion confirmation | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_int_chains.test_int01_excursion_chain`, `test_limit_evaluator.test_invalid_sample_neither_counts_nor_resets`, `test_limit_evaluator.test_n_minus_one_out_then_one_in_does_not_confirm`, `test_limit_evaluator.test_nth_consecutive_out_sample_confirms` | verified | `10-src/config/mrtm_config.h#off`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step` |
| MRTM-SYS-003 | Buzzer on excursion | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_confirm_sounds_the_buzzer_and_flashes_red_at_2_hz`, `test_int_chains.test_int01_excursion_chain` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take` |
| MRTM-SYS-004 | Red indicator on excursion | C (rigour 4) | `MRTM-HWI-005` | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_confirm_sounds_the_buzzer_and_flashes_red_at_2_hz` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SYS-005 | Warning on excursion | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_display_mgr.test_excursion_warning_for_the_whole_excursion`, `test_int_chains.test_int01_excursion_chain` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/display_mgr/src/display_mgr.cpp#renderFrame`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_display_step` |
| MRTM-SYS-006 | Acknowledge silences buzzer | C (rigour 4) | `MRTM-HWI-006` | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_ack_stops_the_buzzer_in_the_same_step_and_logs` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_button_debounced`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_post`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take` |
| MRTM-SYS-007 | Warning stays while excursion is open | C (rigour 4) | none | `SP-01`, `test_display_mgr.test_excursion_warning_for_the_whole_excursion` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw` |
| MRTM-SYS-008 | Log excursion start | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_event_log.test_time_stamp_is_the_utc_second_of_the_post`, `test_int_chains.test_int01_excursion_chain`, `test_usb_export.test_csv_lines_oldest_first_newest_last` | verified | `10-src/firmware/components/event_log/src/event_log.c#event_log_post`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now` |
| MRTM-SYS-009 | Log excursion end | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_event_log.test_end_record_carries_the_peak_in_tenths`, `test_limit_evaluator.test_peak_below_band_counts_distance_downwards`, `test_limit_evaluator.test_peak_is_the_most_extreme_sample` | verified | `10-src/firmware/components/event_log/src/event_log.c#event_log_post`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_peak`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step` |
| MRTM-SYS-010 | Log acknowledgement | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_ack_stops_the_buzzer_in_the_same_step_and_logs`, `test_event_log.test_time_stamp_is_the_utc_second_of_the_post` | verified | `10-src/firmware/components/event_log/src/event_log.c#event_log_post`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now` |
| MRTM-SYS-011 | Display resolution | C (rigour 4) | none | `SP-09`, `test_display_mgr.test_temperature_refreshes_every_10_s_in_tenths`, `test_sensor_sampler.test_conversion_rounds_to_a_tenth_and_adds_the_offset` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_to_tenths` |
| MRTM-SYS-012 | Probe fault detection | C (rigour 4) | `MRTM-HWI-003` | `SP-02`, `test_mrtm_common.test_crc8_over_a_scratchpad`, `test_mrtm_common.test_crc_check_values`, `test_sensor_sampler.test_bad_crc_is_invalid_but_not_out_of_range`, `test_sensor_sampler.test_fault_after_30_s_without_a_correct_crc`, `test_sensor_sampler.test_fault_clears_on_the_next_valid_sample` | verified | `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step`, `10-src/firmware/components/mrtm_common/src/mrtm_crc.c#mrtm_crc8_maxim`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_probe_fault`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_read` |
| MRTM-SYS-013 | Probe fault message | C (rigour 4) | none | `SP-02`, `test_display_mgr.test_probe_fault_message` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/display_mgr/src/display_mgr.cpp#renderFrame`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_display_step` |
| MRTM-SYS-014 | Read-only event log | C (rigour 4) | none | `SP-08`, `test_usb_export.test_every_write_is_refused`, `test_usb_export.test_history_csv_is_marked_read_only` | verified | `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_init`, `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_write10` |
| MRTM-SYS-015 | Event log capacity | C (rigour 4) | none | `SP-07`, `test_history_ring.test_init_finds_the_head_again_after_a_restart`, `test_history_ring.test_retains_10000_records_after_wrapping`, `test_history_ring.test_retains_10000_straight_after_an_erase_ahead`, `test_usb_export.test_full_history_fits_and_fat_chain_ends` | verified | `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_append`, `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_init`, `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_read` |
| MRTM-SYS-016 | Battery operation | C (rigour 4) | `MRTM-HWI-011` | `SP-04` | verified | — |
| MRTM-SYS-017 | Allowed band | C (rigour 4) | none | `SP-13`, `test_config_mgr.test_band_outside_2_to_8_is_refused`, `test_config_mgr.test_valid_record_loads_the_2_to_8_degree_band`, `test_limit_evaluator.test_band_edges_two_and_eight_degrees_are_inside` | verified | `10-src/firmware/components/config_mgr/src/config_mgr.c#config_mgr_load`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_init`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step` |
| MRTM-SYS-018 | Excursion end confirmation | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_end_returns_to_quiet_from_sounding_and_silenced`, `test_limit_evaluator.test_hysteresis_knob_is_zero`, `test_limit_evaluator.test_nth_consecutive_in_sample_ends_excursion`, `test_limit_evaluator.test_out_sample_restarts_the_in_run` | verified | `10-src/config/mrtm_config.h#off`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step` |
| MRTM-SYS-019 | Alarm comes back after silence | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_re_sounds_15_minutes_after_the_ack` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SYS-020 | Clock drift | C (rigour 4) | `MRTM-HWI-010` | `SP-12`, `test_rtc_clock.test_now_is_the_rtc_copy_refreshed_each_second` | verified | `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_tick` |
| MRTM-SYS-021 | Event log integrity | C (rigour 4) | none | `SP-07`, `test_history_ring.test_both_copies_corrupt_reports_err_crc_and_logs_it`, `test_history_ring.test_corrupt_copy_a_is_read_from_copy_b`, `test_mrtm_common.test_crc_check_values`, `test_usb_export.test_unreadable_record_is_a_corrupt_line` | verified | `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_read`, `10-src/firmware/components/mrtm_common/src/mrtm_crc.c#mrtm_crc32` |
| MRTM-SYS-022 | Log capacity warning | C (rigour 4) | none | `SP-07`, `test_display_mgr.test_calibration_due_and_log_capacity_messages`, `test_history_ring.test_capacity_warning_once_at_9000` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_append`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step` |
| MRTM-SYS-023 | Power restore event | C (rigour 4) | none | `SP-04`, `test_event_log.test_time_stamp_is_the_utc_second_of_the_post`, `test_power_mon.test_mains_loss_and_restore_are_logged_from_the_edge` | verified | `10-src/firmware/components/event_log/src/event_log.c#event_log_post`, `10-src/firmware/components/power_mon/src/power_mon.c#power_mon_isr`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now` |
| MRTM-SYS-024 | Early excursion alarm | C (rigour 4) | `MRTM-HWI-001` | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_early_alarm_clears_back_to_quiet`, `test_alarm_mgr.test_early_alarm_is_red_1_hz_without_buzzer_then_escalates`, `test_limit_evaluator.test_back_in_band_clears_the_early_alarm`, `test_limit_evaluator.test_early_alarm_budget_fits_5_s`, `test_limit_evaluator.test_first_out_sample_raises_the_early_alarm` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step` |

#### Hardware item requirement → System Requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-HWI-001 | Probe conversion time | C (rigour 4) | `MRTM-SYS-024` | `SP-10`, `test_limit_evaluator.test_early_alarm_budget_fits_5_s` | verified | — |
| MRTM-HWI-002 | Probe accuracy | C (rigour 4) | none | `SP-10` | verified | — |
| MRTM-HWI-003 | Probe scratchpad check | C (rigour 4) | `MRTM-SYS-012` | `SP-10` | verified | — |
| MRTM-HWI-004 | Buzzer loudness | C (rigour 4) | none | `SP-06` | verified | — |
| MRTM-HWI-005 | Red indicator response | C (rigour 4) | `MRTM-SYS-004` | `SP-01` | verified | — |
| MRTM-HWI-006 | Acknowledge contact | C (rigour 4) | `MRTM-SYS-006` | `SP-01` | verified | — |
| MRTM-HWI-007 | Backup alarm timeout | C (rigour 4) | none | `SP-03`, `test_int_chains.test_int02_watchdog_chain` | verified | — |
| MRTM-HWI-008 | Backup alarm hold-up | C (rigour 4) | none | `SP-03` | verified | — |
| MRTM-HWI-009 | Display digit height | C (rigour 4) | none | `SP-09` | verified | — |
| MRTM-HWI-010 | Clock drift | C (rigour 4) | `MRTM-SYS-020` | `SP-12` | verified | — |
| MRTM-HWI-011 | Power path switch-over | C (rigour 4) | `MRTM-SYS-016` | `SP-04` | verified | — |
| MRTM-HWI-012 | Battery endurance | C (rigour 4) | none | `SP-04` | verified | — |
| MRTM-HWI-013 | Processor watchdog reset | C (rigour 4) | none | `SP-03` | verified | — |

### Interface Requirement ⇄ Software system requirement

#### Interface Requirement → Software system requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-IFC-001 | Probe bus | C (rigour 4) | none | `SP-10`, `test_sensor_sampler.test_error_codes_arg_and_bus`, `test_sensor_sampler.test_good_scratchpad_gives_a_valid_sample` | verified | `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_init`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_read` |
| MRTM-IFC-002 | Acknowledge input | C (rigour 4) | `MRTM-SRS-007` | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_button_debounce_50_ms` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_button_debounced`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_button_isr` |
| MRTM-IFC-003 | USB readout | C (rigour 4) | `MRTM-SRS-014` | `SP-08`, `test_usb_export.test_boot_sector_is_a_fat12_volume`, `test_usb_export.test_csv_lines_oldest_first_newest_last`, `test_usb_export.test_every_write_is_refused`, `test_usb_export.test_history_csv_is_marked_read_only` | verified | `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_init`, `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_read10`, `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_write10` |
| MRTM-IFC-004 | Display character height | C (rigour 4) | none | `SP-09` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw` |

#### Software system requirement → Interface Requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SRS-001 | SRS sample period | C (rigour 4) | none | `SP-01` | verified | — |
| MRTM-SRS-002 | SRS early alarm signal | C (rigour 4) | none | `test_alarm_mgr.test_early_alarm_is_red_1_hz_without_buzzer_then_escalates`, `test_limit_evaluator.test_early_alarm_budget_fits_5_s` | verified | — |
| MRTM-SRS-003 | SRS excursion confirmation | C (rigour 4) | none | `test_int_chains.test_int01_excursion_chain`, `test_limit_evaluator.test_early_alarm_budget_fits_5_s` | verified | — |
| MRTM-SRS-004 | SRS excursion end | C (rigour 4) | none | `test_limit_evaluator.test_nth_consecutive_in_sample_ends_excursion` | verified | — |
| MRTM-SRS-005 | SRS invalid sample | C (rigour 4) | none | `SP-02` | verified | — |
| MRTM-SRS-006 | SRS buzzer on | C (rigour 4) | none | `test_int_chains.test_int01_excursion_chain` | verified | — |
| MRTM-SRS-007 | SRS buzzer off on acknowledge | C (rigour 4) | `MRTM-IFC-002` | `test_alarm_mgr.test_ack_stops_the_buzzer_in_the_same_step_and_logs` | verified | — |
| MRTM-SRS-008 | SRS alarm burst pattern | C (rigour 4) | none | — | unverified | — |
| MRTM-SRS-009 | SRS excursion warning | C (rigour 4) | none | `test_int_chains.test_int01_excursion_chain` | verified | — |
| MRTM-SRS-010 | SRS temperature shown | C (rigour 4) | none | `SP-09` | verified | — |
| MRTM-SRS-011 | SRS status messages | C (rigour 4) | none | `SP-05`, `SP-09` | verified | — |
| MRTM-SRS-012 | SRS record stored twice | C (rigour 4) | none | `SP-07` | verified | — |
| MRTM-SRS-013 | SRS log capacity | C (rigour 4) | none | `SP-07` | verified | — |
| MRTM-SRS-014 | SRS read-only export | C (rigour 4) | `MRTM-IFC-003` | `SP-08` | verified | — |
| MRTM-SRS-015 | SRS time stamp | C (rigour 4) | none | `SP-12` | verified | — |
| MRTM-SRS-016 | SRS power events | C (rigour 4) | none | `test_int_chains.test_int05_power_loss_logged_within_1_s` | verified | — |
| MRTM-SRS-017 | SRS watchdog service stop | C (rigour 4) | none | `SP-03`, `test_int_chains.test_int02_watchdog_chain` | verified | — |
| MRTM-SRS-018 | SRS power-up tests | C (rigour 4) | none | `SP-05` | verified | — |
| MRTM-SRS-019 | SRS band integrity | C (rigour 4) | none | `test_int_chains.test_int03_corrupt_config_fail_safe` | verified | — |

### Performance Requirement ⇄ Software system requirement

#### Performance Requirement → Software system requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-PRF-001 | Measurement accuracy | C (rigour 4) | none | `SP-10`, `test_sensor_sampler.test_conversion_rounds_to_a_tenth_and_adds_the_offset` | verified | `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_to_tenths` |
| MRTM-PRF-002 | End-to-end alert time | C (rigour 4) | `MRTM-SRS-006` | `SP-01`, `SP-01-H`, `test_int_chains.test_int01_excursion_chain` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-PRF-003 | Log readout time | C (rigour 4) | `MRTM-SRS-014` | `SP-08`, `test_usb_export.test_full_history_fits_and_fat_chain_ends` | verified | `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_read10` |
| MRTM-PRF-004 | Display refresh | C (rigour 4) | `MRTM-SRS-010` | `SP-09`, `test_display_mgr.test_temperature_refreshes_every_10_s_in_tenths` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#display_mgr_tick`, `10-src/firmware/components/display_mgr/src/display_mgr.cpp#renderFrame` |

#### Software system requirement → Performance Requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SRS-001 | SRS sample period | C (rigour 4) | none | `SP-01` | verified | — |
| MRTM-SRS-002 | SRS early alarm signal | C (rigour 4) | none | `test_alarm_mgr.test_early_alarm_is_red_1_hz_without_buzzer_then_escalates`, `test_limit_evaluator.test_early_alarm_budget_fits_5_s` | verified | — |
| MRTM-SRS-003 | SRS excursion confirmation | C (rigour 4) | none | `test_int_chains.test_int01_excursion_chain`, `test_limit_evaluator.test_early_alarm_budget_fits_5_s` | verified | — |
| MRTM-SRS-004 | SRS excursion end | C (rigour 4) | none | `test_limit_evaluator.test_nth_consecutive_in_sample_ends_excursion` | verified | — |
| MRTM-SRS-005 | SRS invalid sample | C (rigour 4) | none | `SP-02` | verified | — |
| MRTM-SRS-006 | SRS buzzer on | C (rigour 4) | `MRTM-PRF-002` | `test_int_chains.test_int01_excursion_chain` | verified | — |
| MRTM-SRS-007 | SRS buzzer off on acknowledge | C (rigour 4) | none | `test_alarm_mgr.test_ack_stops_the_buzzer_in_the_same_step_and_logs` | verified | — |
| MRTM-SRS-008 | SRS alarm burst pattern | C (rigour 4) | none | — | unverified | — |
| MRTM-SRS-009 | SRS excursion warning | C (rigour 4) | none | `test_int_chains.test_int01_excursion_chain` | verified | — |
| MRTM-SRS-010 | SRS temperature shown | C (rigour 4) | `MRTM-PRF-004` | `SP-09` | verified | — |
| MRTM-SRS-011 | SRS status messages | C (rigour 4) | none | `SP-05`, `SP-09` | verified | — |
| MRTM-SRS-012 | SRS record stored twice | C (rigour 4) | none | `SP-07` | verified | — |
| MRTM-SRS-013 | SRS log capacity | C (rigour 4) | none | `SP-07` | verified | — |
| MRTM-SRS-014 | SRS read-only export | C (rigour 4) | `MRTM-PRF-003` | `SP-08` | verified | — |
| MRTM-SRS-015 | SRS time stamp | C (rigour 4) | none | `SP-12` | verified | — |
| MRTM-SRS-016 | SRS power events | C (rigour 4) | none | `test_int_chains.test_int05_power_loss_logged_within_1_s` | verified | — |
| MRTM-SRS-017 | SRS watchdog service stop | C (rigour 4) | none | `SP-03`, `test_int_chains.test_int02_watchdog_chain` | verified | — |
| MRTM-SRS-018 | SRS power-up tests | C (rigour 4) | none | `SP-05` | verified | — |
| MRTM-SRS-019 | SRS band integrity | C (rigour 4) | none | `test_int_chains.test_int03_corrupt_config_fail_safe` | verified | — |

### Safety Requirement ⇄ Software system requirement

#### Safety Requirement → Software system requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SAF-001 | Buzzer loudness | C (rigour 4) | none | `SP-06` | verified | — |
| MRTM-SAF-002 | Probe fault raises alert | C (rigour 4) | none | `SP-02`, `test_alarm_mgr.test_probe_fault_sounds_1_s_on_1_s_off` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step` |
| MRTM-SAF-003 | Implausible sample | C (rigour 4) | `MRTM-SRS-005` | `SP-02`, `test_sensor_sampler.test_reading_outside_minus30_to_50_declares_the_fault_at_once` | verified | `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_probe_fault`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_read` |
| MRTM-SAF-004 | Watchdog restart | C (rigour 4) | none | `SP-03`, `test_wdt_kicker.test_task_watchdog_armed_at_5_s` | verified | `10-src/firmware/components/wdt_kicker/src/wdt_kicker.c#wdt_kicker_init` |
| MRTM-SAF-005 | Log power loss | C (rigour 4) | `MRTM-SRS-016` | `SP-04`, `test_int_chains.test_int05_power_loss_logged_within_1_s`, `test_power_mon.test_mains_loss_and_restore_are_logged_from_the_edge` | verified | `10-src/firmware/components/power_mon/src/power_mon.c#power_mon_isr` |
| MRTM-SAF-006 | Alert survives restart | C (rigour 4) | none | `SP-05`, `test_alarm_mgr.test_acknowledged_alarm_is_not_restored_as_sounding`, `test_alarm_mgr.test_error_codes_full_and_nvs`, `test_alarm_mgr.test_unacknowledged_alarm_is_restored_after_a_restart`, `test_int_chains.test_int04_restart_restores_the_alarm` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_init`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_power_up` |
| MRTM-SAF-007 | Buzzer self-test | C (rigour 4) | `MRTM-SRS-018` | `SP-05`, `test_diagnostics.test_power_up_tests_pass_inside_their_windows`, `test_diagnostics.test_silent_buzzer_fails_the_power_up_test` | verified | `10-src/firmware/components/diagnostics/src/diagnostics.c#diagnostics_power_up` |
| MRTM-SAF-008 | Low battery alarm | C (rigour 4) | `MRTM-SRS-016` | `SP-04`, `test_alarm_mgr.test_battery_low_or_fail_safe_forces_the_buzzer`, `test_power_mon.test_battery_below_3400_mv_twice_sounds_the_buzzer` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step`, `10-src/firmware/components/power_mon/src/power_mon.c#power_mon_step` |
| MRTM-SAF-009 | Backup alarm on firmware silence | C (rigour 4) | `MRTM-SRS-017` | `SP-03`, `test_int_chains.test_int02_watchdog_chain` | verified | `10-src/firmware/components/wdt_kicker/src/wdt_kicker.c#wdt_kicker_step` |
| MRTM-SAF-010 | Watchdog tied to the alarm service | C (rigour 4) | `MRTM-SRS-017` | `SP-03`, `test_alarm_mgr.test_heartbeat_moves_on_every_step`, `test_int_chains.test_int02_watchdog_chain`, `test_wdt_kicker.test_pulses_stop_within_2_s_of_a_missed_alarm_cycle`, `test_wdt_kicker.test_pulses_while_the_heartbeat_moves` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_heartbeat`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step`, `10-src/firmware/components/wdt_kicker/src/wdt_kicker.c#wdt_kicker_step` |
| MRTM-SAF-011 | Fault tone differs from excursion tone | C (rigour 4) | none | `SP-02`, `test_alarm_mgr.test_probe_fault_sounds_1_s_on_1_s_off` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SAF-012 | Probe calibration due | C (rigour 4) | `MRTM-SRS-011` | `SP-09`, `test_display_mgr.test_calibration_due_and_log_capacity_messages` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step` |
| MRTM-SAF-013 | Alarm on total power loss | C (rigour 4) | none | `SP-03` | verified | — |
| MRTM-SAF-014 | Buzzer open-circuit detection | C (rigour 4) | none | `SP-06`, `test_alarm_mgr.test_no_buzzer_current_for_5_steps_declares_buzzer_fault_red_4_hz` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SAF-015 | Diverse signal for buzzer fault | C (rigour 4) | none | `SP-06`, `test_alarm_mgr.test_no_buzzer_current_for_5_steps_declares_buzzer_fault_red_4_hz` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SAF-016 | Show the band at power-up | C (rigour 4) | `MRTM-SRS-011` | `SP-05`, `test_display_mgr.test_band_and_version_shown_in_the_first_3_s` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#display_mgr_init`, `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/display_mgr/src/display_mgr.cpp#renderFrame`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_power_up` |
| MRTM-SAF-017 | Band integrity check | C (rigour 4) | `MRTM-SRS-019` | `SP-05`, `test_alarm_mgr.test_battery_low_or_fail_safe_forces_the_buzzer`, `test_config_mgr.test_bad_crc_is_refused_with_err_crc`, `test_config_mgr.test_missing_record_is_err_nvs`, `test_config_mgr.test_store_writes_a_fresh_crc_and_logs_config_changed`, `test_int_chains.test_int03_corrupt_config_fail_safe` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step`, `10-src/firmware/components/config_mgr/src/config_mgr.c#config_mgr_load`, `10-src/firmware/components/config_mgr/src/config_mgr.c#config_mgr_store`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_power_up`, `10-src/firmware/components/mrtm_common/src/mrtm_crc.c#mrtm_crc32` |
| MRTM-SAF-018 | Two copies of every record | C (rigour 4) | `MRTM-SRS-012` | `SP-07`, `test_event_log.test_error_code_full_after_32`, `test_event_log.test_flash_failure_does_not_loop`, `test_event_log.test_step_numbers_checksums_and_stores_every_queued_record`, `test_history_ring.test_append_writes_copy_a_and_copy_b`, `test_history_ring.test_corrupt_copy_a_is_read_from_copy_b`, `test_history_ring.test_error_codes_flash_arg` | verified | `10-src/firmware/components/event_log/src/event_log.c#event_log_step`, `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_append` |
| MRTM-SAF-019 | Stuck acknowledge button | C (rigour 4) | none | `SP-01`, `test_alarm_mgr.test_button_held_60_s_is_a_button_fault_and_ignored` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_button_debounced`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SAF-020 | Probe placement in the instructions | C (rigour 4) | none | `SP-14` | verified | — |
| MRTM-SAF-021 | I2C bus recovery | C (rigour 4) | none | `SP-09`, `test_display_mgr.test_i2c_timeout_resets_the_bus_within_1_s` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#recoverBus` |
| MRTM-SAF-022 | Clock stop detection | C (rigour 4) | `MRTM-SRS-015` | `SP-05`, `test_rtc_clock.test_error_codes_bus_and_arg`, `test_rtc_clock.test_oscillator_stop_at_power_up_logs_clock_fault` | verified | `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_power_up`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_init` |
| MRTM-SAF-023 | Backup alarm power-up test | C (rigour 4) | `MRTM-SRS-018` | `SP-05`, `test_diagnostics.test_backup_alarm_not_heard_fails_and_pulses_resume`, `test_diagnostics.test_power_up_tests_pass_inside_their_windows`, `test_wdt_kicker.test_hold_stops_pulses_and_release_resumes` | verified | `10-src/firmware/components/diagnostics/src/diagnostics.c#diagnostics_power_up` |

#### Software system requirement → Safety Requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SRS-001 | SRS sample period | C (rigour 4) | none | `SP-01` | verified | — |
| MRTM-SRS-002 | SRS early alarm signal | C (rigour 4) | none | `test_alarm_mgr.test_early_alarm_is_red_1_hz_without_buzzer_then_escalates`, `test_limit_evaluator.test_early_alarm_budget_fits_5_s` | verified | — |
| MRTM-SRS-003 | SRS excursion confirmation | C (rigour 4) | none | `test_int_chains.test_int01_excursion_chain`, `test_limit_evaluator.test_early_alarm_budget_fits_5_s` | verified | — |
| MRTM-SRS-004 | SRS excursion end | C (rigour 4) | none | `test_limit_evaluator.test_nth_consecutive_in_sample_ends_excursion` | verified | — |
| MRTM-SRS-005 | SRS invalid sample | C (rigour 4) | `MRTM-SAF-003` | `SP-02` | verified | — |
| MRTM-SRS-006 | SRS buzzer on | C (rigour 4) | none | `test_int_chains.test_int01_excursion_chain` | verified | — |
| MRTM-SRS-007 | SRS buzzer off on acknowledge | C (rigour 4) | none | `test_alarm_mgr.test_ack_stops_the_buzzer_in_the_same_step_and_logs` | verified | — |
| MRTM-SRS-008 | SRS alarm burst pattern | C (rigour 4) | none | — | unverified | — |
| MRTM-SRS-009 | SRS excursion warning | C (rigour 4) | none | `test_int_chains.test_int01_excursion_chain` | verified | — |
| MRTM-SRS-010 | SRS temperature shown | C (rigour 4) | none | `SP-09` | verified | — |
| MRTM-SRS-011 | SRS status messages | C (rigour 4) | `MRTM-SAF-012`, `MRTM-SAF-016` | `SP-05`, `SP-09` | verified | — |
| MRTM-SRS-012 | SRS record stored twice | C (rigour 4) | `MRTM-SAF-018` | `SP-07` | verified | — |
| MRTM-SRS-013 | SRS log capacity | C (rigour 4) | none | `SP-07` | verified | — |
| MRTM-SRS-014 | SRS read-only export | C (rigour 4) | none | `SP-08` | verified | — |
| MRTM-SRS-015 | SRS time stamp | C (rigour 4) | `MRTM-SAF-022` | `SP-12` | verified | — |
| MRTM-SRS-016 | SRS power events | C (rigour 4) | `MRTM-SAF-005`, `MRTM-SAF-008` | `test_int_chains.test_int05_power_loss_logged_within_1_s` | verified | — |
| MRTM-SRS-017 | SRS watchdog service stop | C (rigour 4) | `MRTM-SAF-009`, `MRTM-SAF-010` | `SP-03`, `test_int_chains.test_int02_watchdog_chain` | verified | — |
| MRTM-SRS-018 | SRS power-up tests | C (rigour 4) | `MRTM-SAF-007`, `MRTM-SAF-023` | `SP-05` | verified | — |
| MRTM-SRS-019 | SRS band integrity | C (rigour 4) | `MRTM-SAF-017` | `test_int_chains.test_int03_corrupt_config_fail_safe` | verified | — |

### System Requirement ⇄ Software system requirement

#### System Requirement → Software system requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SYS-001 | Sampling period | C (rigour 4) | `MRTM-SRS-001` | `SP-01`, `SP-01-H`, `test_sensor_sampler.test_good_scratchpad_gives_a_valid_sample` | verified | `10-src/config/mrtm_config.h#off`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_read` |
| MRTM-SYS-002 | Excursion confirmation | C (rigour 4) | `MRTM-SRS-003` | `SP-01`, `SP-01-H`, `test_int_chains.test_int01_excursion_chain`, `test_limit_evaluator.test_invalid_sample_neither_counts_nor_resets`, `test_limit_evaluator.test_n_minus_one_out_then_one_in_does_not_confirm`, `test_limit_evaluator.test_nth_consecutive_out_sample_confirms` | verified | `10-src/config/mrtm_config.h#off`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step` |
| MRTM-SYS-003 | Buzzer on excursion | C (rigour 4) | `MRTM-SRS-006`, `MRTM-SRS-008` | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_confirm_sounds_the_buzzer_and_flashes_red_at_2_hz`, `test_int_chains.test_int01_excursion_chain` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take` |
| MRTM-SYS-004 | Red indicator on excursion | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_confirm_sounds_the_buzzer_and_flashes_red_at_2_hz` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SYS-005 | Warning on excursion | C (rigour 4) | `MRTM-SRS-009` | `SP-01`, `SP-01-H`, `test_display_mgr.test_excursion_warning_for_the_whole_excursion`, `test_int_chains.test_int01_excursion_chain` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/display_mgr/src/display_mgr.cpp#renderFrame`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_display_step` |
| MRTM-SYS-006 | Acknowledge silences buzzer | C (rigour 4) | `MRTM-SRS-007` | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_ack_stops_the_buzzer_in_the_same_step_and_logs` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_button_debounced`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_post`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take` |
| MRTM-SYS-007 | Warning stays while excursion is open | C (rigour 4) | `MRTM-SRS-009` | `SP-01`, `test_display_mgr.test_excursion_warning_for_the_whole_excursion` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw` |
| MRTM-SYS-008 | Log excursion start | C (rigour 4) | `MRTM-SRS-012`, `MRTM-SRS-015` | `SP-01`, `SP-01-H`, `test_event_log.test_time_stamp_is_the_utc_second_of_the_post`, `test_int_chains.test_int01_excursion_chain`, `test_usb_export.test_csv_lines_oldest_first_newest_last` | verified | `10-src/firmware/components/event_log/src/event_log.c#event_log_post`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now` |
| MRTM-SYS-009 | Log excursion end | C (rigour 4) | `MRTM-SRS-012` | `SP-01`, `SP-01-H`, `test_event_log.test_end_record_carries_the_peak_in_tenths`, `test_limit_evaluator.test_peak_below_band_counts_distance_downwards`, `test_limit_evaluator.test_peak_is_the_most_extreme_sample` | verified | `10-src/firmware/components/event_log/src/event_log.c#event_log_post`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_peak`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step` |
| MRTM-SYS-010 | Log acknowledgement | C (rigour 4) | `MRTM-SRS-012` | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_ack_stops_the_buzzer_in_the_same_step_and_logs`, `test_event_log.test_time_stamp_is_the_utc_second_of_the_post` | verified | `10-src/firmware/components/event_log/src/event_log.c#event_log_post`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now` |
| MRTM-SYS-011 | Display resolution | C (rigour 4) | `MRTM-SRS-010` | `SP-09`, `test_display_mgr.test_temperature_refreshes_every_10_s_in_tenths`, `test_sensor_sampler.test_conversion_rounds_to_a_tenth_and_adds_the_offset` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_to_tenths` |
| MRTM-SYS-012 | Probe fault detection | C (rigour 4) | `MRTM-SRS-005` | `SP-02`, `test_mrtm_common.test_crc8_over_a_scratchpad`, `test_mrtm_common.test_crc_check_values`, `test_sensor_sampler.test_bad_crc_is_invalid_but_not_out_of_range`, `test_sensor_sampler.test_fault_after_30_s_without_a_correct_crc`, `test_sensor_sampler.test_fault_clears_on_the_next_valid_sample` | verified | `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step`, `10-src/firmware/components/mrtm_common/src/mrtm_crc.c#mrtm_crc8_maxim`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_probe_fault`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_read` |
| MRTM-SYS-013 | Probe fault message | C (rigour 4) | `MRTM-SRS-011` | `SP-02`, `test_display_mgr.test_probe_fault_message` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/display_mgr/src/display_mgr.cpp#renderFrame`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_display_step` |
| MRTM-SYS-014 | Read-only event log | C (rigour 4) | `MRTM-SRS-014` | `SP-08`, `test_usb_export.test_every_write_is_refused`, `test_usb_export.test_history_csv_is_marked_read_only` | verified | `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_init`, `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_write10` |
| MRTM-SYS-015 | Event log capacity | C (rigour 4) | `MRTM-SRS-013` | `SP-07`, `test_history_ring.test_init_finds_the_head_again_after_a_restart`, `test_history_ring.test_retains_10000_records_after_wrapping`, `test_history_ring.test_retains_10000_straight_after_an_erase_ahead`, `test_usb_export.test_full_history_fits_and_fat_chain_ends` | verified | `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_append`, `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_init`, `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_read` |
| MRTM-SYS-016 | Battery operation | C (rigour 4) | none | `SP-04` | verified | — |
| MRTM-SYS-017 | Allowed band | C (rigour 4) | `MRTM-SRS-019` | `SP-13`, `test_config_mgr.test_band_outside_2_to_8_is_refused`, `test_config_mgr.test_valid_record_loads_the_2_to_8_degree_band`, `test_limit_evaluator.test_band_edges_two_and_eight_degrees_are_inside` | verified | `10-src/firmware/components/config_mgr/src/config_mgr.c#config_mgr_load`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_init`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step` |
| MRTM-SYS-018 | Excursion end confirmation | C (rigour 4) | `MRTM-SRS-004` | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_end_returns_to_quiet_from_sounding_and_silenced`, `test_limit_evaluator.test_hysteresis_knob_is_zero`, `test_limit_evaluator.test_nth_consecutive_in_sample_ends_excursion`, `test_limit_evaluator.test_out_sample_restarts_the_in_run` | verified | `10-src/config/mrtm_config.h#off`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step` |
| MRTM-SYS-019 | Alarm comes back after silence | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_re_sounds_15_minutes_after_the_ack` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SYS-020 | Clock drift | C (rigour 4) | `MRTM-SRS-015` | `SP-12`, `test_rtc_clock.test_now_is_the_rtc_copy_refreshed_each_second` | verified | `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_tick` |
| MRTM-SYS-021 | Event log integrity | C (rigour 4) | none | `SP-07`, `test_history_ring.test_both_copies_corrupt_reports_err_crc_and_logs_it`, `test_history_ring.test_corrupt_copy_a_is_read_from_copy_b`, `test_mrtm_common.test_crc_check_values`, `test_usb_export.test_unreadable_record_is_a_corrupt_line` | verified | `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_read`, `10-src/firmware/components/mrtm_common/src/mrtm_crc.c#mrtm_crc32` |
| MRTM-SYS-022 | Log capacity warning | C (rigour 4) | `MRTM-SRS-011` | `SP-07`, `test_display_mgr.test_calibration_due_and_log_capacity_messages`, `test_history_ring.test_capacity_warning_once_at_9000` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_append`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step` |
| MRTM-SYS-023 | Power restore event | C (rigour 4) | `MRTM-SRS-016` | `SP-04`, `test_event_log.test_time_stamp_is_the_utc_second_of_the_post`, `test_power_mon.test_mains_loss_and_restore_are_logged_from_the_edge` | verified | `10-src/firmware/components/event_log/src/event_log.c#event_log_post`, `10-src/firmware/components/power_mon/src/power_mon.c#power_mon_isr`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now` |
| MRTM-SYS-024 | Early excursion alarm | C (rigour 4) | `MRTM-SRS-002` | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_early_alarm_clears_back_to_quiet`, `test_alarm_mgr.test_early_alarm_is_red_1_hz_without_buzzer_then_escalates`, `test_limit_evaluator.test_back_in_band_clears_the_early_alarm`, `test_limit_evaluator.test_early_alarm_budget_fits_5_s`, `test_limit_evaluator.test_first_out_sample_raises_the_early_alarm` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step` |

#### Software system requirement → System Requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SRS-001 | SRS sample period | C (rigour 4) | `MRTM-SYS-001` | `SP-01` | verified | — |
| MRTM-SRS-002 | SRS early alarm signal | C (rigour 4) | `MRTM-SYS-024` | `test_alarm_mgr.test_early_alarm_is_red_1_hz_without_buzzer_then_escalates`, `test_limit_evaluator.test_early_alarm_budget_fits_5_s` | verified | — |
| MRTM-SRS-003 | SRS excursion confirmation | C (rigour 4) | `MRTM-SYS-002` | `test_int_chains.test_int01_excursion_chain`, `test_limit_evaluator.test_early_alarm_budget_fits_5_s` | verified | — |
| MRTM-SRS-004 | SRS excursion end | C (rigour 4) | `MRTM-SYS-018` | `test_limit_evaluator.test_nth_consecutive_in_sample_ends_excursion` | verified | — |
| MRTM-SRS-005 | SRS invalid sample | C (rigour 4) | `MRTM-SYS-012` | `SP-02` | verified | — |
| MRTM-SRS-006 | SRS buzzer on | C (rigour 4) | `MRTM-SYS-003` | `test_int_chains.test_int01_excursion_chain` | verified | — |
| MRTM-SRS-007 | SRS buzzer off on acknowledge | C (rigour 4) | `MRTM-SYS-006` | `test_alarm_mgr.test_ack_stops_the_buzzer_in_the_same_step_and_logs` | verified | — |
| MRTM-SRS-008 | SRS alarm burst pattern | C (rigour 4) | `MRTM-SYS-003` | — | unverified | — |
| MRTM-SRS-009 | SRS excursion warning | C (rigour 4) | `MRTM-SYS-005`, `MRTM-SYS-007` | `test_int_chains.test_int01_excursion_chain` | verified | — |
| MRTM-SRS-010 | SRS temperature shown | C (rigour 4) | `MRTM-SYS-011` | `SP-09` | verified | — |
| MRTM-SRS-011 | SRS status messages | C (rigour 4) | `MRTM-SYS-013`, `MRTM-SYS-022` | `SP-05`, `SP-09` | verified | — |
| MRTM-SRS-012 | SRS record stored twice | C (rigour 4) | `MRTM-SYS-008`, `MRTM-SYS-009`, `MRTM-SYS-010` | `SP-07` | verified | — |
| MRTM-SRS-013 | SRS log capacity | C (rigour 4) | `MRTM-SYS-015` | `SP-07` | verified | — |
| MRTM-SRS-014 | SRS read-only export | C (rigour 4) | `MRTM-SYS-014` | `SP-08` | verified | — |
| MRTM-SRS-015 | SRS time stamp | C (rigour 4) | `MRTM-SYS-008`, `MRTM-SYS-020` | `SP-12` | verified | — |
| MRTM-SRS-016 | SRS power events | C (rigour 4) | `MRTM-SYS-023` | `test_int_chains.test_int05_power_loss_logged_within_1_s` | verified | — |
| MRTM-SRS-017 | SRS watchdog service stop | C (rigour 4) | none | `SP-03`, `test_int_chains.test_int02_watchdog_chain` | verified | — |
| MRTM-SRS-018 | SRS power-up tests | C (rigour 4) | none | `SP-05` | verified | — |
| MRTM-SRS-019 | SRS band integrity | C (rigour 4) | `MRTM-SYS-017` | `test_int_chains.test_int03_corrupt_config_fail_safe` | verified | — |

### Software system requirement ⇄ Sensor item requirement

#### Software system requirement → Sensor item requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SRS-001 | SRS sample period | C (rigour 4) | `MRTM-SNI-001` | `SP-01` | verified | — |
| MRTM-SRS-002 | SRS early alarm signal | C (rigour 4) | `MRTM-SNI-001` | `test_alarm_mgr.test_early_alarm_is_red_1_hz_without_buzzer_then_escalates`, `test_limit_evaluator.test_early_alarm_budget_fits_5_s` | verified | — |
| MRTM-SRS-003 | SRS excursion confirmation | C (rigour 4) | none | `test_int_chains.test_int01_excursion_chain`, `test_limit_evaluator.test_early_alarm_budget_fits_5_s` | verified | — |
| MRTM-SRS-004 | SRS excursion end | C (rigour 4) | none | `test_limit_evaluator.test_nth_consecutive_in_sample_ends_excursion` | verified | — |
| MRTM-SRS-005 | SRS invalid sample | C (rigour 4) | `MRTM-SNI-002` | `SP-02` | verified | — |
| MRTM-SRS-006 | SRS buzzer on | C (rigour 4) | none | `test_int_chains.test_int01_excursion_chain` | verified | — |
| MRTM-SRS-007 | SRS buzzer off on acknowledge | C (rigour 4) | none | `test_alarm_mgr.test_ack_stops_the_buzzer_in_the_same_step_and_logs` | verified | — |
| MRTM-SRS-008 | SRS alarm burst pattern | C (rigour 4) | none | — | unverified | — |
| MRTM-SRS-009 | SRS excursion warning | C (rigour 4) | none | `test_int_chains.test_int01_excursion_chain` | verified | — |
| MRTM-SRS-010 | SRS temperature shown | C (rigour 4) | none | `SP-09` | verified | — |
| MRTM-SRS-011 | SRS status messages | C (rigour 4) | none | `SP-05`, `SP-09` | verified | — |
| MRTM-SRS-012 | SRS record stored twice | C (rigour 4) | none | `SP-07` | verified | — |
| MRTM-SRS-013 | SRS log capacity | C (rigour 4) | none | `SP-07` | verified | — |
| MRTM-SRS-014 | SRS read-only export | C (rigour 4) | none | `SP-08` | verified | — |
| MRTM-SRS-015 | SRS time stamp | C (rigour 4) | none | `SP-12` | verified | — |
| MRTM-SRS-016 | SRS power events | C (rigour 4) | none | `test_int_chains.test_int05_power_loss_logged_within_1_s` | verified | — |
| MRTM-SRS-017 | SRS watchdog service stop | C (rigour 4) | none | `SP-03`, `test_int_chains.test_int02_watchdog_chain` | verified | — |
| MRTM-SRS-018 | SRS power-up tests | C (rigour 4) | none | `SP-05` | verified | — |
| MRTM-SRS-019 | SRS band integrity | C (rigour 4) | none | `test_int_chains.test_int03_corrupt_config_fail_safe` | verified | — |

#### Sensor item requirement → Software system requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SNI-001 | Sensor item conversion start | C (rigour 4) | `MRTM-SRS-001`, `MRTM-SRS-002` | `test_sensor_sampler.test_good_scratchpad_gives_a_valid_sample` | verified | `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_read` |
| MRTM-SNI-002 | Sensor item invalid sample | C (rigour 4) | `MRTM-SRS-005` | `test_sensor_sampler.test_bad_crc_is_invalid_but_not_out_of_range`, `test_sensor_sampler.test_reading_outside_minus30_to_50_declares_the_fault_at_once` | verified | `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_probe_fault` |

### Software system requirement ⇄ Excursion item requirement

#### Software system requirement → Excursion item requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SRS-001 | SRS sample period | C (rigour 4) | none | `SP-01` | verified | — |
| MRTM-SRS-002 | SRS early alarm signal | C (rigour 4) | `MRTM-EXI-001` | `test_alarm_mgr.test_early_alarm_is_red_1_hz_without_buzzer_then_escalates`, `test_limit_evaluator.test_early_alarm_budget_fits_5_s` | verified | — |
| MRTM-SRS-003 | SRS excursion confirmation | C (rigour 4) | `MRTM-EXI-002` | `test_int_chains.test_int01_excursion_chain`, `test_limit_evaluator.test_early_alarm_budget_fits_5_s` | verified | — |
| MRTM-SRS-004 | SRS excursion end | C (rigour 4) | `MRTM-EXI-003` | `test_limit_evaluator.test_nth_consecutive_in_sample_ends_excursion` | verified | — |
| MRTM-SRS-005 | SRS invalid sample | C (rigour 4) | none | `SP-02` | verified | — |
| MRTM-SRS-006 | SRS buzzer on | C (rigour 4) | none | `test_int_chains.test_int01_excursion_chain` | verified | — |
| MRTM-SRS-007 | SRS buzzer off on acknowledge | C (rigour 4) | none | `test_alarm_mgr.test_ack_stops_the_buzzer_in_the_same_step_and_logs` | verified | — |
| MRTM-SRS-008 | SRS alarm burst pattern | C (rigour 4) | none | — | unverified | — |
| MRTM-SRS-009 | SRS excursion warning | C (rigour 4) | none | `test_int_chains.test_int01_excursion_chain` | verified | — |
| MRTM-SRS-010 | SRS temperature shown | C (rigour 4) | none | `SP-09` | verified | — |
| MRTM-SRS-011 | SRS status messages | C (rigour 4) | none | `SP-05`, `SP-09` | verified | — |
| MRTM-SRS-012 | SRS record stored twice | C (rigour 4) | none | `SP-07` | verified | — |
| MRTM-SRS-013 | SRS log capacity | C (rigour 4) | none | `SP-07` | verified | — |
| MRTM-SRS-014 | SRS read-only export | C (rigour 4) | none | `SP-08` | verified | — |
| MRTM-SRS-015 | SRS time stamp | C (rigour 4) | none | `SP-12` | verified | — |
| MRTM-SRS-016 | SRS power events | C (rigour 4) | none | `test_int_chains.test_int05_power_loss_logged_within_1_s` | verified | — |
| MRTM-SRS-017 | SRS watchdog service stop | C (rigour 4) | none | `SP-03`, `test_int_chains.test_int02_watchdog_chain` | verified | — |
| MRTM-SRS-018 | SRS power-up tests | C (rigour 4) | none | `SP-05` | verified | — |
| MRTM-SRS-019 | SRS band integrity | C (rigour 4) | none | `test_int_chains.test_int03_corrupt_config_fail_safe` | verified | — |

#### Excursion item requirement → Software system requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-EXI-001 | Excursion item early report | C (rigour 4) | `MRTM-SRS-002` | `test_limit_evaluator.test_early_alarm_budget_fits_5_s`, `test_limit_evaluator.test_first_out_sample_raises_the_early_alarm` | verified | `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step` |
| MRTM-EXI-002 | Excursion item confirmation | C (rigour 4) | `MRTM-SRS-003` | `test_limit_evaluator.test_early_alarm_budget_fits_5_s`, `test_limit_evaluator.test_nth_consecutive_out_sample_confirms` | verified | `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step` |
| MRTM-EXI-003 | Excursion item end | C (rigour 4) | `MRTM-SRS-004` | `test_limit_evaluator.test_nth_consecutive_in_sample_ends_excursion` | verified | `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step` |

### Software system requirement ⇄ Alarm item requirement

#### Software system requirement → Alarm item requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SRS-001 | SRS sample period | C (rigour 4) | none | `SP-01` | verified | — |
| MRTM-SRS-002 | SRS early alarm signal | C (rigour 4) | `MRTM-ALI-001` | `test_alarm_mgr.test_early_alarm_is_red_1_hz_without_buzzer_then_escalates`, `test_limit_evaluator.test_early_alarm_budget_fits_5_s` | verified | — |
| MRTM-SRS-003 | SRS excursion confirmation | C (rigour 4) | none | `test_int_chains.test_int01_excursion_chain`, `test_limit_evaluator.test_early_alarm_budget_fits_5_s` | verified | — |
| MRTM-SRS-004 | SRS excursion end | C (rigour 4) | none | `test_limit_evaluator.test_nth_consecutive_in_sample_ends_excursion` | verified | — |
| MRTM-SRS-005 | SRS invalid sample | C (rigour 4) | none | `SP-02` | verified | — |
| MRTM-SRS-006 | SRS buzzer on | C (rigour 4) | `MRTM-ALI-002` | `test_int_chains.test_int01_excursion_chain` | verified | — |
| MRTM-SRS-007 | SRS buzzer off on acknowledge | C (rigour 4) | `MRTM-ALI-003` | `test_alarm_mgr.test_ack_stops_the_buzzer_in_the_same_step_and_logs` | verified | — |
| MRTM-SRS-008 | SRS alarm burst pattern | C (rigour 4) | none | — | unverified | — |
| MRTM-SRS-009 | SRS excursion warning | C (rigour 4) | none | `test_int_chains.test_int01_excursion_chain` | verified | — |
| MRTM-SRS-010 | SRS temperature shown | C (rigour 4) | none | `SP-09` | verified | — |
| MRTM-SRS-011 | SRS status messages | C (rigour 4) | none | `SP-05`, `SP-09` | verified | — |
| MRTM-SRS-012 | SRS record stored twice | C (rigour 4) | none | `SP-07` | verified | — |
| MRTM-SRS-013 | SRS log capacity | C (rigour 4) | none | `SP-07` | verified | — |
| MRTM-SRS-014 | SRS read-only export | C (rigour 4) | none | `SP-08` | verified | — |
| MRTM-SRS-015 | SRS time stamp | C (rigour 4) | none | `SP-12` | verified | — |
| MRTM-SRS-016 | SRS power events | C (rigour 4) | none | `test_int_chains.test_int05_power_loss_logged_within_1_s` | verified | — |
| MRTM-SRS-017 | SRS watchdog service stop | C (rigour 4) | `MRTM-ALI-004` | `SP-03`, `test_int_chains.test_int02_watchdog_chain` | verified | — |
| MRTM-SRS-018 | SRS power-up tests | C (rigour 4) | none | `SP-05` | verified | — |
| MRTM-SRS-019 | SRS band integrity | C (rigour 4) | none | `test_int_chains.test_int03_corrupt_config_fail_safe` | verified | — |

#### Alarm item requirement → Software system requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-ALI-001 | Alarm item early signal | C (rigour 4) | `MRTM-SRS-002` | `test_alarm_mgr.test_early_alarm_is_red_1_hz_without_buzzer_then_escalates` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take` |
| MRTM-ALI-002 | Alarm item buzzer on | C (rigour 4) | `MRTM-SRS-006` | `test_alarm_mgr.test_confirm_sounds_the_buzzer_and_flashes_red_at_2_hz` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-ALI-003 | Alarm item buzzer off | C (rigour 4) | `MRTM-SRS-007` | `test_alarm_mgr.test_ack_stops_the_buzzer_in_the_same_step_and_logs`, `test_alarm_mgr.test_button_debounce_50_ms` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_button_debounced` |
| MRTM-ALI-004 | Alarm item heartbeat | C (rigour 4) | `MRTM-SRS-017` | `test_alarm_mgr.test_heartbeat_moves_on_every_step` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_heartbeat` |

### Software system requirement ⇄ Display item requirement

#### Software system requirement → Display item requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SRS-001 | SRS sample period | C (rigour 4) | none | `SP-01` | verified | — |
| MRTM-SRS-002 | SRS early alarm signal | C (rigour 4) | none | `test_alarm_mgr.test_early_alarm_is_red_1_hz_without_buzzer_then_escalates`, `test_limit_evaluator.test_early_alarm_budget_fits_5_s` | verified | — |
| MRTM-SRS-003 | SRS excursion confirmation | C (rigour 4) | none | `test_int_chains.test_int01_excursion_chain`, `test_limit_evaluator.test_early_alarm_budget_fits_5_s` | verified | — |
| MRTM-SRS-004 | SRS excursion end | C (rigour 4) | none | `test_limit_evaluator.test_nth_consecutive_in_sample_ends_excursion` | verified | — |
| MRTM-SRS-005 | SRS invalid sample | C (rigour 4) | none | `SP-02` | verified | — |
| MRTM-SRS-006 | SRS buzzer on | C (rigour 4) | none | `test_int_chains.test_int01_excursion_chain` | verified | — |
| MRTM-SRS-007 | SRS buzzer off on acknowledge | C (rigour 4) | none | `test_alarm_mgr.test_ack_stops_the_buzzer_in_the_same_step_and_logs` | verified | — |
| MRTM-SRS-008 | SRS alarm burst pattern | C (rigour 4) | none | — | unverified | — |
| MRTM-SRS-009 | SRS excursion warning | C (rigour 4) | `MRTM-DSI-001` | `test_int_chains.test_int01_excursion_chain` | verified | — |
| MRTM-SRS-010 | SRS temperature shown | C (rigour 4) | `MRTM-DSI-002` | `SP-09` | verified | — |
| MRTM-SRS-011 | SRS status messages | C (rigour 4) | `MRTM-DSI-001` | `SP-05`, `SP-09` | verified | — |
| MRTM-SRS-012 | SRS record stored twice | C (rigour 4) | none | `SP-07` | verified | — |
| MRTM-SRS-013 | SRS log capacity | C (rigour 4) | none | `SP-07` | verified | — |
| MRTM-SRS-014 | SRS read-only export | C (rigour 4) | none | `SP-08` | verified | — |
| MRTM-SRS-015 | SRS time stamp | C (rigour 4) | none | `SP-12` | verified | — |
| MRTM-SRS-016 | SRS power events | C (rigour 4) | none | `test_int_chains.test_int05_power_loss_logged_within_1_s` | verified | — |
| MRTM-SRS-017 | SRS watchdog service stop | C (rigour 4) | none | `SP-03`, `test_int_chains.test_int02_watchdog_chain` | verified | — |
| MRTM-SRS-018 | SRS power-up tests | C (rigour 4) | none | `SP-05` | verified | — |
| MRTM-SRS-019 | SRS band integrity | C (rigour 4) | none | `test_int_chains.test_int03_corrupt_config_fail_safe` | verified | — |

#### Display item requirement → Software system requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-DSI-001 | Display item redraw | C (rigour 4) | `MRTM-SRS-009`, `MRTM-SRS-011` | `test_display_mgr.test_calibration_due_and_log_capacity_messages`, `test_display_mgr.test_excursion_warning_for_the_whole_excursion`, `test_display_mgr.test_probe_fault_message` | verified | `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_display_step` |
| MRTM-DSI-002 | Display item temperature | C (rigour 4) | `MRTM-SRS-010` | `test_display_mgr.test_temperature_refreshes_every_10_s_in_tenths` | verified | `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step` |

### Software system requirement ⇄ Log item requirement

#### Software system requirement → Log item requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SRS-001 | SRS sample period | C (rigour 4) | none | `SP-01` | verified | — |
| MRTM-SRS-002 | SRS early alarm signal | C (rigour 4) | none | `test_alarm_mgr.test_early_alarm_is_red_1_hz_without_buzzer_then_escalates`, `test_limit_evaluator.test_early_alarm_budget_fits_5_s` | verified | — |
| MRTM-SRS-003 | SRS excursion confirmation | C (rigour 4) | none | `test_int_chains.test_int01_excursion_chain`, `test_limit_evaluator.test_early_alarm_budget_fits_5_s` | verified | — |
| MRTM-SRS-004 | SRS excursion end | C (rigour 4) | none | `test_limit_evaluator.test_nth_consecutive_in_sample_ends_excursion` | verified | — |
| MRTM-SRS-005 | SRS invalid sample | C (rigour 4) | none | `SP-02` | verified | — |
| MRTM-SRS-006 | SRS buzzer on | C (rigour 4) | none | `test_int_chains.test_int01_excursion_chain` | verified | — |
| MRTM-SRS-007 | SRS buzzer off on acknowledge | C (rigour 4) | none | `test_alarm_mgr.test_ack_stops_the_buzzer_in_the_same_step_and_logs` | verified | — |
| MRTM-SRS-008 | SRS alarm burst pattern | C (rigour 4) | none | — | unverified | — |
| MRTM-SRS-009 | SRS excursion warning | C (rigour 4) | none | `test_int_chains.test_int01_excursion_chain` | verified | — |
| MRTM-SRS-010 | SRS temperature shown | C (rigour 4) | none | `SP-09` | verified | — |
| MRTM-SRS-011 | SRS status messages | C (rigour 4) | none | `SP-05`, `SP-09` | verified | — |
| MRTM-SRS-012 | SRS record stored twice | C (rigour 4) | `MRTM-LGI-001` | `SP-07` | verified | — |
| MRTM-SRS-013 | SRS log capacity | C (rigour 4) | `MRTM-LGI-002` | `SP-07` | verified | — |
| MRTM-SRS-014 | SRS read-only export | C (rigour 4) | none | `SP-08` | verified | — |
| MRTM-SRS-015 | SRS time stamp | C (rigour 4) | `MRTM-LGI-003` | `SP-12` | verified | — |
| MRTM-SRS-016 | SRS power events | C (rigour 4) | none | `test_int_chains.test_int05_power_loss_logged_within_1_s` | verified | — |
| MRTM-SRS-017 | SRS watchdog service stop | C (rigour 4) | none | `SP-03`, `test_int_chains.test_int02_watchdog_chain` | verified | — |
| MRTM-SRS-018 | SRS power-up tests | C (rigour 4) | none | `SP-05` | verified | — |
| MRTM-SRS-019 | SRS band integrity | C (rigour 4) | none | `test_int_chains.test_int03_corrupt_config_fail_safe` | verified | — |

#### Log item requirement → Software system requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-LGI-001 | Log item double write | C (rigour 4) | `MRTM-SRS-012` | `test_history_ring.test_append_writes_copy_a_and_copy_b` | verified | `10-src/firmware/components/event_log/src/event_log.c#event_log_step` |
| MRTM-LGI-002 | Log item ring | C (rigour 4) | `MRTM-SRS-013` | `test_history_ring.test_retains_10000_records_after_wrapping` | verified | `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_init` |
| MRTM-LGI-003 | Log item time stamp | C (rigour 4) | `MRTM-SRS-015` | `test_event_log.test_time_stamp_is_the_utc_second_of_the_post` | verified | `10-src/firmware/components/event_log/src/event_log.c#event_log_post` |

### Software system requirement ⇄ Usb item requirement

#### Software system requirement → Usb item requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SRS-001 | SRS sample period | C (rigour 4) | none | `SP-01` | verified | — |
| MRTM-SRS-002 | SRS early alarm signal | C (rigour 4) | none | `test_alarm_mgr.test_early_alarm_is_red_1_hz_without_buzzer_then_escalates`, `test_limit_evaluator.test_early_alarm_budget_fits_5_s` | verified | — |
| MRTM-SRS-003 | SRS excursion confirmation | C (rigour 4) | none | `test_int_chains.test_int01_excursion_chain`, `test_limit_evaluator.test_early_alarm_budget_fits_5_s` | verified | — |
| MRTM-SRS-004 | SRS excursion end | C (rigour 4) | none | `test_limit_evaluator.test_nth_consecutive_in_sample_ends_excursion` | verified | — |
| MRTM-SRS-005 | SRS invalid sample | C (rigour 4) | none | `SP-02` | verified | — |
| MRTM-SRS-006 | SRS buzzer on | C (rigour 4) | none | `test_int_chains.test_int01_excursion_chain` | verified | — |
| MRTM-SRS-007 | SRS buzzer off on acknowledge | C (rigour 4) | none | `test_alarm_mgr.test_ack_stops_the_buzzer_in_the_same_step_and_logs` | verified | — |
| MRTM-SRS-008 | SRS alarm burst pattern | C (rigour 4) | none | — | unverified | — |
| MRTM-SRS-009 | SRS excursion warning | C (rigour 4) | none | `test_int_chains.test_int01_excursion_chain` | verified | — |
| MRTM-SRS-010 | SRS temperature shown | C (rigour 4) | none | `SP-09` | verified | — |
| MRTM-SRS-011 | SRS status messages | C (rigour 4) | none | `SP-05`, `SP-09` | verified | — |
| MRTM-SRS-012 | SRS record stored twice | C (rigour 4) | none | `SP-07` | verified | — |
| MRTM-SRS-013 | SRS log capacity | C (rigour 4) | none | `SP-07` | verified | — |
| MRTM-SRS-014 | SRS read-only export | C (rigour 4) | `MRTM-USI-001`, `MRTM-USI-002` | `SP-08` | verified | — |
| MRTM-SRS-015 | SRS time stamp | C (rigour 4) | none | `SP-12` | verified | — |
| MRTM-SRS-016 | SRS power events | C (rigour 4) | none | `test_int_chains.test_int05_power_loss_logged_within_1_s` | verified | — |
| MRTM-SRS-017 | SRS watchdog service stop | C (rigour 4) | none | `SP-03`, `test_int_chains.test_int02_watchdog_chain` | verified | — |
| MRTM-SRS-018 | SRS power-up tests | C (rigour 4) | none | `SP-05` | verified | — |
| MRTM-SRS-019 | SRS band integrity | C (rigour 4) | none | `test_int_chains.test_int03_corrupt_config_fail_safe` | verified | — |

#### Usb item requirement → Software system requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-USI-001 | USB item read-only volume | B (rigour 2) | `MRTM-SRS-014` | `test_usb_export.test_history_csv_is_marked_read_only` | verified | `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_init` |
| MRTM-USI-002 | USB item write inhibit | B (rigour 2) | `MRTM-SRS-014` | `test_usb_export.test_every_write_is_refused` | verified | `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_write10` |

### Software system requirement ⇄ Power item requirement

#### Software system requirement → Power item requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SRS-001 | SRS sample period | C (rigour 4) | none | `SP-01` | verified | — |
| MRTM-SRS-002 | SRS early alarm signal | C (rigour 4) | none | `test_alarm_mgr.test_early_alarm_is_red_1_hz_without_buzzer_then_escalates`, `test_limit_evaluator.test_early_alarm_budget_fits_5_s` | verified | — |
| MRTM-SRS-003 | SRS excursion confirmation | C (rigour 4) | none | `test_int_chains.test_int01_excursion_chain`, `test_limit_evaluator.test_early_alarm_budget_fits_5_s` | verified | — |
| MRTM-SRS-004 | SRS excursion end | C (rigour 4) | none | `test_limit_evaluator.test_nth_consecutive_in_sample_ends_excursion` | verified | — |
| MRTM-SRS-005 | SRS invalid sample | C (rigour 4) | none | `SP-02` | verified | — |
| MRTM-SRS-006 | SRS buzzer on | C (rigour 4) | none | `test_int_chains.test_int01_excursion_chain` | verified | — |
| MRTM-SRS-007 | SRS buzzer off on acknowledge | C (rigour 4) | none | `test_alarm_mgr.test_ack_stops_the_buzzer_in_the_same_step_and_logs` | verified | — |
| MRTM-SRS-008 | SRS alarm burst pattern | C (rigour 4) | none | — | unverified | — |
| MRTM-SRS-009 | SRS excursion warning | C (rigour 4) | none | `test_int_chains.test_int01_excursion_chain` | verified | — |
| MRTM-SRS-010 | SRS temperature shown | C (rigour 4) | none | `SP-09` | verified | — |
| MRTM-SRS-011 | SRS status messages | C (rigour 4) | none | `SP-05`, `SP-09` | verified | — |
| MRTM-SRS-012 | SRS record stored twice | C (rigour 4) | none | `SP-07` | verified | — |
| MRTM-SRS-013 | SRS log capacity | C (rigour 4) | none | `SP-07` | verified | — |
| MRTM-SRS-014 | SRS read-only export | C (rigour 4) | none | `SP-08` | verified | — |
| MRTM-SRS-015 | SRS time stamp | C (rigour 4) | none | `SP-12` | verified | — |
| MRTM-SRS-016 | SRS power events | C (rigour 4) | `MRTM-PWI-001`, `MRTM-PWI-002` | `test_int_chains.test_int05_power_loss_logged_within_1_s` | verified | — |
| MRTM-SRS-017 | SRS watchdog service stop | C (rigour 4) | none | `SP-03`, `test_int_chains.test_int02_watchdog_chain` | verified | — |
| MRTM-SRS-018 | SRS power-up tests | C (rigour 4) | none | `SP-05` | verified | — |
| MRTM-SRS-019 | SRS band integrity | C (rigour 4) | none | `test_int_chains.test_int03_corrupt_config_fail_safe` | verified | — |

#### Power item requirement → Software system requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-PWI-001 | Power item mains events | C (rigour 4) | `MRTM-SRS-016` | `test_power_mon.test_mains_loss_and_restore_are_logged_from_the_edge` | verified | `10-src/firmware/components/power_mon/src/power_mon.c#power_mon_isr` |
| MRTM-PWI-002 | Power item battery low | C (rigour 4) | `MRTM-SRS-016` | `test_power_mon.test_battery_below_3400_mv_twice_sounds_the_buzzer` | verified | `10-src/firmware/components/power_mon/src/power_mon.c#power_mon_step` |

### Software system requirement ⇄ Supervisor item requirement

#### Software system requirement → Supervisor item requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SRS-001 | SRS sample period | C (rigour 4) | none | `SP-01` | verified | — |
| MRTM-SRS-002 | SRS early alarm signal | C (rigour 4) | none | `test_alarm_mgr.test_early_alarm_is_red_1_hz_without_buzzer_then_escalates`, `test_limit_evaluator.test_early_alarm_budget_fits_5_s` | verified | — |
| MRTM-SRS-003 | SRS excursion confirmation | C (rigour 4) | none | `test_int_chains.test_int01_excursion_chain`, `test_limit_evaluator.test_early_alarm_budget_fits_5_s` | verified | — |
| MRTM-SRS-004 | SRS excursion end | C (rigour 4) | none | `test_limit_evaluator.test_nth_consecutive_in_sample_ends_excursion` | verified | — |
| MRTM-SRS-005 | SRS invalid sample | C (rigour 4) | none | `SP-02` | verified | — |
| MRTM-SRS-006 | SRS buzzer on | C (rigour 4) | none | `test_int_chains.test_int01_excursion_chain` | verified | — |
| MRTM-SRS-007 | SRS buzzer off on acknowledge | C (rigour 4) | none | `test_alarm_mgr.test_ack_stops_the_buzzer_in_the_same_step_and_logs` | verified | — |
| MRTM-SRS-008 | SRS alarm burst pattern | C (rigour 4) | none | — | unverified | — |
| MRTM-SRS-009 | SRS excursion warning | C (rigour 4) | none | `test_int_chains.test_int01_excursion_chain` | verified | — |
| MRTM-SRS-010 | SRS temperature shown | C (rigour 4) | none | `SP-09` | verified | — |
| MRTM-SRS-011 | SRS status messages | C (rigour 4) | none | `SP-05`, `SP-09` | verified | — |
| MRTM-SRS-012 | SRS record stored twice | C (rigour 4) | none | `SP-07` | verified | — |
| MRTM-SRS-013 | SRS log capacity | C (rigour 4) | none | `SP-07` | verified | — |
| MRTM-SRS-014 | SRS read-only export | C (rigour 4) | none | `SP-08` | verified | — |
| MRTM-SRS-015 | SRS time stamp | C (rigour 4) | none | `SP-12` | verified | — |
| MRTM-SRS-016 | SRS power events | C (rigour 4) | none | `test_int_chains.test_int05_power_loss_logged_within_1_s` | verified | — |
| MRTM-SRS-017 | SRS watchdog service stop | C (rigour 4) | `MRTM-SVI-001` | `SP-03`, `test_int_chains.test_int02_watchdog_chain` | verified | — |
| MRTM-SRS-018 | SRS power-up tests | C (rigour 4) | `MRTM-SVI-002` | `SP-05` | verified | — |
| MRTM-SRS-019 | SRS band integrity | C (rigour 4) | `MRTM-SVI-003` | `test_int_chains.test_int03_corrupt_config_fail_safe` | verified | — |

#### Supervisor item requirement → Software system requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SVI-001 | Supervisor item pulse stop | C (rigour 4) | `MRTM-SRS-017` | `test_wdt_kicker.test_pulses_stop_within_2_s_of_a_missed_alarm_cycle` | verified | `10-src/firmware/components/wdt_kicker/src/wdt_kicker.c#wdt_kicker_step` |
| MRTM-SVI-002 | Supervisor item power-up tests | C (rigour 4) | `MRTM-SRS-018` | `test_diagnostics.test_power_up_tests_pass_inside_their_windows` | verified | `10-src/firmware/components/diagnostics/src/diagnostics.c#diagnostics_power_up` |
| MRTM-SVI-003 | Supervisor item band check | C (rigour 4) | `MRTM-SRS-019` | `test_config_mgr.test_bad_crc_is_refused_with_err_crc` | verified | `10-src/firmware/components/config_mgr/src/config_mgr.c#config_mgr_load` |

### Sensor item requirement ⇄ Sensor sampler requirement

#### Sensor item requirement → Sensor sampler requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SNI-001 | Sensor item conversion start | C (rigour 4) | `MRTM-SMP-001` | `test_sensor_sampler.test_good_scratchpad_gives_a_valid_sample` | verified | `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_read` |
| MRTM-SNI-002 | Sensor item invalid sample | C (rigour 4) | `MRTM-SMP-002` | `test_sensor_sampler.test_bad_crc_is_invalid_but_not_out_of_range`, `test_sensor_sampler.test_reading_outside_minus30_to_50_declares_the_fault_at_once` | verified | `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_probe_fault` |

#### Sensor sampler requirement → Sensor item requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SMP-001 | Sampler read contract | C (rigour 4) | `MRTM-SNI-001` | `test_sensor_sampler.test_good_scratchpad_gives_a_valid_sample` | verified | `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_read` |
| MRTM-SMP-002 | Sampler invalid flag | C (rigour 4) | `MRTM-SNI-002` | `test_sensor_sampler.test_bad_crc_is_invalid_but_not_out_of_range`, `test_sensor_sampler.test_reading_outside_minus30_to_50_declares_the_fault_at_once` | verified | `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_probe_fault` |

### Excursion item requirement ⇄ Limit evaluator requirement

#### Excursion item requirement → Limit evaluator requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-EXI-001 | Excursion item early report | C (rigour 4) | `MRTM-LEV-001` | `test_limit_evaluator.test_early_alarm_budget_fits_5_s`, `test_limit_evaluator.test_first_out_sample_raises_the_early_alarm` | verified | `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step` |
| MRTM-EXI-002 | Excursion item confirmation | C (rigour 4) | `MRTM-LEV-002` | `test_limit_evaluator.test_early_alarm_budget_fits_5_s`, `test_limit_evaluator.test_nth_consecutive_out_sample_confirms` | verified | `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step` |
| MRTM-EXI-003 | Excursion item end | C (rigour 4) | `MRTM-LEV-003` | `test_limit_evaluator.test_nth_consecutive_in_sample_ends_excursion` | verified | `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step` |

#### Limit evaluator requirement → Excursion item requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-LEV-001 | Evaluator early event | C (rigour 4) | `MRTM-EXI-001` | `test_limit_evaluator.test_early_alarm_budget_fits_5_s`, `test_limit_evaluator.test_first_out_sample_raises_the_early_alarm` | verified | `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step` |
| MRTM-LEV-002 | Evaluator confirm event | C (rigour 4) | `MRTM-EXI-002` | `test_limit_evaluator.test_early_alarm_budget_fits_5_s`, `test_limit_evaluator.test_nth_consecutive_out_sample_confirms` | verified | `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step` |
| MRTM-LEV-003 | Evaluator end event | C (rigour 4) | `MRTM-EXI-003` | `test_limit_evaluator.test_nth_consecutive_in_sample_ends_excursion` | verified | `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step` |

### Alarm item requirement ⇄ Alarm mgr requirement

#### Alarm item requirement → Alarm mgr requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-ALI-001 | Alarm item early signal | C (rigour 4) | `MRTM-AMG-001` | `test_alarm_mgr.test_early_alarm_is_red_1_hz_without_buzzer_then_escalates` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take` |
| MRTM-ALI-002 | Alarm item buzzer on | C (rigour 4) | `MRTM-AMG-002` | `test_alarm_mgr.test_confirm_sounds_the_buzzer_and_flashes_red_at_2_hz` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-ALI-003 | Alarm item buzzer off | C (rigour 4) | `MRTM-AMG-003` | `test_alarm_mgr.test_ack_stops_the_buzzer_in_the_same_step_and_logs`, `test_alarm_mgr.test_button_debounce_50_ms` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_button_debounced` |
| MRTM-ALI-004 | Alarm item heartbeat | C (rigour 4) | `MRTM-AMG-004` | `test_alarm_mgr.test_heartbeat_moves_on_every_step` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_heartbeat` |

#### Alarm mgr requirement → Alarm item requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-AMG-001 | Alarm manager early output | C (rigour 4) | `MRTM-ALI-001` | `test_alarm_mgr.test_early_alarm_is_red_1_hz_without_buzzer_then_escalates` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take` |
| MRTM-AMG-002 | Alarm manager buzzer on | C (rigour 4) | `MRTM-ALI-002` | `test_alarm_mgr.test_confirm_sounds_the_buzzer_and_flashes_red_at_2_hz` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-AMG-003 | Alarm manager acknowledge | C (rigour 4) | `MRTM-ALI-003` | `test_alarm_mgr.test_ack_stops_the_buzzer_in_the_same_step_and_logs`, `test_alarm_mgr.test_button_debounce_50_ms` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_button_debounced` |
| MRTM-AMG-004 | Alarm manager heartbeat | C (rigour 4) | `MRTM-ALI-004` | `test_alarm_mgr.test_heartbeat_moves_on_every_step` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_heartbeat` |

### Display item requirement ⇄ Display mgr requirement

#### Display item requirement → Display mgr requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-DSI-001 | Display item redraw | C (rigour 4) | `MRTM-DMG-001` | `test_display_mgr.test_calibration_due_and_log_capacity_messages`, `test_display_mgr.test_excursion_warning_for_the_whole_excursion`, `test_display_mgr.test_probe_fault_message` | verified | `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_display_step` |
| MRTM-DSI-002 | Display item temperature | C (rigour 4) | `MRTM-DMG-002` | `test_display_mgr.test_temperature_refreshes_every_10_s_in_tenths` | verified | `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step` |

#### Display mgr requirement → Display item requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-DMG-001 | Display manager messages | C (rigour 4) | `MRTM-DSI-001` | `test_display_mgr.test_calibration_due_and_log_capacity_messages`, `test_display_mgr.test_excursion_warning_for_the_whole_excursion`, `test_display_mgr.test_probe_fault_message` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw` |
| MRTM-DMG-002 | Display manager digits | C (rigour 4) | `MRTM-DSI-002` | `test_display_mgr.test_temperature_refreshes_every_10_s_in_tenths` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#renderFrame` |

### Log item requirement ⇄ Event log requirement

#### Log item requirement → Event log requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-LGI-001 | Log item double write | C (rigour 4) | `MRTM-EVL-001` | `test_history_ring.test_append_writes_copy_a_and_copy_b` | verified | `10-src/firmware/components/event_log/src/event_log.c#event_log_step` |
| MRTM-LGI-002 | Log item ring | C (rigour 4) | none | `test_history_ring.test_retains_10000_records_after_wrapping` | verified | `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_init` |
| MRTM-LGI-003 | Log item time stamp | C (rigour 4) | `MRTM-EVL-002` | `test_event_log.test_time_stamp_is_the_utc_second_of_the_post` | verified | `10-src/firmware/components/event_log/src/event_log.c#event_log_post` |

#### Event log requirement → Log item requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-EVL-001 | Event log checksum | C (rigour 4) | `MRTM-LGI-001` | `test_event_log.test_step_numbers_checksums_and_stores_every_queued_record` | verified | `10-src/firmware/components/event_log/src/event_log.c#event_log_step` |
| MRTM-EVL-002 | Event log time stamp | C (rigour 4) | `MRTM-LGI-003` | `test_event_log.test_time_stamp_is_the_utc_second_of_the_post` | verified | `10-src/firmware/components/event_log/src/event_log.c#event_log_post` |

### Log item requirement ⇄ History ring requirement

#### Log item requirement → History ring requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-LGI-001 | Log item double write | C (rigour 4) | `MRTM-HRG-001` | `test_history_ring.test_append_writes_copy_a_and_copy_b` | verified | `10-src/firmware/components/event_log/src/event_log.c#event_log_step` |
| MRTM-LGI-002 | Log item ring | C (rigour 4) | `MRTM-HRG-002` | `test_history_ring.test_retains_10000_records_after_wrapping` | verified | `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_init` |
| MRTM-LGI-003 | Log item time stamp | C (rigour 4) | none | `test_event_log.test_time_stamp_is_the_utc_second_of_the_post` | verified | `10-src/firmware/components/event_log/src/event_log.c#event_log_post` |

#### History ring requirement → Log item requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-HRG-001 | History ring two copies | C (rigour 4) | `MRTM-LGI-001` | `test_history_ring.test_append_writes_copy_a_and_copy_b` | verified | `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_append` |
| MRTM-HRG-002 | History ring wrap | C (rigour 4) | `MRTM-LGI-002` | `test_history_ring.test_retains_10000_records_after_wrapping` | verified | `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_init` |

### Log item requirement ⇄ Rtc clock requirement

#### Log item requirement → Rtc clock requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-LGI-001 | Log item double write | C (rigour 4) | none | `test_history_ring.test_append_writes_copy_a_and_copy_b` | verified | `10-src/firmware/components/event_log/src/event_log.c#event_log_step` |
| MRTM-LGI-002 | Log item ring | C (rigour 4) | none | `test_history_ring.test_retains_10000_records_after_wrapping` | verified | `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_init` |
| MRTM-LGI-003 | Log item time stamp | C (rigour 4) | `MRTM-RTK-001` | `test_event_log.test_time_stamp_is_the_utc_second_of_the_post` | verified | `10-src/firmware/components/event_log/src/event_log.c#event_log_post` |

#### Rtc clock requirement → Log item requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-RTK-001 | RTC clock second | C (rigour 4) | `MRTM-LGI-003` | `test_rtc_clock.test_now_is_the_rtc_copy_refreshed_each_second` | verified | `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now` |

### Usb item requirement ⇄ Usb export requirement

#### Usb item requirement → Usb export requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-USI-001 | USB item read-only volume | B (rigour 2) | `MRTM-UXP-001` | `test_usb_export.test_history_csv_is_marked_read_only` | verified | `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_init` |
| MRTM-USI-002 | USB item write inhibit | B (rigour 2) | `MRTM-UXP-002` | `test_usb_export.test_every_write_is_refused` | verified | `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_write10` |

#### Usb export requirement → Usb item requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-UXP-001 | USB export read-only file | B (rigour 2) | `MRTM-USI-001` | `test_usb_export.test_history_csv_is_marked_read_only` | verified | `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_init` |
| MRTM-UXP-002 | USB export write refusal | B (rigour 2) | `MRTM-USI-002` | `test_usb_export.test_every_write_is_refused` | verified | `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_write10` |

### Power item requirement ⇄ Power mon requirement

#### Power item requirement → Power mon requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-PWI-001 | Power item mains events | C (rigour 4) | `MRTM-PMN-001` | `test_power_mon.test_mains_loss_and_restore_are_logged_from_the_edge` | verified | `10-src/firmware/components/power_mon/src/power_mon.c#power_mon_isr` |
| MRTM-PWI-002 | Power item battery low | C (rigour 4) | `MRTM-PMN-002` | `test_power_mon.test_battery_below_3400_mv_twice_sounds_the_buzzer` | verified | `10-src/firmware/components/power_mon/src/power_mon.c#power_mon_step` |

#### Power mon requirement → Power item requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-PMN-001 | Power monitor edge | C (rigour 4) | `MRTM-PWI-001` | `test_power_mon.test_mains_loss_and_restore_are_logged_from_the_edge` | verified | `10-src/firmware/components/power_mon/src/power_mon.c#power_mon_isr` |
| MRTM-PMN-002 | Power monitor battery | C (rigour 4) | `MRTM-PWI-002` | `test_power_mon.test_battery_below_3400_mv_twice_sounds_the_buzzer` | verified | `10-src/firmware/components/power_mon/src/power_mon.c#power_mon_step` |

### Supervisor item requirement ⇄ Wdt kicker requirement

#### Supervisor item requirement → Wdt kicker requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SVI-001 | Supervisor item pulse stop | C (rigour 4) | `MRTM-WDK-001` | `test_wdt_kicker.test_pulses_stop_within_2_s_of_a_missed_alarm_cycle` | verified | `10-src/firmware/components/wdt_kicker/src/wdt_kicker.c#wdt_kicker_step` |
| MRTM-SVI-002 | Supervisor item power-up tests | C (rigour 4) | none | `test_diagnostics.test_power_up_tests_pass_inside_their_windows` | verified | `10-src/firmware/components/diagnostics/src/diagnostics.c#diagnostics_power_up` |
| MRTM-SVI-003 | Supervisor item band check | C (rigour 4) | none | `test_config_mgr.test_bad_crc_is_refused_with_err_crc` | verified | `10-src/firmware/components/config_mgr/src/config_mgr.c#config_mgr_load` |

#### Wdt kicker requirement → Supervisor item requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-WDK-001 | Watchdog kicker stop | C (rigour 4) | `MRTM-SVI-001` | `test_wdt_kicker.test_pulses_stop_within_2_s_of_a_missed_alarm_cycle` | verified | `10-src/firmware/components/wdt_kicker/src/wdt_kicker.c#wdt_kicker_step` |

### Supervisor item requirement ⇄ Diagnostics requirement

#### Supervisor item requirement → Diagnostics requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SVI-001 | Supervisor item pulse stop | C (rigour 4) | none | `test_wdt_kicker.test_pulses_stop_within_2_s_of_a_missed_alarm_cycle` | verified | `10-src/firmware/components/wdt_kicker/src/wdt_kicker.c#wdt_kicker_step` |
| MRTM-SVI-002 | Supervisor item power-up tests | C (rigour 4) | `MRTM-DGN-001` | `test_diagnostics.test_power_up_tests_pass_inside_their_windows` | verified | `10-src/firmware/components/diagnostics/src/diagnostics.c#diagnostics_power_up` |
| MRTM-SVI-003 | Supervisor item band check | C (rigour 4) | none | `test_config_mgr.test_bad_crc_is_refused_with_err_crc` | verified | `10-src/firmware/components/config_mgr/src/config_mgr.c#config_mgr_load` |

#### Diagnostics requirement → Supervisor item requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-DGN-001 | Diagnostics power-up verdict | C (rigour 4) | `MRTM-SVI-002` | `test_diagnostics.test_power_up_tests_pass_inside_their_windows`, `test_diagnostics.test_silent_buzzer_fails_the_power_up_test` | verified | `10-src/firmware/components/diagnostics/src/diagnostics.c#diagnostics_power_up` |

### Supervisor item requirement ⇄ Config mgr requirement

#### Supervisor item requirement → Config mgr requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SVI-001 | Supervisor item pulse stop | C (rigour 4) | none | `test_wdt_kicker.test_pulses_stop_within_2_s_of_a_missed_alarm_cycle` | verified | `10-src/firmware/components/wdt_kicker/src/wdt_kicker.c#wdt_kicker_step` |
| MRTM-SVI-002 | Supervisor item power-up tests | C (rigour 4) | none | `test_diagnostics.test_power_up_tests_pass_inside_their_windows` | verified | `10-src/firmware/components/diagnostics/src/diagnostics.c#diagnostics_power_up` |
| MRTM-SVI-003 | Supervisor item band check | C (rigour 4) | `MRTM-CFG-001` | `test_config_mgr.test_bad_crc_is_refused_with_err_crc` | verified | `10-src/firmware/components/config_mgr/src/config_mgr.c#config_mgr_load` |

#### Config mgr requirement → Supervisor item requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-CFG-001 | Config manager CRC refusal | C (rigour 4) | `MRTM-SVI-003` | `test_config_mgr.test_bad_crc_is_refused_with_err_crc` | verified | `10-src/firmware/components/config_mgr/src/config_mgr.c#config_mgr_load` |

### Requirements ⇄ Allocated items

**Objective:** ARP4754A 5.3, *allocation of requirements to items*; and DO-178C Table A-2 objective 1, *high-level requirements are developed* — from the system requirements allocated to software.

#### Requirements → Allocated items (requirement to allocated item)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-ALI-001 | Alarm item early signal | C (rigour 4) | `alarmSwItem` | `test_alarm_mgr.test_early_alarm_is_red_1_hz_without_buzzer_then_escalates` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take` |
| MRTM-ALI-002 | Alarm item buzzer on | C (rigour 4) | `alarmSwItem` | `test_alarm_mgr.test_confirm_sounds_the_buzzer_and_flashes_red_at_2_hz` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-ALI-003 | Alarm item buzzer off | C (rigour 4) | `alarmSwItem` | `test_alarm_mgr.test_ack_stops_the_buzzer_in_the_same_step_and_logs`, `test_alarm_mgr.test_button_debounce_50_ms` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_button_debounced` |
| MRTM-ALI-004 | Alarm item heartbeat | C (rigour 4) | `alarmSwItem` | `test_alarm_mgr.test_heartbeat_moves_on_every_step` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_heartbeat` |
| MRTM-AMG-001 | Alarm manager early output | C (rigour 4) | `alarmMgrUnit` | `test_alarm_mgr.test_early_alarm_is_red_1_hz_without_buzzer_then_escalates` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take` |
| MRTM-AMG-002 | Alarm manager buzzer on | C (rigour 4) | `alarmMgrUnit` | `test_alarm_mgr.test_confirm_sounds_the_buzzer_and_flashes_red_at_2_hz` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-AMG-003 | Alarm manager acknowledge | C (rigour 4) | `alarmMgrUnit` | `test_alarm_mgr.test_ack_stops_the_buzzer_in_the_same_step_and_logs`, `test_alarm_mgr.test_button_debounce_50_ms` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_button_debounced` |
| MRTM-AMG-004 | Alarm manager heartbeat | C (rigour 4) | `alarmMgrUnit` | `test_alarm_mgr.test_heartbeat_moves_on_every_step` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_heartbeat` |
| MRTM-CFG-001 | Config manager CRC refusal | C (rigour 4) | `configMgrUnit` | `test_config_mgr.test_bad_crc_is_refused_with_err_crc` | verified | `10-src/firmware/components/config_mgr/src/config_mgr.c#config_mgr_load` |
| MRTM-DGN-001 | Diagnostics power-up verdict | C (rigour 4) | `diagnosticsUnit` | `test_diagnostics.test_power_up_tests_pass_inside_their_windows`, `test_diagnostics.test_silent_buzzer_fails_the_power_up_test` | verified | `10-src/firmware/components/diagnostics/src/diagnostics.c#diagnostics_power_up` |
| MRTM-DMG-001 | Display manager messages | C (rigour 4) | `displayMgrUnit` | `test_display_mgr.test_calibration_due_and_log_capacity_messages`, `test_display_mgr.test_excursion_warning_for_the_whole_excursion`, `test_display_mgr.test_probe_fault_message` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw` |
| MRTM-DMG-002 | Display manager digits | C (rigour 4) | `displayMgrUnit` | `test_display_mgr.test_temperature_refreshes_every_10_s_in_tenths` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#renderFrame` |
| MRTM-DSI-001 | Display item redraw | C (rigour 4) | `displaySwItem` | `test_display_mgr.test_calibration_due_and_log_capacity_messages`, `test_display_mgr.test_excursion_warning_for_the_whole_excursion`, `test_display_mgr.test_probe_fault_message` | verified | `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_display_step` |
| MRTM-DSI-002 | Display item temperature | C (rigour 4) | `displaySwItem` | `test_display_mgr.test_temperature_refreshes_every_10_s_in_tenths` | verified | `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step` |
| MRTM-ENV-001 | Battery endurance | C (rigour 4) | `device` | `SP-04` | verified | — |
| MRTM-ENV-002 | Ambient temperature | C (rigour 4) | `device` | `SP-11` | verified | — |
| MRTM-ENV-003 | Humidity | C (rigour 4) | `device` | `SP-11` | verified | — |
| MRTM-ENV-004 | Probe environment | C (rigour 4) | `device` | `SP-10` | verified | — |
| MRTM-EVL-001 | Event log checksum | C (rigour 4) | `eventLogUnit` | `test_event_log.test_step_numbers_checksums_and_stores_every_queued_record` | verified | `10-src/firmware/components/event_log/src/event_log.c#event_log_step` |
| MRTM-EVL-002 | Event log time stamp | C (rigour 4) | `eventLogUnit` | `test_event_log.test_time_stamp_is_the_utc_second_of_the_post` | verified | `10-src/firmware/components/event_log/src/event_log.c#event_log_post` |
| MRTM-EXI-001 | Excursion item early report | C (rigour 4) | `excursionSwItem` | `test_limit_evaluator.test_early_alarm_budget_fits_5_s`, `test_limit_evaluator.test_first_out_sample_raises_the_early_alarm` | verified | `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step` |
| MRTM-EXI-002 | Excursion item confirmation | C (rigour 4) | `excursionSwItem` | `test_limit_evaluator.test_early_alarm_budget_fits_5_s`, `test_limit_evaluator.test_nth_consecutive_out_sample_confirms` | verified | `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step` |
| MRTM-EXI-003 | Excursion item end | C (rigour 4) | `excursionSwItem` | `test_limit_evaluator.test_nth_consecutive_in_sample_ends_excursion` | verified | `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step` |
| MRTM-HRG-001 | History ring two copies | C (rigour 4) | `historyRingUnit` | `test_history_ring.test_append_writes_copy_a_and_copy_b` | verified | `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_append` |
| MRTM-HRG-002 | History ring wrap | C (rigour 4) | `historyRingUnit` | `test_history_ring.test_retains_10000_records_after_wrapping` | verified | `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_init` |
| MRTM-HWI-001 | Probe conversion time | C (rigour 4) | `hardwareItem` | `SP-10`, `test_limit_evaluator.test_early_alarm_budget_fits_5_s` | verified | — |
| MRTM-HWI-002 | Probe accuracy | C (rigour 4) | `hardwareItem` | `SP-10` | verified | — |
| MRTM-HWI-003 | Probe scratchpad check | C (rigour 4) | `hardwareItem` | `SP-10` | verified | — |
| MRTM-HWI-004 | Buzzer loudness | C (rigour 4) | `hardwareItem` | `SP-06` | verified | — |
| MRTM-HWI-005 | Red indicator response | C (rigour 4) | `hardwareItem` | `SP-01` | verified | — |
| MRTM-HWI-006 | Acknowledge contact | C (rigour 4) | `hardwareItem` | `SP-01` | verified | — |
| MRTM-HWI-007 | Backup alarm timeout | C (rigour 4) | `hardwareItem` | `SP-03`, `test_int_chains.test_int02_watchdog_chain` | verified | — |
| MRTM-HWI-008 | Backup alarm hold-up | C (rigour 4) | `hardwareItem` | `SP-03` | verified | — |
| MRTM-HWI-009 | Display digit height | C (rigour 4) | `hardwareItem` | `SP-09` | verified | — |
| MRTM-HWI-010 | Clock drift | C (rigour 4) | `hardwareItem` | `SP-12` | verified | — |
| MRTM-HWI-011 | Power path switch-over | C (rigour 4) | `hardwareItem` | `SP-04` | verified | — |
| MRTM-HWI-012 | Battery endurance | C (rigour 4) | `hardwareItem` | `SP-04` | verified | — |
| MRTM-HWI-013 | Processor watchdog reset | C (rigour 4) | `hardwareItem` | `SP-03` | verified | — |
| MRTM-IFC-001 | Probe bus | C (rigour 4) | `device` | `SP-10`, `test_sensor_sampler.test_error_codes_arg_and_bus`, `test_sensor_sampler.test_good_scratchpad_gives_a_valid_sample` | verified | `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_init`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_read` |
| MRTM-IFC-002 | Acknowledge input | C (rigour 4) | `device` | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_button_debounce_50_ms` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_button_debounced`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_button_isr` |
| MRTM-IFC-003 | USB readout | C (rigour 4) | `device` | `SP-08`, `test_usb_export.test_boot_sector_is_a_fat12_volume`, `test_usb_export.test_csv_lines_oldest_first_newest_last`, `test_usb_export.test_every_write_is_refused`, `test_usb_export.test_history_csv_is_marked_read_only` | verified | `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_init`, `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_read10`, `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_write10` |
| MRTM-IFC-004 | Display character height | C (rigour 4) | `device` | `SP-09` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw` |
| MRTM-LEV-001 | Evaluator early event | C (rigour 4) | `limitEvaluatorUnit` | `test_limit_evaluator.test_early_alarm_budget_fits_5_s`, `test_limit_evaluator.test_first_out_sample_raises_the_early_alarm` | verified | `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step` |
| MRTM-LEV-002 | Evaluator confirm event | C (rigour 4) | `limitEvaluatorUnit` | `test_limit_evaluator.test_early_alarm_budget_fits_5_s`, `test_limit_evaluator.test_nth_consecutive_out_sample_confirms` | verified | `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step` |
| MRTM-LEV-003 | Evaluator end event | C (rigour 4) | `limitEvaluatorUnit` | `test_limit_evaluator.test_nth_consecutive_in_sample_ends_excursion` | verified | `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step` |
| MRTM-LGI-001 | Log item double write | C (rigour 4) | `logSwItem` | `test_history_ring.test_append_writes_copy_a_and_copy_b` | verified | `10-src/firmware/components/event_log/src/event_log.c#event_log_step` |
| MRTM-LGI-002 | Log item ring | C (rigour 4) | `logSwItem` | `test_history_ring.test_retains_10000_records_after_wrapping` | verified | `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_init` |
| MRTM-LGI-003 | Log item time stamp | C (rigour 4) | `logSwItem` | `test_event_log.test_time_stamp_is_the_utc_second_of_the_post` | verified | `10-src/firmware/components/event_log/src/event_log.c#event_log_post` |
| MRTM-MNT-001 | Probe replacement | C (rigour 4) | `device` | `SP-10` | verified | — |
| MRTM-MNT-002 | Battery level | C (rigour 4) | `device` | `SP-09`, `test_display_mgr.test_battery_shown_in_steps_of_10_percent` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step` |
| MRTM-MNT-003 | Firmware version | C (rigour 4) | `device` | `SP-05`, `test_display_mgr.test_band_and_version_shown_in_the_first_3_s` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/display_mgr/src/display_mgr.cpp#renderFrame`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_power_up` |
| MRTM-PMN-001 | Power monitor edge | C (rigour 4) | `powerMonUnit` | `test_power_mon.test_mains_loss_and_restore_are_logged_from_the_edge` | verified | `10-src/firmware/components/power_mon/src/power_mon.c#power_mon_isr` |
| MRTM-PMN-002 | Power monitor battery | C (rigour 4) | `powerMonUnit` | `test_power_mon.test_battery_below_3400_mv_twice_sounds_the_buzzer` | verified | `10-src/firmware/components/power_mon/src/power_mon.c#power_mon_step` |
| MRTM-PRF-001 | Measurement accuracy | C (rigour 4) | `device` | `SP-10`, `test_sensor_sampler.test_conversion_rounds_to_a_tenth_and_adds_the_offset` | verified | `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_to_tenths` |
| MRTM-PRF-002 | End-to-end alert time | C (rigour 4) | `device` | `SP-01`, `SP-01-H`, `test_int_chains.test_int01_excursion_chain` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-PRF-003 | Log readout time | C (rigour 4) | `device` | `SP-08`, `test_usb_export.test_full_history_fits_and_fat_chain_ends` | verified | `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_read10` |
| MRTM-PRF-004 | Display refresh | C (rigour 4) | `device` | `SP-09`, `test_display_mgr.test_temperature_refreshes_every_10_s_in_tenths` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#display_mgr_tick`, `10-src/firmware/components/display_mgr/src/display_mgr.cpp#renderFrame` |
| MRTM-PWI-001 | Power item mains events | C (rigour 4) | `powerSwItem` | `test_power_mon.test_mains_loss_and_restore_are_logged_from_the_edge` | verified | `10-src/firmware/components/power_mon/src/power_mon.c#power_mon_isr` |
| MRTM-PWI-002 | Power item battery low | C (rigour 4) | `powerSwItem` | `test_power_mon.test_battery_below_3400_mv_twice_sounds_the_buzzer` | verified | `10-src/firmware/components/power_mon/src/power_mon.c#power_mon_step` |
| MRTM-RTK-001 | RTC clock second | C (rigour 4) | `rtcClockUnit` | `test_rtc_clock.test_now_is_the_rtc_copy_refreshed_each_second` | verified | `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now` |
| MRTM-SAF-001 | Buzzer loudness | C (rigour 4) | `device` | `SP-06` | verified | — |
| MRTM-SAF-002 | Probe fault raises alert | C (rigour 4) | `device` | `SP-02`, `test_alarm_mgr.test_probe_fault_sounds_1_s_on_1_s_off` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step` |
| MRTM-SAF-003 | Implausible sample | C (rigour 4) | `device` | `SP-02`, `test_sensor_sampler.test_reading_outside_minus30_to_50_declares_the_fault_at_once` | verified | `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_probe_fault`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_read` |
| MRTM-SAF-004 | Watchdog restart | C (rigour 4) | `device` | `SP-03`, `test_wdt_kicker.test_task_watchdog_armed_at_5_s` | verified | `10-src/firmware/components/wdt_kicker/src/wdt_kicker.c#wdt_kicker_init` |
| MRTM-SAF-005 | Log power loss | C (rigour 4) | `device` | `SP-04`, `test_int_chains.test_int05_power_loss_logged_within_1_s`, `test_power_mon.test_mains_loss_and_restore_are_logged_from_the_edge` | verified | `10-src/firmware/components/power_mon/src/power_mon.c#power_mon_isr` |
| MRTM-SAF-006 | Alert survives restart | C (rigour 4) | `device` | `SP-05`, `test_alarm_mgr.test_acknowledged_alarm_is_not_restored_as_sounding`, `test_alarm_mgr.test_error_codes_full_and_nvs`, `test_alarm_mgr.test_unacknowledged_alarm_is_restored_after_a_restart`, `test_int_chains.test_int04_restart_restores_the_alarm` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_init`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_power_up` |
| MRTM-SAF-007 | Buzzer self-test | C (rigour 4) | `device` | `SP-05`, `test_diagnostics.test_power_up_tests_pass_inside_their_windows`, `test_diagnostics.test_silent_buzzer_fails_the_power_up_test` | verified | `10-src/firmware/components/diagnostics/src/diagnostics.c#diagnostics_power_up` |
| MRTM-SAF-008 | Low battery alarm | C (rigour 4) | `device` | `SP-04`, `test_alarm_mgr.test_battery_low_or_fail_safe_forces_the_buzzer`, `test_power_mon.test_battery_below_3400_mv_twice_sounds_the_buzzer` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step`, `10-src/firmware/components/power_mon/src/power_mon.c#power_mon_step` |
| MRTM-SAF-009 | Backup alarm on firmware silence | C (rigour 4) | `device` | `SP-03`, `test_int_chains.test_int02_watchdog_chain` | verified | `10-src/firmware/components/wdt_kicker/src/wdt_kicker.c#wdt_kicker_step` |
| MRTM-SAF-010 | Watchdog tied to the alarm service | C (rigour 4) | `device` | `SP-03`, `test_alarm_mgr.test_heartbeat_moves_on_every_step`, `test_int_chains.test_int02_watchdog_chain`, `test_wdt_kicker.test_pulses_stop_within_2_s_of_a_missed_alarm_cycle`, `test_wdt_kicker.test_pulses_while_the_heartbeat_moves` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_heartbeat`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step`, `10-src/firmware/components/wdt_kicker/src/wdt_kicker.c#wdt_kicker_step` |
| MRTM-SAF-011 | Fault tone differs from excursion tone | C (rigour 4) | `device` | `SP-02`, `test_alarm_mgr.test_probe_fault_sounds_1_s_on_1_s_off` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SAF-012 | Probe calibration due | C (rigour 4) | `device` | `SP-09`, `test_display_mgr.test_calibration_due_and_log_capacity_messages` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step` |
| MRTM-SAF-013 | Alarm on total power loss | C (rigour 4) | `device` | `SP-03` | verified | — |
| MRTM-SAF-014 | Buzzer open-circuit detection | C (rigour 4) | `device` | `SP-06`, `test_alarm_mgr.test_no_buzzer_current_for_5_steps_declares_buzzer_fault_red_4_hz` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SAF-015 | Diverse signal for buzzer fault | C (rigour 4) | `device` | `SP-06`, `test_alarm_mgr.test_no_buzzer_current_for_5_steps_declares_buzzer_fault_red_4_hz` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SAF-016 | Show the band at power-up | C (rigour 4) | `device` | `SP-05`, `test_display_mgr.test_band_and_version_shown_in_the_first_3_s` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#display_mgr_init`, `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/display_mgr/src/display_mgr.cpp#renderFrame`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_power_up` |
| MRTM-SAF-017 | Band integrity check | C (rigour 4) | `device` | `SP-05`, `test_alarm_mgr.test_battery_low_or_fail_safe_forces_the_buzzer`, `test_config_mgr.test_bad_crc_is_refused_with_err_crc`, `test_config_mgr.test_missing_record_is_err_nvs`, `test_config_mgr.test_store_writes_a_fresh_crc_and_logs_config_changed`, `test_int_chains.test_int03_corrupt_config_fail_safe` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step`, `10-src/firmware/components/config_mgr/src/config_mgr.c#config_mgr_load`, `10-src/firmware/components/config_mgr/src/config_mgr.c#config_mgr_store`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_power_up`, `10-src/firmware/components/mrtm_common/src/mrtm_crc.c#mrtm_crc32` |
| MRTM-SAF-018 | Two copies of every record | C (rigour 4) | `device` | `SP-07`, `test_event_log.test_error_code_full_after_32`, `test_event_log.test_flash_failure_does_not_loop`, `test_event_log.test_step_numbers_checksums_and_stores_every_queued_record`, `test_history_ring.test_append_writes_copy_a_and_copy_b`, `test_history_ring.test_corrupt_copy_a_is_read_from_copy_b`, `test_history_ring.test_error_codes_flash_arg` | verified | `10-src/firmware/components/event_log/src/event_log.c#event_log_step`, `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_append` |
| MRTM-SAF-019 | Stuck acknowledge button | C (rigour 4) | `device` | `SP-01`, `test_alarm_mgr.test_button_held_60_s_is_a_button_fault_and_ignored` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_button_debounced`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SAF-020 | Probe placement in the instructions | C (rigour 4) | `device` | `SP-14` | verified | — |
| MRTM-SAF-021 | I2C bus recovery | C (rigour 4) | `device` | `SP-09`, `test_display_mgr.test_i2c_timeout_resets_the_bus_within_1_s` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#recoverBus` |
| MRTM-SAF-022 | Clock stop detection | C (rigour 4) | `device` | `SP-05`, `test_rtc_clock.test_error_codes_bus_and_arg`, `test_rtc_clock.test_oscillator_stop_at_power_up_logs_clock_fault` | verified | `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_power_up`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_init` |
| MRTM-SAF-023 | Backup alarm power-up test | C (rigour 4) | `device` | `SP-05`, `test_diagnostics.test_backup_alarm_not_heard_fails_and_pulses_resume`, `test_diagnostics.test_power_up_tests_pass_inside_their_windows`, `test_wdt_kicker.test_hold_stops_pulses_and_release_resumes` | verified | `10-src/firmware/components/diagnostics/src/diagnostics.c#diagnostics_power_up` |
| MRTM-SMP-001 | Sampler read contract | C (rigour 4) | `sensorSamplerUnit` | `test_sensor_sampler.test_good_scratchpad_gives_a_valid_sample` | verified | `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_read` |
| MRTM-SMP-002 | Sampler invalid flag | C (rigour 4) | `sensorSamplerUnit` | `test_sensor_sampler.test_bad_crc_is_invalid_but_not_out_of_range`, `test_sensor_sampler.test_reading_outside_minus30_to_50_declares_the_fault_at_once` | verified | `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_probe_fault` |
| MRTM-SNI-001 | Sensor item conversion start | C (rigour 4) | `sensorSwItem` | `test_sensor_sampler.test_good_scratchpad_gives_a_valid_sample` | verified | `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_read` |
| MRTM-SNI-002 | Sensor item invalid sample | C (rigour 4) | `sensorSwItem` | `test_sensor_sampler.test_bad_crc_is_invalid_but_not_out_of_range`, `test_sensor_sampler.test_reading_outside_minus30_to_50_declares_the_fault_at_once` | verified | `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_probe_fault` |
| MRTM-SRS-001 | SRS sample period | C (rigour 4) | `softwareSystem` | `SP-01` | verified | — |
| MRTM-SRS-002 | SRS early alarm signal | C (rigour 4) | `softwareSystem` | `test_alarm_mgr.test_early_alarm_is_red_1_hz_without_buzzer_then_escalates`, `test_limit_evaluator.test_early_alarm_budget_fits_5_s` | verified | — |
| MRTM-SRS-003 | SRS excursion confirmation | C (rigour 4) | `softwareSystem` | `test_int_chains.test_int01_excursion_chain`, `test_limit_evaluator.test_early_alarm_budget_fits_5_s` | verified | — |
| MRTM-SRS-004 | SRS excursion end | C (rigour 4) | `softwareSystem` | `test_limit_evaluator.test_nth_consecutive_in_sample_ends_excursion` | verified | — |
| MRTM-SRS-005 | SRS invalid sample | C (rigour 4) | `softwareSystem` | `SP-02` | verified | — |
| MRTM-SRS-006 | SRS buzzer on | C (rigour 4) | `softwareSystem` | `test_int_chains.test_int01_excursion_chain` | verified | — |
| MRTM-SRS-007 | SRS buzzer off on acknowledge | C (rigour 4) | `softwareSystem` | `test_alarm_mgr.test_ack_stops_the_buzzer_in_the_same_step_and_logs` | verified | — |
| MRTM-SRS-008 | SRS alarm burst pattern | C (rigour 4) | `softwareSystem` | — | unverified | — |
| MRTM-SRS-009 | SRS excursion warning | C (rigour 4) | `softwareSystem` | `test_int_chains.test_int01_excursion_chain` | verified | — |
| MRTM-SRS-010 | SRS temperature shown | C (rigour 4) | `softwareSystem` | `SP-09` | verified | — |
| MRTM-SRS-011 | SRS status messages | C (rigour 4) | `softwareSystem` | `SP-05`, `SP-09` | verified | — |
| MRTM-SRS-012 | SRS record stored twice | C (rigour 4) | `softwareSystem` | `SP-07` | verified | — |
| MRTM-SRS-013 | SRS log capacity | C (rigour 4) | `softwareSystem` | `SP-07` | verified | — |
| MRTM-SRS-014 | SRS read-only export | C (rigour 4) | `softwareSystem` | `SP-08` | verified | — |
| MRTM-SRS-015 | SRS time stamp | C (rigour 4) | `softwareSystem` | `SP-12` | verified | — |
| MRTM-SRS-016 | SRS power events | C (rigour 4) | `softwareSystem` | `test_int_chains.test_int05_power_loss_logged_within_1_s` | verified | — |
| MRTM-SRS-017 | SRS watchdog service stop | C (rigour 4) | `softwareSystem` | `SP-03`, `test_int_chains.test_int02_watchdog_chain` | verified | — |
| MRTM-SRS-018 | SRS power-up tests | C (rigour 4) | `softwareSystem` | `SP-05` | verified | — |
| MRTM-SRS-019 | SRS band integrity | C (rigour 4) | `softwareSystem` | `test_int_chains.test_int03_corrupt_config_fail_safe` | verified | — |
| MRTM-STK-001 | Alert on excursion | C (rigour 4) | `device` | `SP-01` | verified | — |
| MRTM-STK-002 | No alert on brief door opening | C (rigour 4) | `device` | `SP-01`, `test_alarm_mgr.test_early_alarm_is_red_1_hz_without_buzzer_then_escalates`, `test_limit_evaluator.test_back_in_band_clears_the_early_alarm`, `test_limit_evaluator.test_n_minus_one_out_then_one_in_does_not_confirm` | verified | — |
| MRTM-STK-003 | Silence the alert | C (rigour 4) | `device` | `SP-01` | verified | — |
| MRTM-STK-004 | See the temperature | C (rigour 4) | `device` | `SP-09` | verified | — |
| MRTM-STK-005 | Audit history | C (rigour 4) | `device` | `SP-08` | verified | — |
| MRTM-STK-006 | History cannot be edited | C (rigour 4) | `device` | `SP-08`, `test_usb_export.test_every_write_is_refused` | verified | — |
| MRTM-STK-007 | Probe failure is visible | C (rigour 4) | `device` | `SP-02` | verified | — |
| MRTM-STK-008 | Monitoring through a power cut | C (rigour 4) | `device` | `SP-04` | verified | — |
| MRTM-SVI-001 | Supervisor item pulse stop | C (rigour 4) | `supervisorSwItem` | `test_wdt_kicker.test_pulses_stop_within_2_s_of_a_missed_alarm_cycle` | verified | `10-src/firmware/components/wdt_kicker/src/wdt_kicker.c#wdt_kicker_step` |
| MRTM-SVI-002 | Supervisor item power-up tests | C (rigour 4) | `supervisorSwItem` | `test_diagnostics.test_power_up_tests_pass_inside_their_windows` | verified | `10-src/firmware/components/diagnostics/src/diagnostics.c#diagnostics_power_up` |
| MRTM-SVI-003 | Supervisor item band check | C (rigour 4) | `supervisorSwItem` | `test_config_mgr.test_bad_crc_is_refused_with_err_crc` | verified | `10-src/firmware/components/config_mgr/src/config_mgr.c#config_mgr_load` |
| MRTM-SYS-001 | Sampling period | C (rigour 4) | `device` | `SP-01`, `SP-01-H`, `test_sensor_sampler.test_good_scratchpad_gives_a_valid_sample` | verified | `10-src/config/mrtm_config.h#off`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_read` |
| MRTM-SYS-002 | Excursion confirmation | C (rigour 4) | `device` | `SP-01`, `SP-01-H`, `test_int_chains.test_int01_excursion_chain`, `test_limit_evaluator.test_invalid_sample_neither_counts_nor_resets`, `test_limit_evaluator.test_n_minus_one_out_then_one_in_does_not_confirm`, `test_limit_evaluator.test_nth_consecutive_out_sample_confirms` | verified | `10-src/config/mrtm_config.h#off`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step` |
| MRTM-SYS-003 | Buzzer on excursion | C (rigour 4) | `device` | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_confirm_sounds_the_buzzer_and_flashes_red_at_2_hz`, `test_int_chains.test_int01_excursion_chain` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take` |
| MRTM-SYS-004 | Red indicator on excursion | C (rigour 4) | `device` | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_confirm_sounds_the_buzzer_and_flashes_red_at_2_hz` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SYS-005 | Warning on excursion | C (rigour 4) | `device` | `SP-01`, `SP-01-H`, `test_display_mgr.test_excursion_warning_for_the_whole_excursion`, `test_int_chains.test_int01_excursion_chain` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/display_mgr/src/display_mgr.cpp#renderFrame`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_display_step` |
| MRTM-SYS-006 | Acknowledge silences buzzer | C (rigour 4) | `device` | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_ack_stops_the_buzzer_in_the_same_step_and_logs` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_button_debounced`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_post`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take` |
| MRTM-SYS-007 | Warning stays while excursion is open | C (rigour 4) | `device` | `SP-01`, `test_display_mgr.test_excursion_warning_for_the_whole_excursion` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw` |
| MRTM-SYS-008 | Log excursion start | C (rigour 4) | `device` | `SP-01`, `SP-01-H`, `test_event_log.test_time_stamp_is_the_utc_second_of_the_post`, `test_int_chains.test_int01_excursion_chain`, `test_usb_export.test_csv_lines_oldest_first_newest_last` | verified | `10-src/firmware/components/event_log/src/event_log.c#event_log_post`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now` |
| MRTM-SYS-009 | Log excursion end | C (rigour 4) | `device` | `SP-01`, `SP-01-H`, `test_event_log.test_end_record_carries_the_peak_in_tenths`, `test_limit_evaluator.test_peak_below_band_counts_distance_downwards`, `test_limit_evaluator.test_peak_is_the_most_extreme_sample` | verified | `10-src/firmware/components/event_log/src/event_log.c#event_log_post`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_peak`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step` |
| MRTM-SYS-010 | Log acknowledgement | C (rigour 4) | `device` | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_ack_stops_the_buzzer_in_the_same_step_and_logs`, `test_event_log.test_time_stamp_is_the_utc_second_of_the_post` | verified | `10-src/firmware/components/event_log/src/event_log.c#event_log_post`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now` |
| MRTM-SYS-011 | Display resolution | C (rigour 4) | `device` | `SP-09`, `test_display_mgr.test_temperature_refreshes_every_10_s_in_tenths`, `test_sensor_sampler.test_conversion_rounds_to_a_tenth_and_adds_the_offset` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_to_tenths` |
| MRTM-SYS-012 | Probe fault detection | C (rigour 4) | `device` | `SP-02`, `test_mrtm_common.test_crc8_over_a_scratchpad`, `test_mrtm_common.test_crc_check_values`, `test_sensor_sampler.test_bad_crc_is_invalid_but_not_out_of_range`, `test_sensor_sampler.test_fault_after_30_s_without_a_correct_crc`, `test_sensor_sampler.test_fault_clears_on_the_next_valid_sample` | verified | `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step`, `10-src/firmware/components/mrtm_common/src/mrtm_crc.c#mrtm_crc8_maxim`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_probe_fault`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_read` |
| MRTM-SYS-013 | Probe fault message | C (rigour 4) | `device` | `SP-02`, `test_display_mgr.test_probe_fault_message` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/display_mgr/src/display_mgr.cpp#renderFrame`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_display_step` |
| MRTM-SYS-014 | Read-only event log | C (rigour 4) | `device` | `SP-08`, `test_usb_export.test_every_write_is_refused`, `test_usb_export.test_history_csv_is_marked_read_only` | verified | `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_init`, `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_write10` |
| MRTM-SYS-015 | Event log capacity | C (rigour 4) | `device` | `SP-07`, `test_history_ring.test_init_finds_the_head_again_after_a_restart`, `test_history_ring.test_retains_10000_records_after_wrapping`, `test_history_ring.test_retains_10000_straight_after_an_erase_ahead`, `test_usb_export.test_full_history_fits_and_fat_chain_ends` | verified | `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_append`, `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_init`, `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_read` |
| MRTM-SYS-016 | Battery operation | C (rigour 4) | `device` | `SP-04` | verified | — |
| MRTM-SYS-017 | Allowed band | C (rigour 4) | `device` | `SP-13`, `test_config_mgr.test_band_outside_2_to_8_is_refused`, `test_config_mgr.test_valid_record_loads_the_2_to_8_degree_band`, `test_limit_evaluator.test_band_edges_two_and_eight_degrees_are_inside` | verified | `10-src/firmware/components/config_mgr/src/config_mgr.c#config_mgr_load`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_init`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step` |
| MRTM-SYS-018 | Excursion end confirmation | C (rigour 4) | `device` | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_end_returns_to_quiet_from_sounding_and_silenced`, `test_limit_evaluator.test_hysteresis_knob_is_zero`, `test_limit_evaluator.test_nth_consecutive_in_sample_ends_excursion`, `test_limit_evaluator.test_out_sample_restarts_the_in_run` | verified | `10-src/config/mrtm_config.h#off`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step` |
| MRTM-SYS-019 | Alarm comes back after silence | C (rigour 4) | `device` | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_re_sounds_15_minutes_after_the_ack` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SYS-020 | Clock drift | C (rigour 4) | `device` | `SP-12`, `test_rtc_clock.test_now_is_the_rtc_copy_refreshed_each_second` | verified | `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_tick` |
| MRTM-SYS-021 | Event log integrity | C (rigour 4) | `device` | `SP-07`, `test_history_ring.test_both_copies_corrupt_reports_err_crc_and_logs_it`, `test_history_ring.test_corrupt_copy_a_is_read_from_copy_b`, `test_mrtm_common.test_crc_check_values`, `test_usb_export.test_unreadable_record_is_a_corrupt_line` | verified | `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_read`, `10-src/firmware/components/mrtm_common/src/mrtm_crc.c#mrtm_crc32` |
| MRTM-SYS-022 | Log capacity warning | C (rigour 4) | `device` | `SP-07`, `test_display_mgr.test_calibration_due_and_log_capacity_messages`, `test_history_ring.test_capacity_warning_once_at_9000` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_append`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step` |
| MRTM-SYS-023 | Power restore event | C (rigour 4) | `device` | `SP-04`, `test_event_log.test_time_stamp_is_the_utc_second_of_the_post`, `test_power_mon.test_mains_loss_and_restore_are_logged_from_the_edge` | verified | `10-src/firmware/components/event_log/src/event_log.c#event_log_post`, `10-src/firmware/components/power_mon/src/power_mon.c#power_mon_isr`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now` |
| MRTM-SYS-024 | Early excursion alarm | C (rigour 4) | `device` | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_early_alarm_clears_back_to_quiet`, `test_alarm_mgr.test_early_alarm_is_red_1_hz_without_buzzer_then_escalates`, `test_limit_evaluator.test_back_in_band_clears_the_early_alarm`, `test_limit_evaluator.test_early_alarm_budget_fits_5_s`, `test_limit_evaluator.test_first_out_sample_raises_the_early_alarm` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step` |
| MRTM-USI-001 | USB item read-only volume | B (rigour 2) | `usbSwItem` | `test_usb_export.test_history_csv_is_marked_read_only` | verified | `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_init` |
| MRTM-USI-002 | USB item write inhibit | B (rigour 2) | `usbSwItem` | `test_usb_export.test_every_write_is_refused` | verified | `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_write10` |
| MRTM-UXP-001 | USB export read-only file | B (rigour 2) | `usbExportUnit` | `test_usb_export.test_history_csv_is_marked_read_only` | verified | `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_init` |
| MRTM-UXP-002 | USB export write refusal | B (rigour 2) | `usbExportUnit` | `test_usb_export.test_every_write_is_refused` | verified | `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_write10` |
| MRTM-WDK-001 | Watchdog kicker stop | C (rigour 4) | `wdtKickerUnit` | `test_wdt_kicker.test_pulses_stop_within_2_s_of_a_missed_alarm_cycle` | verified | `10-src/firmware/components/wdt_kicker/src/wdt_kicker.c#wdt_kicker_step` |

#### Allocated items → Requirements (item to requirements)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| AckButton |  | not classified | none | — | n/a — allocated item | — |
| AlarmItem |  | not classified | none | — | n/a — allocated item | — |
| AlarmMgr |  | not classified | none | — | n/a — allocated item | — |
| AlarmMgrUnit |  | not classified | none | — | n/a — allocated item | — |
| AlarmSwItem |  | not classified | none | — | n/a — allocated item | — |
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
| ConfigMgrUnit |  | not classified | none | — | n/a — allocated item | — |
| DeviceWhiteBox |  | not classified | none | — | n/a — allocated item | — |
| Diagnostics |  | not classified | none | — | n/a — allocated item | — |
| DiagnosticsUnit |  | not classified | none | — | n/a — allocated item | — |
| DisplayItem |  | not classified | none | — | n/a — allocated item | — |
| DisplayMgr |  | not classified | none | — | n/a — allocated item | — |
| DisplayMgrUnit |  | not classified | none | — | n/a — allocated item | — |
| DisplaySwItem |  | not classified | none | — | n/a — allocated item | — |
| DisplayTask |  | not classified | none | — | n/a — allocated item | — |
| Ds18b20 |  | not classified | none | — | n/a — allocated item | — |
| Ds18b20Probe |  | not classified | none | — | n/a — allocated item | — |
| Esp32Module |  | not classified | none | — | n/a — allocated item | — |
| Esp32S3Module |  | not classified | none | — | n/a — allocated item | — |
| EventLog |  | not classified | none | — | n/a — allocated item | — |
| EventLogUnit |  | not classified | none | — | n/a — allocated item | — |
| ExcursionItem |  | not classified | none | — | n/a — allocated item | — |
| ExcursionSwItem |  | not classified | none | — | n/a — allocated item | — |
| FrameBuffer |  | not classified | none | — | n/a — allocated item | — |
| Fridge |  | not classified | none | — | n/a — allocated item | — |
| HardwareItem |  | not classified | none | — | n/a — allocated item | — |
| HardwareItemWhiteBox |  | not classified | none | — | n/a — allocated item | — |
| HistoryRingStore |  | not classified | none | — | n/a — allocated item | — |
| HistoryRingUnit |  | not classified | none | — | n/a — allocated item | — |
| HoldUpCapacitor |  | not classified | none | — | n/a — allocated item | — |
| IconWidget |  | not classified | none | — | n/a — allocated item | — |
| IndicatorLed |  | not classified | none | — | n/a — allocated item | — |
| Led |  | not classified | none | — | n/a — allocated item | — |
| LiIonCell |  | not classified | none | — | n/a — allocated item | — |
| LimitEvaluator |  | not classified | none | — | n/a — allocated item | — |
| LimitEvaluatorUnit |  | not classified | none | — | n/a — allocated item | — |
| LogItem |  | not classified | none | — | n/a — allocated item | — |
| LogSwItem |  | not classified | none | — | n/a — allocated item | — |
| LogTask |  | not classified | none | — | n/a — allocated item | — |
| LogicalMonitor |  | not classified | none | — | n/a — allocated item | — |
| MainsSupply |  | not classified | none | — | n/a — allocated item | — |
| MedicalDevice |  | not classified | none | — | n/a — allocated item | — |
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
| PowerMonUnit |  | not classified | none | — | n/a — allocated item | — |
| PowerPath |  | not classified | none | — | n/a — allocated item | — |
| PowerSwItem |  | not classified | none | — | n/a — allocated item | — |
| QualityOfficer |  | not classified | none | — | n/a — allocated item | — |
| RtcChip |  | not classified | none | — | n/a — allocated item | — |
| RtcClock |  | not classified | none | — | n/a — allocated item | — |
| RtcClockUnit |  | not classified | none | — | n/a — allocated item | — |
| RtosTask |  | not classified | none | — | n/a — allocated item | — |
| Screen |  | not classified | none | — | n/a — allocated item | — |
| SensorItem |  | not classified | none | — | n/a — allocated item | — |
| SensorSampler |  | not classified | none | — | n/a — allocated item | — |
| SensorSamplerUnit |  | not classified | none | — | n/a — allocated item | — |
| SensorSwItem |  | not classified | none | — | n/a — allocated item | — |
| SensorTask |  | not classified | none | — | n/a — allocated item | — |
| SoftwareSystem |  | not classified | none | — | n/a — allocated item | — |
| SoftwareSystemWhiteBox |  | not classified | none | — | n/a — allocated item | — |
| Ssd1306Driver |  | not classified | none | — | n/a — allocated item | — |
| Staff |  | not classified | none | — | n/a — allocated item | — |
| Supercap |  | not classified | none | — | n/a — allocated item | — |
| SupervisorItem |  | not classified | none | — | n/a — allocated item | — |
| SupervisorSwItem |  | not classified | none | — | n/a — allocated item | — |
| SupervisorTask |  | not classified | none | — | n/a — allocated item | — |
| TactileButton |  | not classified | none | — | n/a — allocated item | — |
| TcxoRtc |  | not classified | none | — | n/a — allocated item | — |
| Technician |  | not classified | none | — | n/a — allocated item | — |
| TextWidget |  | not classified | none | — | n/a — allocated item | — |
| UsbExport |  | not classified | none | — | n/a — allocated item | — |
| UsbExportUnit |  | not classified | none | — | n/a — allocated item | — |
| UsbHost |  | not classified | none | — | n/a — allocated item | — |
| UsbItem |  | not classified | none | — | n/a — allocated item | — |
| UsbSwItem |  | not classified | none | — | n/a — allocated item | — |
| UsbTask |  | not classified | none | — | n/a — allocated item | — |
| WatchdogAlarmTimer |  | not classified | none | — | n/a — allocated item | — |
| WdtKicker |  | not classified | none | — | n/a — allocated item | — |
| WdtKickerUnit |  | not classified | none | — | n/a — allocated item | — |
| Widget |  | not classified | none | — | n/a — allocated item | — |
| ackButton |  | not classified | none | — | n/a — allocated item | — |
| alarmItem |  | not classified | none | — | n/a — allocated item | — |
| alarmManager |  | not classified | none | — | n/a — allocated item | — |
| alarmMgr |  | not classified | none | — | n/a — allocated item | — |
| alarmMgrApi |  | not classified | none | — | n/a — allocated item | — |
| alarmMgrUnit |  | not classified | `MRTM-AMG-001`, `MRTM-AMG-002`, `MRTM-AMG-003`, `MRTM-AMG-004` | — | n/a — allocated item | — |
| alarmService |  | not classified | none | — | n/a — allocated item | — |
| alarmSwItem |  | not classified | `MRTM-ALI-001`, `MRTM-ALI-002`, `MRTM-ALI-003`, `MRTM-ALI-004` | — | n/a — allocated item | — |
| alarmTask |  | not classified | none | — | n/a — allocated item | — |
| backupAlarm |  | not classified | none | — | n/a — allocated item | — |
| backupTimer |  | not classified | none | — | n/a — allocated item | — |
| banner |  | not classified | none | — | n/a — allocated item | — |
| battery |  | not classified | none | — | n/a — allocated item | — |
| board |  | not classified | none | — | n/a — allocated item | — |
| buzzer |  | not classified | none | — | n/a — allocated item | — |
| configMgr |  | not classified | none | — | n/a — allocated item | — |
| configMgrApi |  | not classified | none | — | n/a — allocated item | — |
| configMgrUnit |  | not classified | `MRTM-CFG-001` | — | n/a — allocated item | — |
| device |  | not classified | `MRTM-ENV-001`, `MRTM-ENV-002`, `MRTM-ENV-003`, `MRTM-ENV-004`, `MRTM-IFC-001`, `MRTM-IFC-002`, `MRTM-IFC-003`, `MRTM-IFC-004`, `MRTM-MNT-001`, `MRTM-MNT-002`, `MRTM-MNT-003`, `MRTM-PRF-001`, `MRTM-PRF-002`, `MRTM-PRF-003`, `MRTM-PRF-004`, `MRTM-SAF-001`, `MRTM-SAF-002`, `MRTM-SAF-003`, `MRTM-SAF-004`, `MRTM-SAF-005`, `MRTM-SAF-006`, `MRTM-SAF-007`, `MRTM-SAF-008`, `MRTM-SAF-009`, `MRTM-SAF-010`, `MRTM-SAF-011`, `MRTM-SAF-012`, `MRTM-SAF-013`, `MRTM-SAF-014`, `MRTM-SAF-015`, `MRTM-SAF-016`, `MRTM-SAF-017`, `MRTM-SAF-018`, `MRTM-SAF-019`, `MRTM-SAF-020`, `MRTM-SAF-021`, `MRTM-SAF-022`, `MRTM-SAF-023`, `MRTM-STK-001`, `MRTM-STK-002`, `MRTM-STK-003`, `MRTM-STK-004`, `MRTM-STK-005`, `MRTM-STK-006`, `MRTM-STK-007`, `MRTM-STK-008`, `MRTM-SYS-001`, `MRTM-SYS-002`, `MRTM-SYS-003`, `MRTM-SYS-004`, `MRTM-SYS-005`, `MRTM-SYS-006`, `MRTM-SYS-007`, `MRTM-SYS-008`, `MRTM-SYS-009`, `MRTM-SYS-010`, `MRTM-SYS-011`, `MRTM-SYS-012`, `MRTM-SYS-013`, `MRTM-SYS-014`, `MRTM-SYS-015`, `MRTM-SYS-016`, `MRTM-SYS-017`, `MRTM-SYS-018`, `MRTM-SYS-019`, `MRTM-SYS-020`, `MRTM-SYS-021`, `MRTM-SYS-022`, `MRTM-SYS-023`, `MRTM-SYS-024` | — | n/a — allocated item | — |
| diagnostics |  | not classified | none | — | n/a — allocated item | — |
| diagnosticsApi |  | not classified | none | — | n/a — allocated item | — |
| diagnosticsUnit |  | not classified | `MRTM-DGN-001` | — | n/a — allocated item | — |
| displayItem |  | not classified | none | — | n/a — allocated item | — |
| displayMgr |  | not classified | none | — | n/a — allocated item | — |
| displayMgrApi |  | not classified | none | — | n/a — allocated item | — |
| displayMgrUnit |  | not classified | `MRTM-DMG-001`, `MRTM-DMG-002` | — | n/a — allocated item | — |
| displayService |  | not classified | none | — | n/a — allocated item | — |
| displaySwItem |  | not classified | `MRTM-DSI-001`, `MRTM-DSI-002` | — | n/a — allocated item | — |
| displayTask |  | not classified | none | — | n/a — allocated item | — |
| driver |  | not classified | none | — | n/a — allocated item | — |
| esp32 |  | not classified | none | — | n/a — allocated item | — |
| evaluator |  | not classified | none | — | n/a — allocated item | — |
| eventLog |  | not classified | none | — | n/a — allocated item | — |
| eventLogApi |  | not classified | none | — | n/a — allocated item | — |
| eventLogUnit |  | not classified | `MRTM-EVL-001`, `MRTM-EVL-002` | — | n/a — allocated item | — |
| eventLogger |  | not classified | none | — | n/a — allocated item | — |
| excursionDetector |  | not classified | none | — | n/a — allocated item | — |
| excursionItem |  | not classified | none | — | n/a — allocated item | — |
| excursionService |  | not classified | none | — | n/a — allocated item | — |
| excursionSwItem |  | not classified | `MRTM-EXI-001`, `MRTM-EXI-002`, `MRTM-EXI-003` | — | n/a — allocated item | — |
| faultAlarm |  | not classified | none | — | n/a — allocated item | — |
| faultBuzzer |  | not classified | none | — | n/a — allocated item | — |
| faultDisplay |  | not classified | none | — | n/a — allocated item | — |
| faultLogger |  | not classified | none | — | n/a — allocated item | — |
| faultProbe |  | not classified | none | — | n/a — allocated item | — |
| faultSampler |  | not classified | none | — | n/a — allocated item | — |
| fb |  | not classified | none | — | n/a — allocated item | — |
| firmware |  | not classified | none | — | n/a — allocated item | — |
| fridge |  | not classified | none | — | n/a — allocated item | — |
| functions |  | not classified | none | — | n/a — allocated item | — |
| greenLed |  | not classified | none | — | n/a — allocated item | — |
| hardware |  | not classified | none | — | n/a — allocated item | — |
| hardwareItem |  | not classified | `MRTM-HWI-001`, `MRTM-HWI-002`, `MRTM-HWI-003`, `MRTM-HWI-004`, `MRTM-HWI-005`, `MRTM-HWI-006`, `MRTM-HWI-007`, `MRTM-HWI-008`, `MRTM-HWI-009`, `MRTM-HWI-010`, `MRTM-HWI-011`, `MRTM-HWI-012`, `MRTM-HWI-013` | — | n/a — allocated item | — |
| historyRing |  | not classified | none | — | n/a — allocated item | — |
| historyRingApi |  | not classified | none | — | n/a — allocated item | — |
| historyRingUnit |  | not classified | `MRTM-HRG-001`, `MRTM-HRG-002` | — | n/a — allocated item | — |
| historyServer |  | not classified | none | — | n/a — allocated item | — |
| holdUp |  | not classified | none | — | n/a — allocated item | — |
| holdUpCap |  | not classified | none | — | n/a — allocated item | — |
| icon |  | not classified | none | — | n/a — allocated item | — |
| limitEvaluator |  | not classified | none | — | n/a — allocated item | — |
| limitEvaluatorApi |  | not classified | none | — | n/a — allocated item | — |
| limitEvaluatorUnit |  | not classified | `MRTM-LEV-001`, `MRTM-LEV-002`, `MRTM-LEV-003` | — | n/a — allocated item | — |
| logItem |  | not classified | none | — | n/a — allocated item | — |
| logService |  | not classified | none | — | n/a — allocated item | — |
| logSwItem |  | not classified | `MRTM-LGI-001`, `MRTM-LGI-002`, `MRTM-LGI-003` | — | n/a — allocated item | — |
| logTask |  | not classified | none | — | n/a — allocated item | — |
| logger |  | not classified | none | — | n/a — allocated item | — |
| mains |  | not classified | none | — | n/a — allocated item | — |
| mcu |  | not classified | none | — | n/a — allocated item | — |
| monitor |  | not classified | none | — | n/a — allocated item | — |
| nurse |  | not classified | none | — | n/a — allocated item | — |
| oled |  | not classified | none | — | n/a — allocated item | — |
| powerClock |  | not classified | none | — | n/a — allocated item | — |
| powerItem |  | not classified | none | — | n/a — allocated item | — |
| powerLogger |  | not classified | none | — | n/a — allocated item | — |
| powerMon |  | not classified | none | — | n/a — allocated item | — |
| powerMonApi |  | not classified | none | — | n/a — allocated item | — |
| powerMonUnit |  | not classified | `MRTM-PMN-001`, `MRTM-PMN-002` | — | n/a — allocated item | — |
| powerPath |  | not classified | none | — | n/a — allocated item | — |
| powerRing |  | not classified | none | — | n/a — allocated item | — |
| powerService |  | not classified | none | — | n/a — allocated item | — |
| powerSupervisor |  | not classified | none | — | n/a — allocated item | — |
| powerSwItem |  | not classified | `MRTM-PWI-001`, `MRTM-PWI-002` | — | n/a — allocated item | — |
| probe |  | not classified | none | — | n/a — allocated item | — |
| probeSupervisor |  | not classified | none | — | n/a — allocated item | — |
| redLed |  | not classified | none | — | n/a — allocated item | — |
| rtc |  | not classified | none | — | n/a — allocated item | — |
| rtcClock |  | not classified | none | — | n/a — allocated item | — |
| rtcClockApi |  | not classified | none | — | n/a — allocated item | — |
| rtcClockUnit |  | not classified | `MRTM-RTK-001` | — | n/a — allocated item | — |
| sampler |  | not classified | none | — | n/a — allocated item | — |
| screen |  | not classified | none | — | n/a — allocated item | — |
| selfTest |  | not classified | none | — | n/a — allocated item | — |
| sensorItem |  | not classified | none | — | n/a — allocated item | — |
| sensorSampler |  | not classified | none | — | n/a — allocated item | — |
| sensorSamplerApi |  | not classified | none | — | n/a — allocated item | — |
| sensorSamplerUnit |  | not classified | `MRTM-SMP-001`, `MRTM-SMP-002` | — | n/a — allocated item | — |
| sensorService |  | not classified | none | — | n/a — allocated item | — |
| sensorSwItem |  | not classified | `MRTM-SNI-001`, `MRTM-SNI-002` | — | n/a — allocated item | — |
| sensorTask |  | not classified | none | — | n/a — allocated item | — |
| softwareSystem |  | not classified | `MRTM-SRS-001`, `MRTM-SRS-002`, `MRTM-SRS-003`, `MRTM-SRS-004`, `MRTM-SRS-005`, `MRTM-SRS-006`, `MRTM-SRS-007`, `MRTM-SRS-008`, `MRTM-SRS-009`, `MRTM-SRS-010`, `MRTM-SRS-011`, `MRTM-SRS-012`, `MRTM-SRS-013`, `MRTM-SRS-014`, `MRTM-SRS-015`, `MRTM-SRS-016`, `MRTM-SRS-017`, `MRTM-SRS-018`, `MRTM-SRS-019` | — | n/a — allocated item | — |
| staff |  | not classified | none | — | n/a — allocated item | — |
| statusDisplay |  | not classified | none | — | n/a — allocated item | — |
| supervisor |  | not classified | none | — | n/a — allocated item | — |
| supervisorItem |  | not classified | none | — | n/a — allocated item | — |
| supervisorSwItem |  | not classified | `MRTM-SVI-001`, `MRTM-SVI-002`, `MRTM-SVI-003` | — | n/a — allocated item | — |
| supervisorTask |  | not classified | none | — | n/a — allocated item | — |
| technician |  | not classified | none | — | n/a — allocated item | — |
| temperature |  | not classified | none | — | n/a — allocated item | — |
| timekeeper |  | not classified | none | — | n/a — allocated item | — |
| usbExport |  | not classified | none | — | n/a — allocated item | — |
| usbExportApi |  | not classified | none | — | n/a — allocated item | — |
| usbExportUnit |  | not classified | `MRTM-UXP-001`, `MRTM-UXP-002` | — | n/a — allocated item | — |
| usbHost |  | not classified | none | — | n/a — allocated item | — |
| usbItem |  | not classified | none | — | n/a — allocated item | — |
| usbService |  | not classified | none | — | n/a — allocated item | — |
| usbSwItem |  | not classified | `MRTM-USI-001`, `MRTM-USI-002` | — | n/a — allocated item | — |
| usbTask |  | not classified | none | — | n/a — allocated item | — |
| watchdog |  | not classified | none | — | n/a — allocated item | — |
| wdtKicker |  | not classified | none | — | n/a — allocated item | — |
| wdtKickerApi |  | not classified | none | — | n/a — allocated item | — |
| wdtKickerUnit |  | not classified | `MRTM-WDK-001` | — | n/a — allocated item | — |

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

## Trace changes since baseline "REQ-BL-M1"

**Objective:** DO-178C Table A-8 objective 2, *baselines and traceability are established* (§7.2.2), read with the change control of §7.2.4 — what the trace data of §5.5 did between one baseline and the next.

Baseline taken at `6cf5ffb1c30a` — **taken over a modified working tree**, so it is not the state of that commit, compared against defc6cd5b1f086a9501eb7a3da1721d9c74bdc21. Every trace link that appeared, vanished or kept its source and relation while moving its target, and every requirement that came or went. A link is identified by its relation, its two ends and the producer that asserted it — never by where it sits in a file, so an unrelated edit above a link does not report it as changed.

**Count:** 0

No trace changes — every link the baseline's commit declared is still declared, in the same place, by the same producer.

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

**Count:** 1

- MRTM-SRS-008

### Derived / exempted — requirements a declaration waived from the orphan rule

**Count:** 0

No derived exemptions.

