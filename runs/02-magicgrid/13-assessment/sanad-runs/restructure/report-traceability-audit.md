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
  - [Environmental Requirement ⇄ Sensing requirement](#environmental-requirement--sensing-requirement)
    - [Environmental Requirement → Sensing requirement (parent to children)](#environmental-requirement--sensing-requirement-parent-to-children)
    - [Sensing requirement → Environmental Requirement (child to parents)](#sensing-requirement--environmental-requirement-child-to-parents)
  - [Performance Requirement ⇄ Sensing requirement](#performance-requirement--sensing-requirement)
    - [Performance Requirement → Sensing requirement (parent to children)](#performance-requirement--sensing-requirement-parent-to-children)
    - [Sensing requirement → Performance Requirement (child to parents)](#sensing-requirement--performance-requirement-child-to-parents)
  - [Safety Requirement ⇄ Sensing requirement](#safety-requirement--sensing-requirement)
    - [Safety Requirement → Sensing requirement (parent to children)](#safety-requirement--sensing-requirement-parent-to-children)
    - [Sensing requirement → Safety Requirement (child to parents)](#sensing-requirement--safety-requirement-child-to-parents)
  - [System Requirement ⇄ Sensing requirement](#system-requirement--sensing-requirement)
    - [System Requirement → Sensing requirement (parent to children)](#system-requirement--sensing-requirement-parent-to-children)
    - [Sensing requirement → System Requirement (child to parents)](#sensing-requirement--system-requirement-child-to-parents)
  - [Interface Requirement ⇄ Alarm and indication requirement](#interface-requirement--alarm-and-indication-requirement)
    - [Interface Requirement → Alarm and indication requirement (parent to children)](#interface-requirement--alarm-and-indication-requirement-parent-to-children)
    - [Alarm and indication requirement → Interface Requirement (child to parents)](#alarm-and-indication-requirement--interface-requirement-child-to-parents)
  - [Performance Requirement ⇄ Alarm and indication requirement](#performance-requirement--alarm-and-indication-requirement)
    - [Performance Requirement → Alarm and indication requirement (parent to children)](#performance-requirement--alarm-and-indication-requirement-parent-to-children)
    - [Alarm and indication requirement → Performance Requirement (child to parents)](#alarm-and-indication-requirement--performance-requirement-child-to-parents)
  - [Safety Requirement ⇄ Alarm and indication requirement](#safety-requirement--alarm-and-indication-requirement)
    - [Safety Requirement → Alarm and indication requirement (parent to children)](#safety-requirement--alarm-and-indication-requirement-parent-to-children)
    - [Alarm and indication requirement → Safety Requirement (child to parents)](#alarm-and-indication-requirement--safety-requirement-child-to-parents)
  - [System Requirement ⇄ Alarm and indication requirement](#system-requirement--alarm-and-indication-requirement)
    - [System Requirement → Alarm and indication requirement (parent to children)](#system-requirement--alarm-and-indication-requirement-parent-to-children)
    - [Alarm and indication requirement → System Requirement (child to parents)](#alarm-and-indication-requirement--system-requirement-child-to-parents)
  - [Interface Requirement ⇄ Display requirement](#interface-requirement--display-requirement)
    - [Interface Requirement → Display requirement (parent to children)](#interface-requirement--display-requirement-parent-to-children)
    - [Display requirement → Interface Requirement (child to parents)](#display-requirement--interface-requirement-child-to-parents)
  - [Performance Requirement ⇄ Display requirement](#performance-requirement--display-requirement)
    - [Performance Requirement → Display requirement (parent to children)](#performance-requirement--display-requirement-parent-to-children)
    - [Display requirement → Performance Requirement (child to parents)](#display-requirement--performance-requirement-child-to-parents)
  - [Safety Requirement ⇄ Display requirement](#safety-requirement--display-requirement)
    - [Safety Requirement → Display requirement (parent to children)](#safety-requirement--display-requirement-parent-to-children)
    - [Display requirement → Safety Requirement (child to parents)](#display-requirement--safety-requirement-child-to-parents)
  - [System Requirement ⇄ Display requirement](#system-requirement--display-requirement)
    - [System Requirement → Display requirement (parent to children)](#system-requirement--display-requirement-parent-to-children)
    - [Display requirement → System Requirement (child to parents)](#display-requirement--system-requirement-child-to-parents)
  - [Interface Requirement ⇄ Logging and history requirement](#interface-requirement--logging-and-history-requirement)
    - [Interface Requirement → Logging and history requirement (parent to children)](#interface-requirement--logging-and-history-requirement-parent-to-children)
    - [Logging and history requirement → Interface Requirement (child to parents)](#logging-and-history-requirement--interface-requirement-child-to-parents)
  - [Performance Requirement ⇄ Logging and history requirement](#performance-requirement--logging-and-history-requirement)
    - [Performance Requirement → Logging and history requirement (parent to children)](#performance-requirement--logging-and-history-requirement-parent-to-children)
    - [Logging and history requirement → Performance Requirement (child to parents)](#logging-and-history-requirement--performance-requirement-child-to-parents)
  - [Safety Requirement ⇄ Logging and history requirement](#safety-requirement--logging-and-history-requirement)
    - [Safety Requirement → Logging and history requirement (parent to children)](#safety-requirement--logging-and-history-requirement-parent-to-children)
    - [Logging and history requirement → Safety Requirement (child to parents)](#logging-and-history-requirement--safety-requirement-child-to-parents)
  - [System Requirement ⇄ Logging and history requirement](#system-requirement--logging-and-history-requirement)
    - [System Requirement → Logging and history requirement (parent to children)](#system-requirement--logging-and-history-requirement-parent-to-children)
    - [Logging and history requirement → System Requirement (child to parents)](#logging-and-history-requirement--system-requirement-child-to-parents)
  - [Environmental Requirement ⇄ Power requirement](#environmental-requirement--power-requirement)
    - [Environmental Requirement → Power requirement (parent to children)](#environmental-requirement--power-requirement-parent-to-children)
    - [Power requirement → Environmental Requirement (child to parents)](#power-requirement--environmental-requirement-child-to-parents)
  - [Safety Requirement ⇄ Power requirement](#safety-requirement--power-requirement)
    - [Safety Requirement → Power requirement (parent to children)](#safety-requirement--power-requirement-parent-to-children)
    - [Power requirement → Safety Requirement (child to parents)](#power-requirement--safety-requirement-child-to-parents)
  - [System Requirement ⇄ Power requirement](#system-requirement--power-requirement)
    - [System Requirement → Power requirement (parent to children)](#system-requirement--power-requirement-parent-to-children)
    - [Power requirement → System Requirement (child to parents)](#power-requirement--system-requirement-child-to-parents)
  - [Safety Requirement ⇄ Supervision requirement](#safety-requirement--supervision-requirement)
    - [Safety Requirement → Supervision requirement (parent to children)](#safety-requirement--supervision-requirement-parent-to-children)
    - [Supervision requirement → Safety Requirement (child to parents)](#supervision-requirement--safety-requirement-child-to-parents)
  - [System Requirement ⇄ Supervision requirement](#system-requirement--supervision-requirement)
    - [System Requirement → Supervision requirement (parent to children)](#system-requirement--supervision-requirement-parent-to-children)
    - [Supervision requirement → System Requirement (child to parents)](#supervision-requirement--system-requirement-child-to-parents)
  - [Sensing requirement ⇄ Probe requirement](#sensing-requirement--probe-requirement)
    - [Sensing requirement → Probe requirement (parent to children)](#sensing-requirement--probe-requirement-parent-to-children)
    - [Probe requirement → Sensing requirement (child to parents)](#probe-requirement--sensing-requirement-child-to-parents)
  - [Sensing requirement ⇄ Sensor item requirement](#sensing-requirement--sensor-item-requirement)
    - [Sensing requirement → Sensor item requirement (parent to children)](#sensing-requirement--sensor-item-requirement-parent-to-children)
    - [Sensor item requirement → Sensing requirement (child to parents)](#sensor-item-requirement--sensing-requirement-child-to-parents)
  - [Alarm and indication requirement ⇄ Excursion item requirement](#alarm-and-indication-requirement--excursion-item-requirement)
    - [Alarm and indication requirement → Excursion item requirement (parent to children)](#alarm-and-indication-requirement--excursion-item-requirement-parent-to-children)
    - [Excursion item requirement → Alarm and indication requirement (child to parents)](#excursion-item-requirement--alarm-and-indication-requirement-child-to-parents)
  - [Alarm and indication requirement ⇄ Alarm item requirement](#alarm-and-indication-requirement--alarm-item-requirement)
    - [Alarm and indication requirement → Alarm item requirement (parent to children)](#alarm-and-indication-requirement--alarm-item-requirement-parent-to-children)
    - [Alarm item requirement → Alarm and indication requirement (child to parents)](#alarm-item-requirement--alarm-and-indication-requirement-child-to-parents)
  - [Alarm and indication requirement ⇄ Buzzer requirement](#alarm-and-indication-requirement--buzzer-requirement)
    - [Alarm and indication requirement → Buzzer requirement (parent to children)](#alarm-and-indication-requirement--buzzer-requirement-parent-to-children)
    - [Buzzer requirement → Alarm and indication requirement (child to parents)](#buzzer-requirement--alarm-and-indication-requirement-child-to-parents)
  - [Alarm and indication requirement ⇄ Indicators requirement](#alarm-and-indication-requirement--indicators-requirement)
    - [Alarm and indication requirement → Indicators requirement (parent to children)](#alarm-and-indication-requirement--indicators-requirement-parent-to-children)
    - [Indicators requirement → Alarm and indication requirement (child to parents)](#indicators-requirement--alarm-and-indication-requirement-child-to-parents)
  - [Alarm and indication requirement ⇄ Backup alarm requirement](#alarm-and-indication-requirement--backup-alarm-requirement)
    - [Alarm and indication requirement → Backup alarm requirement (parent to children)](#alarm-and-indication-requirement--backup-alarm-requirement-parent-to-children)
    - [Backup alarm requirement → Alarm and indication requirement (child to parents)](#backup-alarm-requirement--alarm-and-indication-requirement-child-to-parents)
  - [Display requirement ⇄ Oled requirement](#display-requirement--oled-requirement)
    - [Display requirement → Oled requirement (parent to children)](#display-requirement--oled-requirement-parent-to-children)
    - [Oled requirement → Display requirement (child to parents)](#oled-requirement--display-requirement-child-to-parents)
  - [Display requirement ⇄ Display item requirement](#display-requirement--display-item-requirement)
    - [Display requirement → Display item requirement (parent to children)](#display-requirement--display-item-requirement-parent-to-children)
    - [Display item requirement → Display requirement (child to parents)](#display-item-requirement--display-requirement-child-to-parents)
  - [Logging and history requirement ⇄ Rtc requirement](#logging-and-history-requirement--rtc-requirement)
    - [Logging and history requirement → Rtc requirement (parent to children)](#logging-and-history-requirement--rtc-requirement-parent-to-children)
    - [Rtc requirement → Logging and history requirement (child to parents)](#rtc-requirement--logging-and-history-requirement-child-to-parents)
  - [Logging and history requirement ⇄ Log item requirement](#logging-and-history-requirement--log-item-requirement)
    - [Logging and history requirement → Log item requirement (parent to children)](#logging-and-history-requirement--log-item-requirement-parent-to-children)
    - [Log item requirement → Logging and history requirement (child to parents)](#log-item-requirement--logging-and-history-requirement-child-to-parents)
  - [Logging and history requirement ⇄ Usb item requirement](#logging-and-history-requirement--usb-item-requirement)
    - [Logging and history requirement → Usb item requirement (parent to children)](#logging-and-history-requirement--usb-item-requirement-parent-to-children)
    - [Usb item requirement → Logging and history requirement (child to parents)](#usb-item-requirement--logging-and-history-requirement-child-to-parents)
  - [Power requirement ⇄ Battery requirement](#power-requirement--battery-requirement)
    - [Power requirement → Battery requirement (parent to children)](#power-requirement--battery-requirement-parent-to-children)
    - [Battery requirement → Power requirement (child to parents)](#battery-requirement--power-requirement-child-to-parents)
  - [Power requirement ⇄ Power path requirement](#power-requirement--power-path-requirement)
    - [Power requirement → Power path requirement (parent to children)](#power-requirement--power-path-requirement-parent-to-children)
    - [Power path requirement → Power requirement (child to parents)](#power-path-requirement--power-requirement-child-to-parents)
  - [Power requirement ⇄ Power item requirement](#power-requirement--power-item-requirement)
    - [Power requirement → Power item requirement (parent to children)](#power-requirement--power-item-requirement-parent-to-children)
    - [Power item requirement → Power requirement (child to parents)](#power-item-requirement--power-requirement-child-to-parents)
  - [Supervision requirement ⇄ Mcu requirement](#supervision-requirement--mcu-requirement)
    - [Supervision requirement → Mcu requirement (parent to children)](#supervision-requirement--mcu-requirement-parent-to-children)
    - [Mcu requirement → Supervision requirement (child to parents)](#mcu-requirement--supervision-requirement-child-to-parents)
  - [Supervision requirement ⇄ Supervisor item requirement](#supervision-requirement--supervisor-item-requirement)
    - [Supervision requirement → Supervisor item requirement (parent to children)](#supervision-requirement--supervisor-item-requirement-parent-to-children)
    - [Supervisor item requirement → Supervision requirement (child to parents)](#supervisor-item-requirement--supervision-requirement-child-to-parents)
  - [Backup alarm requirement ⇄ Backup timer requirement](#backup-alarm-requirement--backup-timer-requirement)
    - [Backup alarm requirement → Backup timer requirement (parent to children)](#backup-alarm-requirement--backup-timer-requirement-parent-to-children)
    - [Backup timer requirement → Backup alarm requirement (child to parents)](#backup-timer-requirement--backup-alarm-requirement-child-to-parents)
  - [Backup alarm requirement ⇄ Backup driver requirement](#backup-alarm-requirement--backup-driver-requirement)
    - [Backup alarm requirement → Backup driver requirement (parent to children)](#backup-alarm-requirement--backup-driver-requirement-parent-to-children)
    - [Backup driver requirement → Backup alarm requirement (child to parents)](#backup-driver-requirement--backup-alarm-requirement-child-to-parents)
  - [Backup alarm requirement ⇄ Hold up requirement](#backup-alarm-requirement--hold-up-requirement)
    - [Backup alarm requirement → Hold up requirement (parent to children)](#backup-alarm-requirement--hold-up-requirement-parent-to-children)
    - [Hold up requirement → Backup alarm requirement (child to parents)](#hold-up-requirement--backup-alarm-requirement-child-to-parents)
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

**Generated from commit:** `1a3a87d826b854265270fa7b4999eedf7224d9b2`

**Tool version:** `sanad 0.6.3`

**Inputs:** `132 requirements`, `symbol index`, `architecture inventory`, `glossary`, `data dictionary`, `verification cases`

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
| rigour 2 | `B` | 2 | none | trace up (uplink), verification, implementation (code) |
| rigour 4 | `C` | 130 | none | trace up (uplink), verification, implementation (code) |

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

### Environmental Requirement ⇄ Sensing requirement

#### Environmental Requirement → Sensing requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-ENV-001 | Battery endurance | C (rigour 4) | none | `SP-04` | verified | — |
| MRTM-ENV-002 | Ambient temperature | C (rigour 4) | none | `SP-11` | verified | — |
| MRTM-ENV-003 | Humidity | C (rigour 4) | none | `SP-11` | verified | — |
| MRTM-ENV-004 | Probe environment | C (rigour 4) | `MRTM-SEN-003` | `SP-10` | verified | — |

#### Sensing requirement → Environmental Requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SEN-001 | Sensing sample period | C (rigour 4) | none | `SP-01` | verified | — |
| MRTM-SEN-002 | Sensing sample latency | C (rigour 4) | none | `test_limit_evaluator.test_early_alarm_budget_fits_5_s` | verified | — |
| MRTM-SEN-003 | Sensing accuracy | C (rigour 4) | `MRTM-ENV-004` | `SP-10` | verified | — |
| MRTM-SEN-004 | Sensing invalid sample | C (rigour 4) | none | `SP-02` | verified | — |

### Performance Requirement ⇄ Sensing requirement

#### Performance Requirement → Sensing requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-PRF-001 | Measurement accuracy | C (rigour 4) | `MRTM-SEN-003` | `SP-10`, `test_sensor_sampler.test_conversion_rounds_to_a_tenth_and_adds_the_offset` | verified | `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_to_tenths` |
| MRTM-PRF-002 | End-to-end alert time | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_int_chains.test_int01_excursion_chain` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-PRF-003 | Log readout time | C (rigour 4) | none | `SP-08`, `test_usb_export.test_full_history_fits_and_fat_chain_ends` | verified | `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_read10` |
| MRTM-PRF-004 | Display refresh | C (rigour 4) | none | `SP-09`, `test_display_mgr.test_temperature_refreshes_every_10_s_in_tenths` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#display_mgr_tick`, `10-src/firmware/components/display_mgr/src/display_mgr.cpp#renderFrame` |

#### Sensing requirement → Performance Requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SEN-001 | Sensing sample period | C (rigour 4) | none | `SP-01` | verified | — |
| MRTM-SEN-002 | Sensing sample latency | C (rigour 4) | none | `test_limit_evaluator.test_early_alarm_budget_fits_5_s` | verified | — |
| MRTM-SEN-003 | Sensing accuracy | C (rigour 4) | `MRTM-PRF-001` | `SP-10` | verified | — |
| MRTM-SEN-004 | Sensing invalid sample | C (rigour 4) | none | `SP-02` | verified | — |

### Safety Requirement ⇄ Sensing requirement

#### Safety Requirement → Sensing requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SAF-001 | Buzzer loudness | C (rigour 4) | none | `SP-06` | verified | — |
| MRTM-SAF-002 | Probe fault raises alert | C (rigour 4) | none | `SP-02`, `test_alarm_mgr.test_probe_fault_sounds_1_s_on_1_s_off` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step` |
| MRTM-SAF-003 | Implausible sample | C (rigour 4) | `MRTM-SEN-004` | `SP-02`, `test_sensor_sampler.test_reading_outside_minus30_to_50_declares_the_fault_at_once` | verified | `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_probe_fault`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_read` |
| MRTM-SAF-004 | Watchdog restart | C (rigour 4) | none | `SP-03`, `test_wdt_kicker.test_task_watchdog_armed_at_5_s` | verified | `10-src/firmware/components/wdt_kicker/src/wdt_kicker.c#wdt_kicker_init` |
| MRTM-SAF-005 | Log power loss | C (rigour 4) | none | `SP-04`, `test_int_chains.test_int05_power_loss_logged_within_1_s`, `test_power_mon.test_mains_loss_and_restore_are_logged_from_the_edge` | verified | `10-src/firmware/components/power_mon/src/power_mon.c#power_mon_isr` |
| MRTM-SAF-006 | Alert survives restart | C (rigour 4) | none | `SP-05`, `test_alarm_mgr.test_acknowledged_alarm_is_not_restored_as_sounding`, `test_alarm_mgr.test_error_codes_full_and_nvs`, `test_alarm_mgr.test_unacknowledged_alarm_is_restored_after_a_restart`, `test_int_chains.test_int04_restart_restores_the_alarm` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_init`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_power_up` |
| MRTM-SAF-007 | Buzzer self-test | C (rigour 4) | none | `SP-05`, `test_diagnostics.test_power_up_tests_pass_inside_their_windows`, `test_diagnostics.test_silent_buzzer_fails_the_power_up_test` | verified | `10-src/firmware/components/diagnostics/src/diagnostics.c#diagnostics_power_up` |
| MRTM-SAF-008 | Low battery alarm | C (rigour 4) | none | `SP-04`, `test_alarm_mgr.test_battery_low_or_fail_safe_forces_the_buzzer`, `test_power_mon.test_battery_below_3400_mv_twice_sounds_the_buzzer` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step`, `10-src/firmware/components/power_mon/src/power_mon.c#power_mon_step` |
| MRTM-SAF-009 | Backup alarm on firmware silence | C (rigour 4) | none | `SP-03`, `test_int_chains.test_int02_watchdog_chain` | verified | `10-src/firmware/components/wdt_kicker/src/wdt_kicker.c#wdt_kicker_step` |
| MRTM-SAF-010 | Watchdog tied to the alarm service | C (rigour 4) | none | `SP-03`, `test_alarm_mgr.test_heartbeat_moves_on_every_step`, `test_int_chains.test_int02_watchdog_chain`, `test_wdt_kicker.test_pulses_stop_within_2_s_of_a_missed_alarm_cycle`, `test_wdt_kicker.test_pulses_while_the_heartbeat_moves` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_heartbeat`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step`, `10-src/firmware/components/wdt_kicker/src/wdt_kicker.c#wdt_kicker_step` |
| MRTM-SAF-011 | Fault tone differs from excursion tone | C (rigour 4) | none | `SP-02`, `test_alarm_mgr.test_probe_fault_sounds_1_s_on_1_s_off` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SAF-012 | Probe calibration due | C (rigour 4) | none | `SP-09`, `test_display_mgr.test_calibration_due_and_log_capacity_messages` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step` |
| MRTM-SAF-013 | Alarm on total power loss | C (rigour 4) | none | `SP-03` | verified | — |
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

#### Sensing requirement → Safety Requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SEN-001 | Sensing sample period | C (rigour 4) | none | `SP-01` | verified | — |
| MRTM-SEN-002 | Sensing sample latency | C (rigour 4) | none | `test_limit_evaluator.test_early_alarm_budget_fits_5_s` | verified | — |
| MRTM-SEN-003 | Sensing accuracy | C (rigour 4) | none | `SP-10` | verified | — |
| MRTM-SEN-004 | Sensing invalid sample | C (rigour 4) | `MRTM-SAF-003` | `SP-02` | verified | — |

### System Requirement ⇄ Sensing requirement

#### System Requirement → Sensing requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SYS-001 | Sampling period | C (rigour 4) | `MRTM-SEN-001` | `SP-01`, `SP-01-H`, `test_sensor_sampler.test_good_scratchpad_gives_a_valid_sample` | verified | `10-src/config/mrtm_config.h#off`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_read` |
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
| MRTM-SYS-012 | Probe fault detection | C (rigour 4) | `MRTM-SEN-004` | `SP-02`, `test_mrtm_common.test_crc8_over_a_scratchpad`, `test_mrtm_common.test_crc_check_values`, `test_sensor_sampler.test_bad_crc_is_invalid_but_not_out_of_range`, `test_sensor_sampler.test_fault_after_30_s_without_a_correct_crc`, `test_sensor_sampler.test_fault_clears_on_the_next_valid_sample` | verified | `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step`, `10-src/firmware/components/mrtm_common/src/mrtm_crc.c#mrtm_crc8_maxim`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_probe_fault`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_read` |
| MRTM-SYS-013 | Probe fault message | C (rigour 4) | none | `SP-02`, `test_display_mgr.test_probe_fault_message` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/display_mgr/src/display_mgr.cpp#renderFrame`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_display_step` |
| MRTM-SYS-014 | Read-only event log | C (rigour 4) | none | `SP-08`, `test_usb_export.test_every_write_is_refused`, `test_usb_export.test_history_csv_is_marked_read_only` | verified | `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_init`, `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_write10` |
| MRTM-SYS-015 | Event log capacity | C (rigour 4) | none | `SP-07`, `test_history_ring.test_init_finds_the_head_again_after_a_restart`, `test_history_ring.test_retains_10000_records_after_wrapping`, `test_history_ring.test_retains_10000_straight_after_an_erase_ahead`, `test_usb_export.test_full_history_fits_and_fat_chain_ends` | verified | `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_append`, `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_init`, `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_read` |
| MRTM-SYS-016 | Battery operation | C (rigour 4) | none | `SP-04` | verified | — |
| MRTM-SYS-017 | Allowed band | C (rigour 4) | none | `SP-13`, `test_config_mgr.test_band_outside_2_to_8_is_refused`, `test_config_mgr.test_valid_record_loads_the_2_to_8_degree_band`, `test_limit_evaluator.test_band_edges_two_and_eight_degrees_are_inside` | verified | `10-src/firmware/components/config_mgr/src/config_mgr.c#config_mgr_load`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_init`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step` |
| MRTM-SYS-018 | Excursion end confirmation | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_end_returns_to_quiet_from_sounding_and_silenced`, `test_limit_evaluator.test_hysteresis_knob_is_zero`, `test_limit_evaluator.test_nth_consecutive_in_sample_ends_excursion`, `test_limit_evaluator.test_out_sample_restarts_the_in_run` | verified | `10-src/config/mrtm_config.h#off`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step` |
| MRTM-SYS-019 | Alarm comes back after silence | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_re_sounds_15_minutes_after_the_ack` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SYS-020 | Clock drift | C (rigour 4) | none | `SP-12`, `test_rtc_clock.test_now_is_the_rtc_copy_refreshed_each_second` | verified | `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_tick` |
| MRTM-SYS-021 | Event log integrity | C (rigour 4) | none | `SP-07`, `test_history_ring.test_both_copies_corrupt_reports_err_crc_and_logs_it`, `test_history_ring.test_corrupt_copy_a_is_read_from_copy_b`, `test_mrtm_common.test_crc_check_values`, `test_usb_export.test_unreadable_record_is_a_corrupt_line` | verified | `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_read`, `10-src/firmware/components/mrtm_common/src/mrtm_crc.c#mrtm_crc32` |
| MRTM-SYS-022 | Log capacity warning | C (rigour 4) | none | `SP-07`, `test_display_mgr.test_calibration_due_and_log_capacity_messages`, `test_history_ring.test_capacity_warning_once_at_9000` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_append`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step` |
| MRTM-SYS-023 | Power restore event | C (rigour 4) | none | `SP-04`, `test_event_log.test_time_stamp_is_the_utc_second_of_the_post`, `test_power_mon.test_mains_loss_and_restore_are_logged_from_the_edge` | verified | `10-src/firmware/components/event_log/src/event_log.c#event_log_post`, `10-src/firmware/components/power_mon/src/power_mon.c#power_mon_isr`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now` |
| MRTM-SYS-024 | Early excursion alarm | C (rigour 4) | `MRTM-SEN-002` | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_early_alarm_clears_back_to_quiet`, `test_alarm_mgr.test_early_alarm_is_red_1_hz_without_buzzer_then_escalates`, `test_limit_evaluator.test_back_in_band_clears_the_early_alarm`, `test_limit_evaluator.test_early_alarm_budget_fits_5_s`, `test_limit_evaluator.test_first_out_sample_raises_the_early_alarm` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step` |

#### Sensing requirement → System Requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SEN-001 | Sensing sample period | C (rigour 4) | `MRTM-SYS-001` | `SP-01` | verified | — |
| MRTM-SEN-002 | Sensing sample latency | C (rigour 4) | `MRTM-SYS-024` | `test_limit_evaluator.test_early_alarm_budget_fits_5_s` | verified | — |
| MRTM-SEN-003 | Sensing accuracy | C (rigour 4) | none | `SP-10` | verified | — |
| MRTM-SEN-004 | Sensing invalid sample | C (rigour 4) | `MRTM-SYS-012` | `SP-02` | verified | — |

### Interface Requirement ⇄ Alarm and indication requirement

#### Interface Requirement → Alarm and indication requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-IFC-001 | Probe bus | C (rigour 4) | none | `SP-10`, `test_sensor_sampler.test_error_codes_arg_and_bus`, `test_sensor_sampler.test_good_scratchpad_gives_a_valid_sample` | verified | `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_init`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_read` |
| MRTM-IFC-002 | Acknowledge input | C (rigour 4) | `MRTM-ALM-004` | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_button_debounce_50_ms` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_button_debounced`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_button_isr` |
| MRTM-IFC-003 | USB readout | C (rigour 4) | none | `SP-08`, `test_usb_export.test_boot_sector_is_a_fat12_volume`, `test_usb_export.test_csv_lines_oldest_first_newest_last`, `test_usb_export.test_every_write_is_refused`, `test_usb_export.test_history_csv_is_marked_read_only` | verified | `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_init`, `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_read10`, `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_write10` |
| MRTM-IFC-004 | Display character height | C (rigour 4) | none | `SP-09` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw` |

#### Alarm and indication requirement → Interface Requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-ALM-001 | Alarm early signal latency | C (rigour 4) | none | `test_alarm_mgr.test_early_alarm_is_red_1_hz_without_buzzer_then_escalates`, `test_limit_evaluator.test_early_alarm_budget_fits_5_s` | verified | — |
| MRTM-ALM-002 | Alarm excursion confirmation | C (rigour 4) | none | `test_int_chains.test_int01_excursion_chain`, `test_limit_evaluator.test_early_alarm_budget_fits_5_s` | verified | — |
| MRTM-ALM-003 | Alarm buzzer latency | C (rigour 4) | none | `test_int_chains.test_int01_excursion_chain` | verified | — |
| MRTM-ALM-004 | Alarm acknowledge | C (rigour 4) | `MRTM-IFC-002` | `test_alarm_mgr.test_ack_stops_the_buzzer_in_the_same_step_and_logs` | verified | — |
| MRTM-ALM-005 | Alarm backup path | C (rigour 4) | none | `SP-03`, `test_int_chains.test_int02_watchdog_chain` | verified | — |
| MRTM-ALM-006 | Alarm high-priority auditory pattern | C (rigour 4) | none | — | unverified | — |
| MRTM-ALM-007 | Alarm excursion end | C (rigour 4) | none | `test_limit_evaluator.test_nth_consecutive_in_sample_ends_excursion` | verified | — |
| MRTM-ALM-008 | Alarm backup hold-up | C (rigour 4) | none | `SP-03` | verified | — |

### Performance Requirement ⇄ Alarm and indication requirement

#### Performance Requirement → Alarm and indication requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-PRF-001 | Measurement accuracy | C (rigour 4) | none | `SP-10`, `test_sensor_sampler.test_conversion_rounds_to_a_tenth_and_adds_the_offset` | verified | `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_to_tenths` |
| MRTM-PRF-002 | End-to-end alert time | C (rigour 4) | `MRTM-ALM-003` | `SP-01`, `SP-01-H`, `test_int_chains.test_int01_excursion_chain` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-PRF-003 | Log readout time | C (rigour 4) | none | `SP-08`, `test_usb_export.test_full_history_fits_and_fat_chain_ends` | verified | `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_read10` |
| MRTM-PRF-004 | Display refresh | C (rigour 4) | none | `SP-09`, `test_display_mgr.test_temperature_refreshes_every_10_s_in_tenths` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#display_mgr_tick`, `10-src/firmware/components/display_mgr/src/display_mgr.cpp#renderFrame` |

#### Alarm and indication requirement → Performance Requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-ALM-001 | Alarm early signal latency | C (rigour 4) | none | `test_alarm_mgr.test_early_alarm_is_red_1_hz_without_buzzer_then_escalates`, `test_limit_evaluator.test_early_alarm_budget_fits_5_s` | verified | — |
| MRTM-ALM-002 | Alarm excursion confirmation | C (rigour 4) | none | `test_int_chains.test_int01_excursion_chain`, `test_limit_evaluator.test_early_alarm_budget_fits_5_s` | verified | — |
| MRTM-ALM-003 | Alarm buzzer latency | C (rigour 4) | `MRTM-PRF-002` | `test_int_chains.test_int01_excursion_chain` | verified | — |
| MRTM-ALM-004 | Alarm acknowledge | C (rigour 4) | none | `test_alarm_mgr.test_ack_stops_the_buzzer_in_the_same_step_and_logs` | verified | — |
| MRTM-ALM-005 | Alarm backup path | C (rigour 4) | none | `SP-03`, `test_int_chains.test_int02_watchdog_chain` | verified | — |
| MRTM-ALM-006 | Alarm high-priority auditory pattern | C (rigour 4) | none | — | unverified | — |
| MRTM-ALM-007 | Alarm excursion end | C (rigour 4) | none | `test_limit_evaluator.test_nth_consecutive_in_sample_ends_excursion` | verified | — |
| MRTM-ALM-008 | Alarm backup hold-up | C (rigour 4) | none | `SP-03` | verified | — |

### Safety Requirement ⇄ Alarm and indication requirement

#### Safety Requirement → Alarm and indication requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SAF-001 | Buzzer loudness | C (rigour 4) | none | `SP-06` | verified | — |
| MRTM-SAF-002 | Probe fault raises alert | C (rigour 4) | none | `SP-02`, `test_alarm_mgr.test_probe_fault_sounds_1_s_on_1_s_off` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step` |
| MRTM-SAF-003 | Implausible sample | C (rigour 4) | none | `SP-02`, `test_sensor_sampler.test_reading_outside_minus30_to_50_declares_the_fault_at_once` | verified | `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_probe_fault`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_read` |
| MRTM-SAF-004 | Watchdog restart | C (rigour 4) | none | `SP-03`, `test_wdt_kicker.test_task_watchdog_armed_at_5_s` | verified | `10-src/firmware/components/wdt_kicker/src/wdt_kicker.c#wdt_kicker_init` |
| MRTM-SAF-005 | Log power loss | C (rigour 4) | none | `SP-04`, `test_int_chains.test_int05_power_loss_logged_within_1_s`, `test_power_mon.test_mains_loss_and_restore_are_logged_from_the_edge` | verified | `10-src/firmware/components/power_mon/src/power_mon.c#power_mon_isr` |
| MRTM-SAF-006 | Alert survives restart | C (rigour 4) | none | `SP-05`, `test_alarm_mgr.test_acknowledged_alarm_is_not_restored_as_sounding`, `test_alarm_mgr.test_error_codes_full_and_nvs`, `test_alarm_mgr.test_unacknowledged_alarm_is_restored_after_a_restart`, `test_int_chains.test_int04_restart_restores_the_alarm` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_init`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_power_up` |
| MRTM-SAF-007 | Buzzer self-test | C (rigour 4) | none | `SP-05`, `test_diagnostics.test_power_up_tests_pass_inside_their_windows`, `test_diagnostics.test_silent_buzzer_fails_the_power_up_test` | verified | `10-src/firmware/components/diagnostics/src/diagnostics.c#diagnostics_power_up` |
| MRTM-SAF-008 | Low battery alarm | C (rigour 4) | none | `SP-04`, `test_alarm_mgr.test_battery_low_or_fail_safe_forces_the_buzzer`, `test_power_mon.test_battery_below_3400_mv_twice_sounds_the_buzzer` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step`, `10-src/firmware/components/power_mon/src/power_mon.c#power_mon_step` |
| MRTM-SAF-009 | Backup alarm on firmware silence | C (rigour 4) | `MRTM-ALM-005` | `SP-03`, `test_int_chains.test_int02_watchdog_chain` | verified | `10-src/firmware/components/wdt_kicker/src/wdt_kicker.c#wdt_kicker_step` |
| MRTM-SAF-010 | Watchdog tied to the alarm service | C (rigour 4) | `MRTM-ALM-005` | `SP-03`, `test_alarm_mgr.test_heartbeat_moves_on_every_step`, `test_int_chains.test_int02_watchdog_chain`, `test_wdt_kicker.test_pulses_stop_within_2_s_of_a_missed_alarm_cycle`, `test_wdt_kicker.test_pulses_while_the_heartbeat_moves` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_heartbeat`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step`, `10-src/firmware/components/wdt_kicker/src/wdt_kicker.c#wdt_kicker_step` |
| MRTM-SAF-011 | Fault tone differs from excursion tone | C (rigour 4) | none | `SP-02`, `test_alarm_mgr.test_probe_fault_sounds_1_s_on_1_s_off` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SAF-012 | Probe calibration due | C (rigour 4) | none | `SP-09`, `test_display_mgr.test_calibration_due_and_log_capacity_messages` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step` |
| MRTM-SAF-013 | Alarm on total power loss | C (rigour 4) | `MRTM-ALM-008` | `SP-03` | verified | — |
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

#### Alarm and indication requirement → Safety Requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-ALM-001 | Alarm early signal latency | C (rigour 4) | none | `test_alarm_mgr.test_early_alarm_is_red_1_hz_without_buzzer_then_escalates`, `test_limit_evaluator.test_early_alarm_budget_fits_5_s` | verified | — |
| MRTM-ALM-002 | Alarm excursion confirmation | C (rigour 4) | none | `test_int_chains.test_int01_excursion_chain`, `test_limit_evaluator.test_early_alarm_budget_fits_5_s` | verified | — |
| MRTM-ALM-003 | Alarm buzzer latency | C (rigour 4) | none | `test_int_chains.test_int01_excursion_chain` | verified | — |
| MRTM-ALM-004 | Alarm acknowledge | C (rigour 4) | none | `test_alarm_mgr.test_ack_stops_the_buzzer_in_the_same_step_and_logs` | verified | — |
| MRTM-ALM-005 | Alarm backup path | C (rigour 4) | `MRTM-SAF-009`, `MRTM-SAF-010` | `SP-03`, `test_int_chains.test_int02_watchdog_chain` | verified | — |
| MRTM-ALM-006 | Alarm high-priority auditory pattern | C (rigour 4) | none | — | unverified | — |
| MRTM-ALM-007 | Alarm excursion end | C (rigour 4) | none | `test_limit_evaluator.test_nth_consecutive_in_sample_ends_excursion` | verified | — |
| MRTM-ALM-008 | Alarm backup hold-up | C (rigour 4) | `MRTM-SAF-013` | `SP-03` | verified | — |

### System Requirement ⇄ Alarm and indication requirement

#### System Requirement → Alarm and indication requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SYS-001 | Sampling period | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_sensor_sampler.test_good_scratchpad_gives_a_valid_sample` | verified | `10-src/config/mrtm_config.h#off`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_read` |
| MRTM-SYS-002 | Excursion confirmation | C (rigour 4) | `MRTM-ALM-002` | `SP-01`, `SP-01-H`, `test_int_chains.test_int01_excursion_chain`, `test_limit_evaluator.test_invalid_sample_neither_counts_nor_resets`, `test_limit_evaluator.test_n_minus_one_out_then_one_in_does_not_confirm`, `test_limit_evaluator.test_nth_consecutive_out_sample_confirms` | verified | `10-src/config/mrtm_config.h#off`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step` |
| MRTM-SYS-003 | Buzzer on excursion | C (rigour 4) | `MRTM-ALM-003`, `MRTM-ALM-006` | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_confirm_sounds_the_buzzer_and_flashes_red_at_2_hz`, `test_int_chains.test_int01_excursion_chain` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take` |
| MRTM-SYS-004 | Red indicator on excursion | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_confirm_sounds_the_buzzer_and_flashes_red_at_2_hz` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SYS-005 | Warning on excursion | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_display_mgr.test_excursion_warning_for_the_whole_excursion`, `test_int_chains.test_int01_excursion_chain` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/display_mgr/src/display_mgr.cpp#renderFrame`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_display_step` |
| MRTM-SYS-006 | Acknowledge silences buzzer | C (rigour 4) | `MRTM-ALM-004` | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_ack_stops_the_buzzer_in_the_same_step_and_logs` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_button_debounced`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_post`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take` |
| MRTM-SYS-007 | Warning stays while excursion is open | C (rigour 4) | none | `SP-01`, `test_display_mgr.test_excursion_warning_for_the_whole_excursion` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw` |
| MRTM-SYS-008 | Log excursion start | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_event_log.test_time_stamp_is_the_utc_second_of_the_post`, `test_int_chains.test_int01_excursion_chain`, `test_usb_export.test_csv_lines_oldest_first_newest_last` | verified | `10-src/firmware/components/event_log/src/event_log.c#event_log_post`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now` |
| MRTM-SYS-009 | Log excursion end | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_event_log.test_end_record_carries_the_peak_in_tenths`, `test_limit_evaluator.test_peak_below_band_counts_distance_downwards`, `test_limit_evaluator.test_peak_is_the_most_extreme_sample` | verified | `10-src/firmware/components/event_log/src/event_log.c#event_log_post`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_peak`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step` |
| MRTM-SYS-010 | Log acknowledgement | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_ack_stops_the_buzzer_in_the_same_step_and_logs`, `test_event_log.test_time_stamp_is_the_utc_second_of_the_post` | verified | `10-src/firmware/components/event_log/src/event_log.c#event_log_post`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now` |
| MRTM-SYS-011 | Display resolution | C (rigour 4) | none | `SP-09`, `test_display_mgr.test_temperature_refreshes_every_10_s_in_tenths`, `test_sensor_sampler.test_conversion_rounds_to_a_tenth_and_adds_the_offset` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_to_tenths` |
| MRTM-SYS-012 | Probe fault detection | C (rigour 4) | none | `SP-02`, `test_mrtm_common.test_crc8_over_a_scratchpad`, `test_mrtm_common.test_crc_check_values`, `test_sensor_sampler.test_bad_crc_is_invalid_but_not_out_of_range`, `test_sensor_sampler.test_fault_after_30_s_without_a_correct_crc`, `test_sensor_sampler.test_fault_clears_on_the_next_valid_sample` | verified | `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step`, `10-src/firmware/components/mrtm_common/src/mrtm_crc.c#mrtm_crc8_maxim`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_probe_fault`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_read` |
| MRTM-SYS-013 | Probe fault message | C (rigour 4) | none | `SP-02`, `test_display_mgr.test_probe_fault_message` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/display_mgr/src/display_mgr.cpp#renderFrame`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_display_step` |
| MRTM-SYS-014 | Read-only event log | C (rigour 4) | none | `SP-08`, `test_usb_export.test_every_write_is_refused`, `test_usb_export.test_history_csv_is_marked_read_only` | verified | `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_init`, `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_write10` |
| MRTM-SYS-015 | Event log capacity | C (rigour 4) | none | `SP-07`, `test_history_ring.test_init_finds_the_head_again_after_a_restart`, `test_history_ring.test_retains_10000_records_after_wrapping`, `test_history_ring.test_retains_10000_straight_after_an_erase_ahead`, `test_usb_export.test_full_history_fits_and_fat_chain_ends` | verified | `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_append`, `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_init`, `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_read` |
| MRTM-SYS-016 | Battery operation | C (rigour 4) | none | `SP-04` | verified | — |
| MRTM-SYS-017 | Allowed band | C (rigour 4) | none | `SP-13`, `test_config_mgr.test_band_outside_2_to_8_is_refused`, `test_config_mgr.test_valid_record_loads_the_2_to_8_degree_band`, `test_limit_evaluator.test_band_edges_two_and_eight_degrees_are_inside` | verified | `10-src/firmware/components/config_mgr/src/config_mgr.c#config_mgr_load`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_init`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step` |
| MRTM-SYS-018 | Excursion end confirmation | C (rigour 4) | `MRTM-ALM-007` | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_end_returns_to_quiet_from_sounding_and_silenced`, `test_limit_evaluator.test_hysteresis_knob_is_zero`, `test_limit_evaluator.test_nth_consecutive_in_sample_ends_excursion`, `test_limit_evaluator.test_out_sample_restarts_the_in_run` | verified | `10-src/config/mrtm_config.h#off`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step` |
| MRTM-SYS-019 | Alarm comes back after silence | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_re_sounds_15_minutes_after_the_ack` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SYS-020 | Clock drift | C (rigour 4) | none | `SP-12`, `test_rtc_clock.test_now_is_the_rtc_copy_refreshed_each_second` | verified | `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_tick` |
| MRTM-SYS-021 | Event log integrity | C (rigour 4) | none | `SP-07`, `test_history_ring.test_both_copies_corrupt_reports_err_crc_and_logs_it`, `test_history_ring.test_corrupt_copy_a_is_read_from_copy_b`, `test_mrtm_common.test_crc_check_values`, `test_usb_export.test_unreadable_record_is_a_corrupt_line` | verified | `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_read`, `10-src/firmware/components/mrtm_common/src/mrtm_crc.c#mrtm_crc32` |
| MRTM-SYS-022 | Log capacity warning | C (rigour 4) | none | `SP-07`, `test_display_mgr.test_calibration_due_and_log_capacity_messages`, `test_history_ring.test_capacity_warning_once_at_9000` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_append`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step` |
| MRTM-SYS-023 | Power restore event | C (rigour 4) | none | `SP-04`, `test_event_log.test_time_stamp_is_the_utc_second_of_the_post`, `test_power_mon.test_mains_loss_and_restore_are_logged_from_the_edge` | verified | `10-src/firmware/components/event_log/src/event_log.c#event_log_post`, `10-src/firmware/components/power_mon/src/power_mon.c#power_mon_isr`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now` |
| MRTM-SYS-024 | Early excursion alarm | C (rigour 4) | `MRTM-ALM-001` | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_early_alarm_clears_back_to_quiet`, `test_alarm_mgr.test_early_alarm_is_red_1_hz_without_buzzer_then_escalates`, `test_limit_evaluator.test_back_in_band_clears_the_early_alarm`, `test_limit_evaluator.test_early_alarm_budget_fits_5_s`, `test_limit_evaluator.test_first_out_sample_raises_the_early_alarm` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step` |

#### Alarm and indication requirement → System Requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-ALM-001 | Alarm early signal latency | C (rigour 4) | `MRTM-SYS-024` | `test_alarm_mgr.test_early_alarm_is_red_1_hz_without_buzzer_then_escalates`, `test_limit_evaluator.test_early_alarm_budget_fits_5_s` | verified | — |
| MRTM-ALM-002 | Alarm excursion confirmation | C (rigour 4) | `MRTM-SYS-002` | `test_int_chains.test_int01_excursion_chain`, `test_limit_evaluator.test_early_alarm_budget_fits_5_s` | verified | — |
| MRTM-ALM-003 | Alarm buzzer latency | C (rigour 4) | `MRTM-SYS-003` | `test_int_chains.test_int01_excursion_chain` | verified | — |
| MRTM-ALM-004 | Alarm acknowledge | C (rigour 4) | `MRTM-SYS-006` | `test_alarm_mgr.test_ack_stops_the_buzzer_in_the_same_step_and_logs` | verified | — |
| MRTM-ALM-005 | Alarm backup path | C (rigour 4) | none | `SP-03`, `test_int_chains.test_int02_watchdog_chain` | verified | — |
| MRTM-ALM-006 | Alarm high-priority auditory pattern | C (rigour 4) | `MRTM-SYS-003` | — | unverified | — |
| MRTM-ALM-007 | Alarm excursion end | C (rigour 4) | `MRTM-SYS-018` | `test_limit_evaluator.test_nth_consecutive_in_sample_ends_excursion` | verified | — |
| MRTM-ALM-008 | Alarm backup hold-up | C (rigour 4) | none | `SP-03` | verified | — |

### Interface Requirement ⇄ Display requirement

#### Interface Requirement → Display requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-IFC-001 | Probe bus | C (rigour 4) | none | `SP-10`, `test_sensor_sampler.test_error_codes_arg_and_bus`, `test_sensor_sampler.test_good_scratchpad_gives_a_valid_sample` | verified | `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_init`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_read` |
| MRTM-IFC-002 | Acknowledge input | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_button_debounce_50_ms` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_button_debounced`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_button_isr` |
| MRTM-IFC-003 | USB readout | C (rigour 4) | none | `SP-08`, `test_usb_export.test_boot_sector_is_a_fat12_volume`, `test_usb_export.test_csv_lines_oldest_first_newest_last`, `test_usb_export.test_every_write_is_refused`, `test_usb_export.test_history_csv_is_marked_read_only` | verified | `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_init`, `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_read10`, `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_write10` |
| MRTM-IFC-004 | Display character height | C (rigour 4) | `MRTM-DSP-002` | `SP-09` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw` |

#### Display requirement → Interface Requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-DSP-001 | Display excursion warning | C (rigour 4) | none | `test_int_chains.test_int01_excursion_chain` | verified | — |
| MRTM-DSP-002 | Display temperature | C (rigour 4) | `MRTM-IFC-004` | `SP-09` | verified | — |
| MRTM-DSP-003 | Display messages | C (rigour 4) | none | `SP-05`, `SP-09` | verified | — |

### Performance Requirement ⇄ Display requirement

#### Performance Requirement → Display requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-PRF-001 | Measurement accuracy | C (rigour 4) | none | `SP-10`, `test_sensor_sampler.test_conversion_rounds_to_a_tenth_and_adds_the_offset` | verified | `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_to_tenths` |
| MRTM-PRF-002 | End-to-end alert time | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_int_chains.test_int01_excursion_chain` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-PRF-003 | Log readout time | C (rigour 4) | none | `SP-08`, `test_usb_export.test_full_history_fits_and_fat_chain_ends` | verified | `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_read10` |
| MRTM-PRF-004 | Display refresh | C (rigour 4) | `MRTM-DSP-002` | `SP-09`, `test_display_mgr.test_temperature_refreshes_every_10_s_in_tenths` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#display_mgr_tick`, `10-src/firmware/components/display_mgr/src/display_mgr.cpp#renderFrame` |

#### Display requirement → Performance Requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-DSP-001 | Display excursion warning | C (rigour 4) | none | `test_int_chains.test_int01_excursion_chain` | verified | — |
| MRTM-DSP-002 | Display temperature | C (rigour 4) | `MRTM-PRF-004` | `SP-09` | verified | — |
| MRTM-DSP-003 | Display messages | C (rigour 4) | none | `SP-05`, `SP-09` | verified | — |

### Safety Requirement ⇄ Display requirement

#### Safety Requirement → Display requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SAF-001 | Buzzer loudness | C (rigour 4) | none | `SP-06` | verified | — |
| MRTM-SAF-002 | Probe fault raises alert | C (rigour 4) | none | `SP-02`, `test_alarm_mgr.test_probe_fault_sounds_1_s_on_1_s_off` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step` |
| MRTM-SAF-003 | Implausible sample | C (rigour 4) | none | `SP-02`, `test_sensor_sampler.test_reading_outside_minus30_to_50_declares_the_fault_at_once` | verified | `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_probe_fault`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_read` |
| MRTM-SAF-004 | Watchdog restart | C (rigour 4) | none | `SP-03`, `test_wdt_kicker.test_task_watchdog_armed_at_5_s` | verified | `10-src/firmware/components/wdt_kicker/src/wdt_kicker.c#wdt_kicker_init` |
| MRTM-SAF-005 | Log power loss | C (rigour 4) | none | `SP-04`, `test_int_chains.test_int05_power_loss_logged_within_1_s`, `test_power_mon.test_mains_loss_and_restore_are_logged_from_the_edge` | verified | `10-src/firmware/components/power_mon/src/power_mon.c#power_mon_isr` |
| MRTM-SAF-006 | Alert survives restart | C (rigour 4) | none | `SP-05`, `test_alarm_mgr.test_acknowledged_alarm_is_not_restored_as_sounding`, `test_alarm_mgr.test_error_codes_full_and_nvs`, `test_alarm_mgr.test_unacknowledged_alarm_is_restored_after_a_restart`, `test_int_chains.test_int04_restart_restores_the_alarm` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_init`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_power_up` |
| MRTM-SAF-007 | Buzzer self-test | C (rigour 4) | none | `SP-05`, `test_diagnostics.test_power_up_tests_pass_inside_their_windows`, `test_diagnostics.test_silent_buzzer_fails_the_power_up_test` | verified | `10-src/firmware/components/diagnostics/src/diagnostics.c#diagnostics_power_up` |
| MRTM-SAF-008 | Low battery alarm | C (rigour 4) | none | `SP-04`, `test_alarm_mgr.test_battery_low_or_fail_safe_forces_the_buzzer`, `test_power_mon.test_battery_below_3400_mv_twice_sounds_the_buzzer` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step`, `10-src/firmware/components/power_mon/src/power_mon.c#power_mon_step` |
| MRTM-SAF-009 | Backup alarm on firmware silence | C (rigour 4) | none | `SP-03`, `test_int_chains.test_int02_watchdog_chain` | verified | `10-src/firmware/components/wdt_kicker/src/wdt_kicker.c#wdt_kicker_step` |
| MRTM-SAF-010 | Watchdog tied to the alarm service | C (rigour 4) | none | `SP-03`, `test_alarm_mgr.test_heartbeat_moves_on_every_step`, `test_int_chains.test_int02_watchdog_chain`, `test_wdt_kicker.test_pulses_stop_within_2_s_of_a_missed_alarm_cycle`, `test_wdt_kicker.test_pulses_while_the_heartbeat_moves` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_heartbeat`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step`, `10-src/firmware/components/wdt_kicker/src/wdt_kicker.c#wdt_kicker_step` |
| MRTM-SAF-011 | Fault tone differs from excursion tone | C (rigour 4) | none | `SP-02`, `test_alarm_mgr.test_probe_fault_sounds_1_s_on_1_s_off` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SAF-012 | Probe calibration due | C (rigour 4) | `MRTM-DSP-003` | `SP-09`, `test_display_mgr.test_calibration_due_and_log_capacity_messages` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step` |
| MRTM-SAF-013 | Alarm on total power loss | C (rigour 4) | none | `SP-03` | verified | — |
| MRTM-SAF-014 | Buzzer open-circuit detection | C (rigour 4) | none | `SP-06`, `test_alarm_mgr.test_no_buzzer_current_for_5_steps_declares_buzzer_fault_red_4_hz` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SAF-015 | Diverse signal for buzzer fault | C (rigour 4) | none | `SP-06`, `test_alarm_mgr.test_no_buzzer_current_for_5_steps_declares_buzzer_fault_red_4_hz` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SAF-016 | Show the band at power-up | C (rigour 4) | `MRTM-DSP-003` | `SP-05`, `test_display_mgr.test_band_and_version_shown_in_the_first_3_s` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#display_mgr_init`, `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/display_mgr/src/display_mgr.cpp#renderFrame`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_power_up` |
| MRTM-SAF-017 | Band integrity check | C (rigour 4) | none | `SP-05`, `test_alarm_mgr.test_battery_low_or_fail_safe_forces_the_buzzer`, `test_config_mgr.test_bad_crc_is_refused_with_err_crc`, `test_config_mgr.test_missing_record_is_err_nvs`, `test_config_mgr.test_store_writes_a_fresh_crc_and_logs_config_changed`, `test_int_chains.test_int03_corrupt_config_fail_safe` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step`, `10-src/firmware/components/config_mgr/src/config_mgr.c#config_mgr_load`, `10-src/firmware/components/config_mgr/src/config_mgr.c#config_mgr_store`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_power_up`, `10-src/firmware/components/mrtm_common/src/mrtm_crc.c#mrtm_crc32` |
| MRTM-SAF-018 | Two copies of every record | C (rigour 4) | none | `SP-07`, `test_event_log.test_error_code_full_after_32`, `test_event_log.test_flash_failure_does_not_loop`, `test_event_log.test_step_numbers_checksums_and_stores_every_queued_record`, `test_history_ring.test_append_writes_copy_a_and_copy_b`, `test_history_ring.test_corrupt_copy_a_is_read_from_copy_b`, `test_history_ring.test_error_codes_flash_arg` | verified | `10-src/firmware/components/event_log/src/event_log.c#event_log_step`, `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_append` |
| MRTM-SAF-019 | Stuck acknowledge button | C (rigour 4) | none | `SP-01`, `test_alarm_mgr.test_button_held_60_s_is_a_button_fault_and_ignored` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_button_debounced`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SAF-020 | Probe placement in the instructions | C (rigour 4) | none | `SP-14` | verified | — |
| MRTM-SAF-021 | I2C bus recovery | C (rigour 4) | none | `SP-09`, `test_display_mgr.test_i2c_timeout_resets_the_bus_within_1_s` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#recoverBus` |
| MRTM-SAF-022 | Clock stop detection | C (rigour 4) | none | `SP-05`, `test_rtc_clock.test_error_codes_bus_and_arg`, `test_rtc_clock.test_oscillator_stop_at_power_up_logs_clock_fault` | verified | `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_power_up`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_init` |
| MRTM-SAF-023 | Backup alarm power-up test | C (rigour 4) | none | `SP-05`, `test_diagnostics.test_backup_alarm_not_heard_fails_and_pulses_resume`, `test_diagnostics.test_power_up_tests_pass_inside_their_windows`, `test_wdt_kicker.test_hold_stops_pulses_and_release_resumes` | verified | `10-src/firmware/components/diagnostics/src/diagnostics.c#diagnostics_power_up` |

#### Display requirement → Safety Requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-DSP-001 | Display excursion warning | C (rigour 4) | none | `test_int_chains.test_int01_excursion_chain` | verified | — |
| MRTM-DSP-002 | Display temperature | C (rigour 4) | none | `SP-09` | verified | — |
| MRTM-DSP-003 | Display messages | C (rigour 4) | `MRTM-SAF-012`, `MRTM-SAF-016` | `SP-05`, `SP-09` | verified | — |

### System Requirement ⇄ Display requirement

#### System Requirement → Display requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SYS-001 | Sampling period | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_sensor_sampler.test_good_scratchpad_gives_a_valid_sample` | verified | `10-src/config/mrtm_config.h#off`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_read` |
| MRTM-SYS-002 | Excursion confirmation | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_int_chains.test_int01_excursion_chain`, `test_limit_evaluator.test_invalid_sample_neither_counts_nor_resets`, `test_limit_evaluator.test_n_minus_one_out_then_one_in_does_not_confirm`, `test_limit_evaluator.test_nth_consecutive_out_sample_confirms` | verified | `10-src/config/mrtm_config.h#off`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step` |
| MRTM-SYS-003 | Buzzer on excursion | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_confirm_sounds_the_buzzer_and_flashes_red_at_2_hz`, `test_int_chains.test_int01_excursion_chain` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take` |
| MRTM-SYS-004 | Red indicator on excursion | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_confirm_sounds_the_buzzer_and_flashes_red_at_2_hz` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SYS-005 | Warning on excursion | C (rigour 4) | `MRTM-DSP-001` | `SP-01`, `SP-01-H`, `test_display_mgr.test_excursion_warning_for_the_whole_excursion`, `test_int_chains.test_int01_excursion_chain` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/display_mgr/src/display_mgr.cpp#renderFrame`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_display_step` |
| MRTM-SYS-006 | Acknowledge silences buzzer | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_ack_stops_the_buzzer_in_the_same_step_and_logs` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_button_debounced`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_post`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take` |
| MRTM-SYS-007 | Warning stays while excursion is open | C (rigour 4) | `MRTM-DSP-001` | `SP-01`, `test_display_mgr.test_excursion_warning_for_the_whole_excursion` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw` |
| MRTM-SYS-008 | Log excursion start | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_event_log.test_time_stamp_is_the_utc_second_of_the_post`, `test_int_chains.test_int01_excursion_chain`, `test_usb_export.test_csv_lines_oldest_first_newest_last` | verified | `10-src/firmware/components/event_log/src/event_log.c#event_log_post`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now` |
| MRTM-SYS-009 | Log excursion end | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_event_log.test_end_record_carries_the_peak_in_tenths`, `test_limit_evaluator.test_peak_below_band_counts_distance_downwards`, `test_limit_evaluator.test_peak_is_the_most_extreme_sample` | verified | `10-src/firmware/components/event_log/src/event_log.c#event_log_post`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_peak`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step` |
| MRTM-SYS-010 | Log acknowledgement | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_ack_stops_the_buzzer_in_the_same_step_and_logs`, `test_event_log.test_time_stamp_is_the_utc_second_of_the_post` | verified | `10-src/firmware/components/event_log/src/event_log.c#event_log_post`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now` |
| MRTM-SYS-011 | Display resolution | C (rigour 4) | `MRTM-DSP-002` | `SP-09`, `test_display_mgr.test_temperature_refreshes_every_10_s_in_tenths`, `test_sensor_sampler.test_conversion_rounds_to_a_tenth_and_adds_the_offset` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_to_tenths` |
| MRTM-SYS-012 | Probe fault detection | C (rigour 4) | none | `SP-02`, `test_mrtm_common.test_crc8_over_a_scratchpad`, `test_mrtm_common.test_crc_check_values`, `test_sensor_sampler.test_bad_crc_is_invalid_but_not_out_of_range`, `test_sensor_sampler.test_fault_after_30_s_without_a_correct_crc`, `test_sensor_sampler.test_fault_clears_on_the_next_valid_sample` | verified | `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step`, `10-src/firmware/components/mrtm_common/src/mrtm_crc.c#mrtm_crc8_maxim`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_probe_fault`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_read` |
| MRTM-SYS-013 | Probe fault message | C (rigour 4) | `MRTM-DSP-003` | `SP-02`, `test_display_mgr.test_probe_fault_message` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/display_mgr/src/display_mgr.cpp#renderFrame`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_display_step` |
| MRTM-SYS-014 | Read-only event log | C (rigour 4) | none | `SP-08`, `test_usb_export.test_every_write_is_refused`, `test_usb_export.test_history_csv_is_marked_read_only` | verified | `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_init`, `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_write10` |
| MRTM-SYS-015 | Event log capacity | C (rigour 4) | none | `SP-07`, `test_history_ring.test_init_finds_the_head_again_after_a_restart`, `test_history_ring.test_retains_10000_records_after_wrapping`, `test_history_ring.test_retains_10000_straight_after_an_erase_ahead`, `test_usb_export.test_full_history_fits_and_fat_chain_ends` | verified | `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_append`, `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_init`, `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_read` |
| MRTM-SYS-016 | Battery operation | C (rigour 4) | none | `SP-04` | verified | — |
| MRTM-SYS-017 | Allowed band | C (rigour 4) | none | `SP-13`, `test_config_mgr.test_band_outside_2_to_8_is_refused`, `test_config_mgr.test_valid_record_loads_the_2_to_8_degree_band`, `test_limit_evaluator.test_band_edges_two_and_eight_degrees_are_inside` | verified | `10-src/firmware/components/config_mgr/src/config_mgr.c#config_mgr_load`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_init`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step` |
| MRTM-SYS-018 | Excursion end confirmation | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_end_returns_to_quiet_from_sounding_and_silenced`, `test_limit_evaluator.test_hysteresis_knob_is_zero`, `test_limit_evaluator.test_nth_consecutive_in_sample_ends_excursion`, `test_limit_evaluator.test_out_sample_restarts_the_in_run` | verified | `10-src/config/mrtm_config.h#off`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step` |
| MRTM-SYS-019 | Alarm comes back after silence | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_re_sounds_15_minutes_after_the_ack` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SYS-020 | Clock drift | C (rigour 4) | none | `SP-12`, `test_rtc_clock.test_now_is_the_rtc_copy_refreshed_each_second` | verified | `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_tick` |
| MRTM-SYS-021 | Event log integrity | C (rigour 4) | none | `SP-07`, `test_history_ring.test_both_copies_corrupt_reports_err_crc_and_logs_it`, `test_history_ring.test_corrupt_copy_a_is_read_from_copy_b`, `test_mrtm_common.test_crc_check_values`, `test_usb_export.test_unreadable_record_is_a_corrupt_line` | verified | `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_read`, `10-src/firmware/components/mrtm_common/src/mrtm_crc.c#mrtm_crc32` |
| MRTM-SYS-022 | Log capacity warning | C (rigour 4) | `MRTM-DSP-003` | `SP-07`, `test_display_mgr.test_calibration_due_and_log_capacity_messages`, `test_history_ring.test_capacity_warning_once_at_9000` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_append`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step` |
| MRTM-SYS-023 | Power restore event | C (rigour 4) | none | `SP-04`, `test_event_log.test_time_stamp_is_the_utc_second_of_the_post`, `test_power_mon.test_mains_loss_and_restore_are_logged_from_the_edge` | verified | `10-src/firmware/components/event_log/src/event_log.c#event_log_post`, `10-src/firmware/components/power_mon/src/power_mon.c#power_mon_isr`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now` |
| MRTM-SYS-024 | Early excursion alarm | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_early_alarm_clears_back_to_quiet`, `test_alarm_mgr.test_early_alarm_is_red_1_hz_without_buzzer_then_escalates`, `test_limit_evaluator.test_back_in_band_clears_the_early_alarm`, `test_limit_evaluator.test_early_alarm_budget_fits_5_s`, `test_limit_evaluator.test_first_out_sample_raises_the_early_alarm` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step` |

#### Display requirement → System Requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-DSP-001 | Display excursion warning | C (rigour 4) | `MRTM-SYS-005`, `MRTM-SYS-007` | `test_int_chains.test_int01_excursion_chain` | verified | — |
| MRTM-DSP-002 | Display temperature | C (rigour 4) | `MRTM-SYS-011` | `SP-09` | verified | — |
| MRTM-DSP-003 | Display messages | C (rigour 4) | `MRTM-SYS-013`, `MRTM-SYS-022` | `SP-05`, `SP-09` | verified | — |

### Interface Requirement ⇄ Logging and history requirement

#### Interface Requirement → Logging and history requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-IFC-001 | Probe bus | C (rigour 4) | none | `SP-10`, `test_sensor_sampler.test_error_codes_arg_and_bus`, `test_sensor_sampler.test_good_scratchpad_gives_a_valid_sample` | verified | `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_init`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_read` |
| MRTM-IFC-002 | Acknowledge input | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_button_debounce_50_ms` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_button_debounced`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_button_isr` |
| MRTM-IFC-003 | USB readout | C (rigour 4) | `MRTM-LOG-003` | `SP-08`, `test_usb_export.test_boot_sector_is_a_fat12_volume`, `test_usb_export.test_csv_lines_oldest_first_newest_last`, `test_usb_export.test_every_write_is_refused`, `test_usb_export.test_history_csv_is_marked_read_only` | verified | `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_init`, `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_read10`, `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_write10` |
| MRTM-IFC-004 | Display character height | C (rigour 4) | none | `SP-09` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw` |

#### Logging and history requirement → Interface Requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-LOG-001 | Logging record write | C (rigour 4) | none | `SP-07` | verified | — |
| MRTM-LOG-002 | Logging retention | C (rigour 4) | none | `SP-07` | verified | — |
| MRTM-LOG-003 | Logging read-only export | C (rigour 4) | `MRTM-IFC-003` | `SP-08` | verified | — |
| MRTM-LOG-004 | Logging time stamp | C (rigour 4) | none | `SP-12` | verified | — |

### Performance Requirement ⇄ Logging and history requirement

#### Performance Requirement → Logging and history requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-PRF-001 | Measurement accuracy | C (rigour 4) | none | `SP-10`, `test_sensor_sampler.test_conversion_rounds_to_a_tenth_and_adds_the_offset` | verified | `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_to_tenths` |
| MRTM-PRF-002 | End-to-end alert time | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_int_chains.test_int01_excursion_chain` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-PRF-003 | Log readout time | C (rigour 4) | `MRTM-LOG-003` | `SP-08`, `test_usb_export.test_full_history_fits_and_fat_chain_ends` | verified | `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_read10` |
| MRTM-PRF-004 | Display refresh | C (rigour 4) | none | `SP-09`, `test_display_mgr.test_temperature_refreshes_every_10_s_in_tenths` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#display_mgr_tick`, `10-src/firmware/components/display_mgr/src/display_mgr.cpp#renderFrame` |

#### Logging and history requirement → Performance Requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-LOG-001 | Logging record write | C (rigour 4) | none | `SP-07` | verified | — |
| MRTM-LOG-002 | Logging retention | C (rigour 4) | none | `SP-07` | verified | — |
| MRTM-LOG-003 | Logging read-only export | C (rigour 4) | `MRTM-PRF-003` | `SP-08` | verified | — |
| MRTM-LOG-004 | Logging time stamp | C (rigour 4) | none | `SP-12` | verified | — |

### Safety Requirement ⇄ Logging and history requirement

#### Safety Requirement → Logging and history requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SAF-001 | Buzzer loudness | C (rigour 4) | none | `SP-06` | verified | — |
| MRTM-SAF-002 | Probe fault raises alert | C (rigour 4) | none | `SP-02`, `test_alarm_mgr.test_probe_fault_sounds_1_s_on_1_s_off` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step` |
| MRTM-SAF-003 | Implausible sample | C (rigour 4) | none | `SP-02`, `test_sensor_sampler.test_reading_outside_minus30_to_50_declares_the_fault_at_once` | verified | `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_probe_fault`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_read` |
| MRTM-SAF-004 | Watchdog restart | C (rigour 4) | none | `SP-03`, `test_wdt_kicker.test_task_watchdog_armed_at_5_s` | verified | `10-src/firmware/components/wdt_kicker/src/wdt_kicker.c#wdt_kicker_init` |
| MRTM-SAF-005 | Log power loss | C (rigour 4) | none | `SP-04`, `test_int_chains.test_int05_power_loss_logged_within_1_s`, `test_power_mon.test_mains_loss_and_restore_are_logged_from_the_edge` | verified | `10-src/firmware/components/power_mon/src/power_mon.c#power_mon_isr` |
| MRTM-SAF-006 | Alert survives restart | C (rigour 4) | none | `SP-05`, `test_alarm_mgr.test_acknowledged_alarm_is_not_restored_as_sounding`, `test_alarm_mgr.test_error_codes_full_and_nvs`, `test_alarm_mgr.test_unacknowledged_alarm_is_restored_after_a_restart`, `test_int_chains.test_int04_restart_restores_the_alarm` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_init`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_power_up` |
| MRTM-SAF-007 | Buzzer self-test | C (rigour 4) | none | `SP-05`, `test_diagnostics.test_power_up_tests_pass_inside_their_windows`, `test_diagnostics.test_silent_buzzer_fails_the_power_up_test` | verified | `10-src/firmware/components/diagnostics/src/diagnostics.c#diagnostics_power_up` |
| MRTM-SAF-008 | Low battery alarm | C (rigour 4) | none | `SP-04`, `test_alarm_mgr.test_battery_low_or_fail_safe_forces_the_buzzer`, `test_power_mon.test_battery_below_3400_mv_twice_sounds_the_buzzer` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step`, `10-src/firmware/components/power_mon/src/power_mon.c#power_mon_step` |
| MRTM-SAF-009 | Backup alarm on firmware silence | C (rigour 4) | none | `SP-03`, `test_int_chains.test_int02_watchdog_chain` | verified | `10-src/firmware/components/wdt_kicker/src/wdt_kicker.c#wdt_kicker_step` |
| MRTM-SAF-010 | Watchdog tied to the alarm service | C (rigour 4) | none | `SP-03`, `test_alarm_mgr.test_heartbeat_moves_on_every_step`, `test_int_chains.test_int02_watchdog_chain`, `test_wdt_kicker.test_pulses_stop_within_2_s_of_a_missed_alarm_cycle`, `test_wdt_kicker.test_pulses_while_the_heartbeat_moves` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_heartbeat`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step`, `10-src/firmware/components/wdt_kicker/src/wdt_kicker.c#wdt_kicker_step` |
| MRTM-SAF-011 | Fault tone differs from excursion tone | C (rigour 4) | none | `SP-02`, `test_alarm_mgr.test_probe_fault_sounds_1_s_on_1_s_off` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SAF-012 | Probe calibration due | C (rigour 4) | none | `SP-09`, `test_display_mgr.test_calibration_due_and_log_capacity_messages` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step` |
| MRTM-SAF-013 | Alarm on total power loss | C (rigour 4) | none | `SP-03` | verified | — |
| MRTM-SAF-014 | Buzzer open-circuit detection | C (rigour 4) | none | `SP-06`, `test_alarm_mgr.test_no_buzzer_current_for_5_steps_declares_buzzer_fault_red_4_hz` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SAF-015 | Diverse signal for buzzer fault | C (rigour 4) | none | `SP-06`, `test_alarm_mgr.test_no_buzzer_current_for_5_steps_declares_buzzer_fault_red_4_hz` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SAF-016 | Show the band at power-up | C (rigour 4) | none | `SP-05`, `test_display_mgr.test_band_and_version_shown_in_the_first_3_s` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#display_mgr_init`, `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/display_mgr/src/display_mgr.cpp#renderFrame`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_power_up` |
| MRTM-SAF-017 | Band integrity check | C (rigour 4) | none | `SP-05`, `test_alarm_mgr.test_battery_low_or_fail_safe_forces_the_buzzer`, `test_config_mgr.test_bad_crc_is_refused_with_err_crc`, `test_config_mgr.test_missing_record_is_err_nvs`, `test_config_mgr.test_store_writes_a_fresh_crc_and_logs_config_changed`, `test_int_chains.test_int03_corrupt_config_fail_safe` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step`, `10-src/firmware/components/config_mgr/src/config_mgr.c#config_mgr_load`, `10-src/firmware/components/config_mgr/src/config_mgr.c#config_mgr_store`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_power_up`, `10-src/firmware/components/mrtm_common/src/mrtm_crc.c#mrtm_crc32` |
| MRTM-SAF-018 | Two copies of every record | C (rigour 4) | `MRTM-LOG-001` | `SP-07`, `test_event_log.test_error_code_full_after_32`, `test_event_log.test_flash_failure_does_not_loop`, `test_event_log.test_step_numbers_checksums_and_stores_every_queued_record`, `test_history_ring.test_append_writes_copy_a_and_copy_b`, `test_history_ring.test_corrupt_copy_a_is_read_from_copy_b`, `test_history_ring.test_error_codes_flash_arg` | verified | `10-src/firmware/components/event_log/src/event_log.c#event_log_step`, `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_append` |
| MRTM-SAF-019 | Stuck acknowledge button | C (rigour 4) | none | `SP-01`, `test_alarm_mgr.test_button_held_60_s_is_a_button_fault_and_ignored` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_button_debounced`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SAF-020 | Probe placement in the instructions | C (rigour 4) | none | `SP-14` | verified | — |
| MRTM-SAF-021 | I2C bus recovery | C (rigour 4) | none | `SP-09`, `test_display_mgr.test_i2c_timeout_resets_the_bus_within_1_s` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#recoverBus` |
| MRTM-SAF-022 | Clock stop detection | C (rigour 4) | `MRTM-LOG-004` | `SP-05`, `test_rtc_clock.test_error_codes_bus_and_arg`, `test_rtc_clock.test_oscillator_stop_at_power_up_logs_clock_fault` | verified | `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_power_up`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_init` |
| MRTM-SAF-023 | Backup alarm power-up test | C (rigour 4) | none | `SP-05`, `test_diagnostics.test_backup_alarm_not_heard_fails_and_pulses_resume`, `test_diagnostics.test_power_up_tests_pass_inside_their_windows`, `test_wdt_kicker.test_hold_stops_pulses_and_release_resumes` | verified | `10-src/firmware/components/diagnostics/src/diagnostics.c#diagnostics_power_up` |

#### Logging and history requirement → Safety Requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-LOG-001 | Logging record write | C (rigour 4) | `MRTM-SAF-018` | `SP-07` | verified | — |
| MRTM-LOG-002 | Logging retention | C (rigour 4) | none | `SP-07` | verified | — |
| MRTM-LOG-003 | Logging read-only export | C (rigour 4) | none | `SP-08` | verified | — |
| MRTM-LOG-004 | Logging time stamp | C (rigour 4) | `MRTM-SAF-022` | `SP-12` | verified | — |

### System Requirement ⇄ Logging and history requirement

#### System Requirement → Logging and history requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SYS-001 | Sampling period | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_sensor_sampler.test_good_scratchpad_gives_a_valid_sample` | verified | `10-src/config/mrtm_config.h#off`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_read` |
| MRTM-SYS-002 | Excursion confirmation | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_int_chains.test_int01_excursion_chain`, `test_limit_evaluator.test_invalid_sample_neither_counts_nor_resets`, `test_limit_evaluator.test_n_minus_one_out_then_one_in_does_not_confirm`, `test_limit_evaluator.test_nth_consecutive_out_sample_confirms` | verified | `10-src/config/mrtm_config.h#off`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step` |
| MRTM-SYS-003 | Buzzer on excursion | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_confirm_sounds_the_buzzer_and_flashes_red_at_2_hz`, `test_int_chains.test_int01_excursion_chain` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take` |
| MRTM-SYS-004 | Red indicator on excursion | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_confirm_sounds_the_buzzer_and_flashes_red_at_2_hz` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SYS-005 | Warning on excursion | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_display_mgr.test_excursion_warning_for_the_whole_excursion`, `test_int_chains.test_int01_excursion_chain` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/display_mgr/src/display_mgr.cpp#renderFrame`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_display_step` |
| MRTM-SYS-006 | Acknowledge silences buzzer | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_ack_stops_the_buzzer_in_the_same_step_and_logs` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_button_debounced`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_post`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take` |
| MRTM-SYS-007 | Warning stays while excursion is open | C (rigour 4) | none | `SP-01`, `test_display_mgr.test_excursion_warning_for_the_whole_excursion` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw` |
| MRTM-SYS-008 | Log excursion start | C (rigour 4) | `MRTM-LOG-001`, `MRTM-LOG-004` | `SP-01`, `SP-01-H`, `test_event_log.test_time_stamp_is_the_utc_second_of_the_post`, `test_int_chains.test_int01_excursion_chain`, `test_usb_export.test_csv_lines_oldest_first_newest_last` | verified | `10-src/firmware/components/event_log/src/event_log.c#event_log_post`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now` |
| MRTM-SYS-009 | Log excursion end | C (rigour 4) | `MRTM-LOG-001` | `SP-01`, `SP-01-H`, `test_event_log.test_end_record_carries_the_peak_in_tenths`, `test_limit_evaluator.test_peak_below_band_counts_distance_downwards`, `test_limit_evaluator.test_peak_is_the_most_extreme_sample` | verified | `10-src/firmware/components/event_log/src/event_log.c#event_log_post`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_peak`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step` |
| MRTM-SYS-010 | Log acknowledgement | C (rigour 4) | `MRTM-LOG-001` | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_ack_stops_the_buzzer_in_the_same_step_and_logs`, `test_event_log.test_time_stamp_is_the_utc_second_of_the_post` | verified | `10-src/firmware/components/event_log/src/event_log.c#event_log_post`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now` |
| MRTM-SYS-011 | Display resolution | C (rigour 4) | none | `SP-09`, `test_display_mgr.test_temperature_refreshes_every_10_s_in_tenths`, `test_sensor_sampler.test_conversion_rounds_to_a_tenth_and_adds_the_offset` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_to_tenths` |
| MRTM-SYS-012 | Probe fault detection | C (rigour 4) | none | `SP-02`, `test_mrtm_common.test_crc8_over_a_scratchpad`, `test_mrtm_common.test_crc_check_values`, `test_sensor_sampler.test_bad_crc_is_invalid_but_not_out_of_range`, `test_sensor_sampler.test_fault_after_30_s_without_a_correct_crc`, `test_sensor_sampler.test_fault_clears_on_the_next_valid_sample` | verified | `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step`, `10-src/firmware/components/mrtm_common/src/mrtm_crc.c#mrtm_crc8_maxim`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_probe_fault`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_read` |
| MRTM-SYS-013 | Probe fault message | C (rigour 4) | none | `SP-02`, `test_display_mgr.test_probe_fault_message` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/display_mgr/src/display_mgr.cpp#renderFrame`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_display_step` |
| MRTM-SYS-014 | Read-only event log | C (rigour 4) | `MRTM-LOG-003` | `SP-08`, `test_usb_export.test_every_write_is_refused`, `test_usb_export.test_history_csv_is_marked_read_only` | verified | `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_init`, `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_write10` |
| MRTM-SYS-015 | Event log capacity | C (rigour 4) | `MRTM-LOG-002` | `SP-07`, `test_history_ring.test_init_finds_the_head_again_after_a_restart`, `test_history_ring.test_retains_10000_records_after_wrapping`, `test_history_ring.test_retains_10000_straight_after_an_erase_ahead`, `test_usb_export.test_full_history_fits_and_fat_chain_ends` | verified | `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_append`, `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_init`, `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_read` |
| MRTM-SYS-016 | Battery operation | C (rigour 4) | none | `SP-04` | verified | — |
| MRTM-SYS-017 | Allowed band | C (rigour 4) | none | `SP-13`, `test_config_mgr.test_band_outside_2_to_8_is_refused`, `test_config_mgr.test_valid_record_loads_the_2_to_8_degree_band`, `test_limit_evaluator.test_band_edges_two_and_eight_degrees_are_inside` | verified | `10-src/firmware/components/config_mgr/src/config_mgr.c#config_mgr_load`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_init`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step` |
| MRTM-SYS-018 | Excursion end confirmation | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_end_returns_to_quiet_from_sounding_and_silenced`, `test_limit_evaluator.test_hysteresis_knob_is_zero`, `test_limit_evaluator.test_nth_consecutive_in_sample_ends_excursion`, `test_limit_evaluator.test_out_sample_restarts_the_in_run` | verified | `10-src/config/mrtm_config.h#off`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step` |
| MRTM-SYS-019 | Alarm comes back after silence | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_re_sounds_15_minutes_after_the_ack` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SYS-020 | Clock drift | C (rigour 4) | `MRTM-LOG-004` | `SP-12`, `test_rtc_clock.test_now_is_the_rtc_copy_refreshed_each_second` | verified | `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_tick` |
| MRTM-SYS-021 | Event log integrity | C (rigour 4) | none | `SP-07`, `test_history_ring.test_both_copies_corrupt_reports_err_crc_and_logs_it`, `test_history_ring.test_corrupt_copy_a_is_read_from_copy_b`, `test_mrtm_common.test_crc_check_values`, `test_usb_export.test_unreadable_record_is_a_corrupt_line` | verified | `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_read`, `10-src/firmware/components/mrtm_common/src/mrtm_crc.c#mrtm_crc32` |
| MRTM-SYS-022 | Log capacity warning | C (rigour 4) | none | `SP-07`, `test_display_mgr.test_calibration_due_and_log_capacity_messages`, `test_history_ring.test_capacity_warning_once_at_9000` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_append`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step` |
| MRTM-SYS-023 | Power restore event | C (rigour 4) | none | `SP-04`, `test_event_log.test_time_stamp_is_the_utc_second_of_the_post`, `test_power_mon.test_mains_loss_and_restore_are_logged_from_the_edge` | verified | `10-src/firmware/components/event_log/src/event_log.c#event_log_post`, `10-src/firmware/components/power_mon/src/power_mon.c#power_mon_isr`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now` |
| MRTM-SYS-024 | Early excursion alarm | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_early_alarm_clears_back_to_quiet`, `test_alarm_mgr.test_early_alarm_is_red_1_hz_without_buzzer_then_escalates`, `test_limit_evaluator.test_back_in_band_clears_the_early_alarm`, `test_limit_evaluator.test_early_alarm_budget_fits_5_s`, `test_limit_evaluator.test_first_out_sample_raises_the_early_alarm` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step` |

#### Logging and history requirement → System Requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-LOG-001 | Logging record write | C (rigour 4) | `MRTM-SYS-008`, `MRTM-SYS-009`, `MRTM-SYS-010` | `SP-07` | verified | — |
| MRTM-LOG-002 | Logging retention | C (rigour 4) | `MRTM-SYS-015` | `SP-07` | verified | — |
| MRTM-LOG-003 | Logging read-only export | C (rigour 4) | `MRTM-SYS-014` | `SP-08` | verified | — |
| MRTM-LOG-004 | Logging time stamp | C (rigour 4) | `MRTM-SYS-008`, `MRTM-SYS-020` | `SP-12` | verified | — |

### Environmental Requirement ⇄ Power requirement

#### Environmental Requirement → Power requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-ENV-001 | Battery endurance | C (rigour 4) | `MRTM-PWR-002` | `SP-04` | verified | — |
| MRTM-ENV-002 | Ambient temperature | C (rigour 4) | none | `SP-11` | verified | — |
| MRTM-ENV-003 | Humidity | C (rigour 4) | none | `SP-11` | verified | — |
| MRTM-ENV-004 | Probe environment | C (rigour 4) | none | `SP-10` | verified | — |

#### Power requirement → Environmental Requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-PWR-001 | Power switch-over | C (rigour 4) | none | `SP-04` | verified | — |
| MRTM-PWR-002 | Power battery time | C (rigour 4) | `MRTM-ENV-001` | `SP-04` | verified | — |
| MRTM-PWR-003 | Power events | C (rigour 4) | none | `test_int_chains.test_int05_power_loss_logged_within_1_s` | verified | — |

### Safety Requirement ⇄ Power requirement

#### Safety Requirement → Power requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SAF-001 | Buzzer loudness | C (rigour 4) | none | `SP-06` | verified | — |
| MRTM-SAF-002 | Probe fault raises alert | C (rigour 4) | none | `SP-02`, `test_alarm_mgr.test_probe_fault_sounds_1_s_on_1_s_off` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step` |
| MRTM-SAF-003 | Implausible sample | C (rigour 4) | none | `SP-02`, `test_sensor_sampler.test_reading_outside_minus30_to_50_declares_the_fault_at_once` | verified | `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_probe_fault`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_read` |
| MRTM-SAF-004 | Watchdog restart | C (rigour 4) | none | `SP-03`, `test_wdt_kicker.test_task_watchdog_armed_at_5_s` | verified | `10-src/firmware/components/wdt_kicker/src/wdt_kicker.c#wdt_kicker_init` |
| MRTM-SAF-005 | Log power loss | C (rigour 4) | `MRTM-PWR-003` | `SP-04`, `test_int_chains.test_int05_power_loss_logged_within_1_s`, `test_power_mon.test_mains_loss_and_restore_are_logged_from_the_edge` | verified | `10-src/firmware/components/power_mon/src/power_mon.c#power_mon_isr` |
| MRTM-SAF-006 | Alert survives restart | C (rigour 4) | none | `SP-05`, `test_alarm_mgr.test_acknowledged_alarm_is_not_restored_as_sounding`, `test_alarm_mgr.test_error_codes_full_and_nvs`, `test_alarm_mgr.test_unacknowledged_alarm_is_restored_after_a_restart`, `test_int_chains.test_int04_restart_restores_the_alarm` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_init`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_power_up` |
| MRTM-SAF-007 | Buzzer self-test | C (rigour 4) | none | `SP-05`, `test_diagnostics.test_power_up_tests_pass_inside_their_windows`, `test_diagnostics.test_silent_buzzer_fails_the_power_up_test` | verified | `10-src/firmware/components/diagnostics/src/diagnostics.c#diagnostics_power_up` |
| MRTM-SAF-008 | Low battery alarm | C (rigour 4) | `MRTM-PWR-003` | `SP-04`, `test_alarm_mgr.test_battery_low_or_fail_safe_forces_the_buzzer`, `test_power_mon.test_battery_below_3400_mv_twice_sounds_the_buzzer` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step`, `10-src/firmware/components/power_mon/src/power_mon.c#power_mon_step` |
| MRTM-SAF-009 | Backup alarm on firmware silence | C (rigour 4) | none | `SP-03`, `test_int_chains.test_int02_watchdog_chain` | verified | `10-src/firmware/components/wdt_kicker/src/wdt_kicker.c#wdt_kicker_step` |
| MRTM-SAF-010 | Watchdog tied to the alarm service | C (rigour 4) | none | `SP-03`, `test_alarm_mgr.test_heartbeat_moves_on_every_step`, `test_int_chains.test_int02_watchdog_chain`, `test_wdt_kicker.test_pulses_stop_within_2_s_of_a_missed_alarm_cycle`, `test_wdt_kicker.test_pulses_while_the_heartbeat_moves` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_heartbeat`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step`, `10-src/firmware/components/wdt_kicker/src/wdt_kicker.c#wdt_kicker_step` |
| MRTM-SAF-011 | Fault tone differs from excursion tone | C (rigour 4) | none | `SP-02`, `test_alarm_mgr.test_probe_fault_sounds_1_s_on_1_s_off` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SAF-012 | Probe calibration due | C (rigour 4) | none | `SP-09`, `test_display_mgr.test_calibration_due_and_log_capacity_messages` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step` |
| MRTM-SAF-013 | Alarm on total power loss | C (rigour 4) | none | `SP-03` | verified | — |
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

#### Power requirement → Safety Requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-PWR-001 | Power switch-over | C (rigour 4) | none | `SP-04` | verified | — |
| MRTM-PWR-002 | Power battery time | C (rigour 4) | none | `SP-04` | verified | — |
| MRTM-PWR-003 | Power events | C (rigour 4) | `MRTM-SAF-005`, `MRTM-SAF-008` | `test_int_chains.test_int05_power_loss_logged_within_1_s` | verified | — |

### System Requirement ⇄ Power requirement

#### System Requirement → Power requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SYS-001 | Sampling period | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_sensor_sampler.test_good_scratchpad_gives_a_valid_sample` | verified | `10-src/config/mrtm_config.h#off`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_read` |
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
| MRTM-SYS-016 | Battery operation | C (rigour 4) | `MRTM-PWR-001` | `SP-04` | verified | — |
| MRTM-SYS-017 | Allowed band | C (rigour 4) | none | `SP-13`, `test_config_mgr.test_band_outside_2_to_8_is_refused`, `test_config_mgr.test_valid_record_loads_the_2_to_8_degree_band`, `test_limit_evaluator.test_band_edges_two_and_eight_degrees_are_inside` | verified | `10-src/firmware/components/config_mgr/src/config_mgr.c#config_mgr_load`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_init`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step` |
| MRTM-SYS-018 | Excursion end confirmation | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_end_returns_to_quiet_from_sounding_and_silenced`, `test_limit_evaluator.test_hysteresis_knob_is_zero`, `test_limit_evaluator.test_nth_consecutive_in_sample_ends_excursion`, `test_limit_evaluator.test_out_sample_restarts_the_in_run` | verified | `10-src/config/mrtm_config.h#off`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step` |
| MRTM-SYS-019 | Alarm comes back after silence | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_re_sounds_15_minutes_after_the_ack` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SYS-020 | Clock drift | C (rigour 4) | none | `SP-12`, `test_rtc_clock.test_now_is_the_rtc_copy_refreshed_each_second` | verified | `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_tick` |
| MRTM-SYS-021 | Event log integrity | C (rigour 4) | none | `SP-07`, `test_history_ring.test_both_copies_corrupt_reports_err_crc_and_logs_it`, `test_history_ring.test_corrupt_copy_a_is_read_from_copy_b`, `test_mrtm_common.test_crc_check_values`, `test_usb_export.test_unreadable_record_is_a_corrupt_line` | verified | `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_read`, `10-src/firmware/components/mrtm_common/src/mrtm_crc.c#mrtm_crc32` |
| MRTM-SYS-022 | Log capacity warning | C (rigour 4) | none | `SP-07`, `test_display_mgr.test_calibration_due_and_log_capacity_messages`, `test_history_ring.test_capacity_warning_once_at_9000` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_append`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step` |
| MRTM-SYS-023 | Power restore event | C (rigour 4) | `MRTM-PWR-003` | `SP-04`, `test_event_log.test_time_stamp_is_the_utc_second_of_the_post`, `test_power_mon.test_mains_loss_and_restore_are_logged_from_the_edge` | verified | `10-src/firmware/components/event_log/src/event_log.c#event_log_post`, `10-src/firmware/components/power_mon/src/power_mon.c#power_mon_isr`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now` |
| MRTM-SYS-024 | Early excursion alarm | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_early_alarm_clears_back_to_quiet`, `test_alarm_mgr.test_early_alarm_is_red_1_hz_without_buzzer_then_escalates`, `test_limit_evaluator.test_back_in_band_clears_the_early_alarm`, `test_limit_evaluator.test_early_alarm_budget_fits_5_s`, `test_limit_evaluator.test_first_out_sample_raises_the_early_alarm` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step` |

#### Power requirement → System Requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-PWR-001 | Power switch-over | C (rigour 4) | `MRTM-SYS-016` | `SP-04` | verified | — |
| MRTM-PWR-002 | Power battery time | C (rigour 4) | none | `SP-04` | verified | — |
| MRTM-PWR-003 | Power events | C (rigour 4) | `MRTM-SYS-023` | `test_int_chains.test_int05_power_loss_logged_within_1_s` | verified | — |

### Safety Requirement ⇄ Supervision requirement

#### Safety Requirement → Supervision requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SAF-001 | Buzzer loudness | C (rigour 4) | none | `SP-06` | verified | — |
| MRTM-SAF-002 | Probe fault raises alert | C (rigour 4) | none | `SP-02`, `test_alarm_mgr.test_probe_fault_sounds_1_s_on_1_s_off` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step` |
| MRTM-SAF-003 | Implausible sample | C (rigour 4) | none | `SP-02`, `test_sensor_sampler.test_reading_outside_minus30_to_50_declares_the_fault_at_once` | verified | `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_probe_fault`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_read` |
| MRTM-SAF-004 | Watchdog restart | C (rigour 4) | `MRTM-SUP-001` | `SP-03`, `test_wdt_kicker.test_task_watchdog_armed_at_5_s` | verified | `10-src/firmware/components/wdt_kicker/src/wdt_kicker.c#wdt_kicker_init` |
| MRTM-SAF-005 | Log power loss | C (rigour 4) | none | `SP-04`, `test_int_chains.test_int05_power_loss_logged_within_1_s`, `test_power_mon.test_mains_loss_and_restore_are_logged_from_the_edge` | verified | `10-src/firmware/components/power_mon/src/power_mon.c#power_mon_isr` |
| MRTM-SAF-006 | Alert survives restart | C (rigour 4) | `MRTM-SUP-001` | `SP-05`, `test_alarm_mgr.test_acknowledged_alarm_is_not_restored_as_sounding`, `test_alarm_mgr.test_error_codes_full_and_nvs`, `test_alarm_mgr.test_unacknowledged_alarm_is_restored_after_a_restart`, `test_int_chains.test_int04_restart_restores_the_alarm` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_init`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_power_up` |
| MRTM-SAF-007 | Buzzer self-test | C (rigour 4) | `MRTM-SUP-002` | `SP-05`, `test_diagnostics.test_power_up_tests_pass_inside_their_windows`, `test_diagnostics.test_silent_buzzer_fails_the_power_up_test` | verified | `10-src/firmware/components/diagnostics/src/diagnostics.c#diagnostics_power_up` |
| MRTM-SAF-008 | Low battery alarm | C (rigour 4) | none | `SP-04`, `test_alarm_mgr.test_battery_low_or_fail_safe_forces_the_buzzer`, `test_power_mon.test_battery_below_3400_mv_twice_sounds_the_buzzer` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step`, `10-src/firmware/components/power_mon/src/power_mon.c#power_mon_step` |
| MRTM-SAF-009 | Backup alarm on firmware silence | C (rigour 4) | none | `SP-03`, `test_int_chains.test_int02_watchdog_chain` | verified | `10-src/firmware/components/wdt_kicker/src/wdt_kicker.c#wdt_kicker_step` |
| MRTM-SAF-010 | Watchdog tied to the alarm service | C (rigour 4) | `MRTM-SUP-004` | `SP-03`, `test_alarm_mgr.test_heartbeat_moves_on_every_step`, `test_int_chains.test_int02_watchdog_chain`, `test_wdt_kicker.test_pulses_stop_within_2_s_of_a_missed_alarm_cycle`, `test_wdt_kicker.test_pulses_while_the_heartbeat_moves` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_heartbeat`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step`, `10-src/firmware/components/wdt_kicker/src/wdt_kicker.c#wdt_kicker_step` |
| MRTM-SAF-011 | Fault tone differs from excursion tone | C (rigour 4) | none | `SP-02`, `test_alarm_mgr.test_probe_fault_sounds_1_s_on_1_s_off` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SAF-012 | Probe calibration due | C (rigour 4) | none | `SP-09`, `test_display_mgr.test_calibration_due_and_log_capacity_messages` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step` |
| MRTM-SAF-013 | Alarm on total power loss | C (rigour 4) | none | `SP-03` | verified | — |
| MRTM-SAF-014 | Buzzer open-circuit detection | C (rigour 4) | none | `SP-06`, `test_alarm_mgr.test_no_buzzer_current_for_5_steps_declares_buzzer_fault_red_4_hz` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SAF-015 | Diverse signal for buzzer fault | C (rigour 4) | none | `SP-06`, `test_alarm_mgr.test_no_buzzer_current_for_5_steps_declares_buzzer_fault_red_4_hz` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SAF-016 | Show the band at power-up | C (rigour 4) | none | `SP-05`, `test_display_mgr.test_band_and_version_shown_in_the_first_3_s` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#display_mgr_init`, `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/display_mgr/src/display_mgr.cpp#renderFrame`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_power_up` |
| MRTM-SAF-017 | Band integrity check | C (rigour 4) | `MRTM-SUP-003` | `SP-05`, `test_alarm_mgr.test_battery_low_or_fail_safe_forces_the_buzzer`, `test_config_mgr.test_bad_crc_is_refused_with_err_crc`, `test_config_mgr.test_missing_record_is_err_nvs`, `test_config_mgr.test_store_writes_a_fresh_crc_and_logs_config_changed`, `test_int_chains.test_int03_corrupt_config_fail_safe` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step`, `10-src/firmware/components/config_mgr/src/config_mgr.c#config_mgr_load`, `10-src/firmware/components/config_mgr/src/config_mgr.c#config_mgr_store`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_power_up`, `10-src/firmware/components/mrtm_common/src/mrtm_crc.c#mrtm_crc32` |
| MRTM-SAF-018 | Two copies of every record | C (rigour 4) | none | `SP-07`, `test_event_log.test_error_code_full_after_32`, `test_event_log.test_flash_failure_does_not_loop`, `test_event_log.test_step_numbers_checksums_and_stores_every_queued_record`, `test_history_ring.test_append_writes_copy_a_and_copy_b`, `test_history_ring.test_corrupt_copy_a_is_read_from_copy_b`, `test_history_ring.test_error_codes_flash_arg` | verified | `10-src/firmware/components/event_log/src/event_log.c#event_log_step`, `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_append` |
| MRTM-SAF-019 | Stuck acknowledge button | C (rigour 4) | none | `SP-01`, `test_alarm_mgr.test_button_held_60_s_is_a_button_fault_and_ignored` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_button_debounced`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SAF-020 | Probe placement in the instructions | C (rigour 4) | none | `SP-14` | verified | — |
| MRTM-SAF-021 | I2C bus recovery | C (rigour 4) | none | `SP-09`, `test_display_mgr.test_i2c_timeout_resets_the_bus_within_1_s` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#recoverBus` |
| MRTM-SAF-022 | Clock stop detection | C (rigour 4) | none | `SP-05`, `test_rtc_clock.test_error_codes_bus_and_arg`, `test_rtc_clock.test_oscillator_stop_at_power_up_logs_clock_fault` | verified | `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_power_up`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_init` |
| MRTM-SAF-023 | Backup alarm power-up test | C (rigour 4) | `MRTM-SUP-002` | `SP-05`, `test_diagnostics.test_backup_alarm_not_heard_fails_and_pulses_resume`, `test_diagnostics.test_power_up_tests_pass_inside_their_windows`, `test_wdt_kicker.test_hold_stops_pulses_and_release_resumes` | verified | `10-src/firmware/components/diagnostics/src/diagnostics.c#diagnostics_power_up` |

#### Supervision requirement → Safety Requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SUP-001 | Supervision restart | C (rigour 4) | `MRTM-SAF-004`, `MRTM-SAF-006` | `SP-03` | verified | — |
| MRTM-SUP-002 | Supervision power-up tests | C (rigour 4) | `MRTM-SAF-007`, `MRTM-SAF-023` | `SP-05` | verified | — |
| MRTM-SUP-003 | Supervision band check | C (rigour 4) | `MRTM-SAF-017` | `test_int_chains.test_int03_corrupt_config_fail_safe` | verified | — |
| MRTM-SUP-004 | Supervision pulse stop | C (rigour 4) | `MRTM-SAF-010` | `test_int_chains.test_int02_watchdog_chain` | verified | — |

### System Requirement ⇄ Supervision requirement

#### System Requirement → Supervision requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SYS-001 | Sampling period | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_sensor_sampler.test_good_scratchpad_gives_a_valid_sample` | verified | `10-src/config/mrtm_config.h#off`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_read` |
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
| MRTM-SYS-016 | Battery operation | C (rigour 4) | none | `SP-04` | verified | — |
| MRTM-SYS-017 | Allowed band | C (rigour 4) | `MRTM-SUP-003` | `SP-13`, `test_config_mgr.test_band_outside_2_to_8_is_refused`, `test_config_mgr.test_valid_record_loads_the_2_to_8_degree_band`, `test_limit_evaluator.test_band_edges_two_and_eight_degrees_are_inside` | verified | `10-src/firmware/components/config_mgr/src/config_mgr.c#config_mgr_load`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_init`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step` |
| MRTM-SYS-018 | Excursion end confirmation | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_end_returns_to_quiet_from_sounding_and_silenced`, `test_limit_evaluator.test_hysteresis_knob_is_zero`, `test_limit_evaluator.test_nth_consecutive_in_sample_ends_excursion`, `test_limit_evaluator.test_out_sample_restarts_the_in_run` | verified | `10-src/config/mrtm_config.h#off`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step` |
| MRTM-SYS-019 | Alarm comes back after silence | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_re_sounds_15_minutes_after_the_ack` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SYS-020 | Clock drift | C (rigour 4) | none | `SP-12`, `test_rtc_clock.test_now_is_the_rtc_copy_refreshed_each_second` | verified | `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_tick` |
| MRTM-SYS-021 | Event log integrity | C (rigour 4) | none | `SP-07`, `test_history_ring.test_both_copies_corrupt_reports_err_crc_and_logs_it`, `test_history_ring.test_corrupt_copy_a_is_read_from_copy_b`, `test_mrtm_common.test_crc_check_values`, `test_usb_export.test_unreadable_record_is_a_corrupt_line` | verified | `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_read`, `10-src/firmware/components/mrtm_common/src/mrtm_crc.c#mrtm_crc32` |
| MRTM-SYS-022 | Log capacity warning | C (rigour 4) | none | `SP-07`, `test_display_mgr.test_calibration_due_and_log_capacity_messages`, `test_history_ring.test_capacity_warning_once_at_9000` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_append`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step` |
| MRTM-SYS-023 | Power restore event | C (rigour 4) | none | `SP-04`, `test_event_log.test_time_stamp_is_the_utc_second_of_the_post`, `test_power_mon.test_mains_loss_and_restore_are_logged_from_the_edge` | verified | `10-src/firmware/components/event_log/src/event_log.c#event_log_post`, `10-src/firmware/components/power_mon/src/power_mon.c#power_mon_isr`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now` |
| MRTM-SYS-024 | Early excursion alarm | C (rigour 4) | none | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_early_alarm_clears_back_to_quiet`, `test_alarm_mgr.test_early_alarm_is_red_1_hz_without_buzzer_then_escalates`, `test_limit_evaluator.test_back_in_band_clears_the_early_alarm`, `test_limit_evaluator.test_early_alarm_budget_fits_5_s`, `test_limit_evaluator.test_first_out_sample_raises_the_early_alarm` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step` |

#### Supervision requirement → System Requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SUP-001 | Supervision restart | C (rigour 4) | none | `SP-03` | verified | — |
| MRTM-SUP-002 | Supervision power-up tests | C (rigour 4) | none | `SP-05` | verified | — |
| MRTM-SUP-003 | Supervision band check | C (rigour 4) | `MRTM-SYS-017` | `test_int_chains.test_int03_corrupt_config_fail_safe` | verified | — |
| MRTM-SUP-004 | Supervision pulse stop | C (rigour 4) | none | `test_int_chains.test_int02_watchdog_chain` | verified | — |

### Sensing requirement ⇄ Probe requirement

#### Sensing requirement → Probe requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SEN-001 | Sensing sample period | C (rigour 4) | none | `SP-01` | verified | — |
| MRTM-SEN-002 | Sensing sample latency | C (rigour 4) | `MRTM-PRB-001` | `test_limit_evaluator.test_early_alarm_budget_fits_5_s` | verified | — |
| MRTM-SEN-003 | Sensing accuracy | C (rigour 4) | `MRTM-PRB-002` | `SP-10` | verified | — |
| MRTM-SEN-004 | Sensing invalid sample | C (rigour 4) | `MRTM-PRB-003` | `SP-02` | verified | — |

#### Probe requirement → Sensing requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-PRB-001 | Probe conversion time | C (rigour 4) | `MRTM-SEN-002` | `SP-10` | verified | — |
| MRTM-PRB-002 | Probe accuracy | C (rigour 4) | `MRTM-SEN-003` | `SP-10` | verified | — |
| MRTM-PRB-003 | Probe scratchpad check | C (rigour 4) | `MRTM-SEN-004` | `SP-10` | verified | — |

### Sensing requirement ⇄ Sensor item requirement

#### Sensing requirement → Sensor item requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SEN-001 | Sensing sample period | C (rigour 4) | `MRTM-SNI-001` | `SP-01` | verified | — |
| MRTM-SEN-002 | Sensing sample latency | C (rigour 4) | `MRTM-SNI-001` | `test_limit_evaluator.test_early_alarm_budget_fits_5_s` | verified | — |
| MRTM-SEN-003 | Sensing accuracy | C (rigour 4) | none | `SP-10` | verified | — |
| MRTM-SEN-004 | Sensing invalid sample | C (rigour 4) | `MRTM-SNI-002` | `SP-02` | verified | — |

#### Sensor item requirement → Sensing requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SNI-001 | Sensor item conversion start | C (rigour 4) | `MRTM-SEN-001`, `MRTM-SEN-002` | `test_sensor_sampler.test_good_scratchpad_gives_a_valid_sample` | verified | `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_read` |
| MRTM-SNI-002 | Sensor item invalid sample | C (rigour 4) | `MRTM-SEN-004` | `test_sensor_sampler.test_bad_crc_is_invalid_but_not_out_of_range`, `test_sensor_sampler.test_reading_outside_minus30_to_50_declares_the_fault_at_once` | verified | `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_probe_fault` |

### Alarm and indication requirement ⇄ Excursion item requirement

#### Alarm and indication requirement → Excursion item requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-ALM-001 | Alarm early signal latency | C (rigour 4) | `MRTM-EXI-001` | `test_alarm_mgr.test_early_alarm_is_red_1_hz_without_buzzer_then_escalates`, `test_limit_evaluator.test_early_alarm_budget_fits_5_s` | verified | — |
| MRTM-ALM-002 | Alarm excursion confirmation | C (rigour 4) | `MRTM-EXI-002` | `test_int_chains.test_int01_excursion_chain`, `test_limit_evaluator.test_early_alarm_budget_fits_5_s` | verified | — |
| MRTM-ALM-003 | Alarm buzzer latency | C (rigour 4) | none | `test_int_chains.test_int01_excursion_chain` | verified | — |
| MRTM-ALM-004 | Alarm acknowledge | C (rigour 4) | none | `test_alarm_mgr.test_ack_stops_the_buzzer_in_the_same_step_and_logs` | verified | — |
| MRTM-ALM-005 | Alarm backup path | C (rigour 4) | none | `SP-03`, `test_int_chains.test_int02_watchdog_chain` | verified | — |
| MRTM-ALM-006 | Alarm high-priority auditory pattern | C (rigour 4) | none | — | unverified | — |
| MRTM-ALM-007 | Alarm excursion end | C (rigour 4) | `MRTM-EXI-003` | `test_limit_evaluator.test_nth_consecutive_in_sample_ends_excursion` | verified | — |
| MRTM-ALM-008 | Alarm backup hold-up | C (rigour 4) | none | `SP-03` | verified | — |

#### Excursion item requirement → Alarm and indication requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-EXI-001 | Excursion item early report | C (rigour 4) | `MRTM-ALM-001` | `test_limit_evaluator.test_early_alarm_budget_fits_5_s`, `test_limit_evaluator.test_first_out_sample_raises_the_early_alarm` | verified | `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step` |
| MRTM-EXI-002 | Excursion item confirmation | C (rigour 4) | `MRTM-ALM-002` | `test_limit_evaluator.test_early_alarm_budget_fits_5_s`, `test_limit_evaluator.test_nth_consecutive_out_sample_confirms` | verified | `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step` |
| MRTM-EXI-003 | Excursion item end | C (rigour 4) | `MRTM-ALM-007` | `test_limit_evaluator.test_nth_consecutive_in_sample_ends_excursion` | verified | `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step` |

### Alarm and indication requirement ⇄ Alarm item requirement

#### Alarm and indication requirement → Alarm item requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-ALM-001 | Alarm early signal latency | C (rigour 4) | `MRTM-ALI-001` | `test_alarm_mgr.test_early_alarm_is_red_1_hz_without_buzzer_then_escalates`, `test_limit_evaluator.test_early_alarm_budget_fits_5_s` | verified | — |
| MRTM-ALM-002 | Alarm excursion confirmation | C (rigour 4) | none | `test_int_chains.test_int01_excursion_chain`, `test_limit_evaluator.test_early_alarm_budget_fits_5_s` | verified | — |
| MRTM-ALM-003 | Alarm buzzer latency | C (rigour 4) | `MRTM-ALI-002` | `test_int_chains.test_int01_excursion_chain` | verified | — |
| MRTM-ALM-004 | Alarm acknowledge | C (rigour 4) | `MRTM-ALI-003` | `test_alarm_mgr.test_ack_stops_the_buzzer_in_the_same_step_and_logs` | verified | — |
| MRTM-ALM-005 | Alarm backup path | C (rigour 4) | `MRTM-ALI-004` | `SP-03`, `test_int_chains.test_int02_watchdog_chain` | verified | — |
| MRTM-ALM-006 | Alarm high-priority auditory pattern | C (rigour 4) | none | — | unverified | — |
| MRTM-ALM-007 | Alarm excursion end | C (rigour 4) | none | `test_limit_evaluator.test_nth_consecutive_in_sample_ends_excursion` | verified | — |
| MRTM-ALM-008 | Alarm backup hold-up | C (rigour 4) | none | `SP-03` | verified | — |

#### Alarm item requirement → Alarm and indication requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-ALI-001 | Alarm item early light | C (rigour 4) | `MRTM-ALM-001` | `test_alarm_mgr.test_early_alarm_is_red_1_hz_without_buzzer_then_escalates` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take` |
| MRTM-ALI-002 | Alarm item buzzer on | C (rigour 4) | `MRTM-ALM-003` | `test_alarm_mgr.test_confirm_sounds_the_buzzer_and_flashes_red_at_2_hz` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-ALI-003 | Alarm item buzzer off | C (rigour 4) | `MRTM-ALM-004` | `test_alarm_mgr.test_ack_stops_the_buzzer_in_the_same_step_and_logs`, `test_alarm_mgr.test_button_debounce_50_ms` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_button_debounced` |
| MRTM-ALI-004 | Alarm item heartbeat | C (rigour 4) | `MRTM-ALM-005` | `test_alarm_mgr.test_heartbeat_moves_on_every_step` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_heartbeat` |

### Alarm and indication requirement ⇄ Buzzer requirement

#### Alarm and indication requirement → Buzzer requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-ALM-001 | Alarm early signal latency | C (rigour 4) | none | `test_alarm_mgr.test_early_alarm_is_red_1_hz_without_buzzer_then_escalates`, `test_limit_evaluator.test_early_alarm_budget_fits_5_s` | verified | — |
| MRTM-ALM-002 | Alarm excursion confirmation | C (rigour 4) | none | `test_int_chains.test_int01_excursion_chain`, `test_limit_evaluator.test_early_alarm_budget_fits_5_s` | verified | — |
| MRTM-ALM-003 | Alarm buzzer latency | C (rigour 4) | `MRTM-BZR-001` | `test_int_chains.test_int01_excursion_chain` | verified | — |
| MRTM-ALM-004 | Alarm acknowledge | C (rigour 4) | none | `test_alarm_mgr.test_ack_stops_the_buzzer_in_the_same_step_and_logs` | verified | — |
| MRTM-ALM-005 | Alarm backup path | C (rigour 4) | `MRTM-BZR-001` | `SP-03`, `test_int_chains.test_int02_watchdog_chain` | verified | — |
| MRTM-ALM-006 | Alarm high-priority auditory pattern | C (rigour 4) | none | — | unverified | — |
| MRTM-ALM-007 | Alarm excursion end | C (rigour 4) | none | `test_limit_evaluator.test_nth_consecutive_in_sample_ends_excursion` | verified | — |
| MRTM-ALM-008 | Alarm backup hold-up | C (rigour 4) | none | `SP-03` | verified | — |

#### Buzzer requirement → Alarm and indication requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-BZR-001 | Buzzer loudness | C (rigour 4) | `MRTM-ALM-003`, `MRTM-ALM-005` | `SP-06` | verified | — |

### Alarm and indication requirement ⇄ Indicators requirement

#### Alarm and indication requirement → Indicators requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-ALM-001 | Alarm early signal latency | C (rigour 4) | `MRTM-IND-001` | `test_alarm_mgr.test_early_alarm_is_red_1_hz_without_buzzer_then_escalates`, `test_limit_evaluator.test_early_alarm_budget_fits_5_s` | verified | — |
| MRTM-ALM-002 | Alarm excursion confirmation | C (rigour 4) | none | `test_int_chains.test_int01_excursion_chain`, `test_limit_evaluator.test_early_alarm_budget_fits_5_s` | verified | — |
| MRTM-ALM-003 | Alarm buzzer latency | C (rigour 4) | none | `test_int_chains.test_int01_excursion_chain` | verified | — |
| MRTM-ALM-004 | Alarm acknowledge | C (rigour 4) | `MRTM-IND-002` | `test_alarm_mgr.test_ack_stops_the_buzzer_in_the_same_step_and_logs` | verified | — |
| MRTM-ALM-005 | Alarm backup path | C (rigour 4) | none | `SP-03`, `test_int_chains.test_int02_watchdog_chain` | verified | — |
| MRTM-ALM-006 | Alarm high-priority auditory pattern | C (rigour 4) | none | — | unverified | — |
| MRTM-ALM-007 | Alarm excursion end | C (rigour 4) | none | `test_limit_evaluator.test_nth_consecutive_in_sample_ends_excursion` | verified | — |
| MRTM-ALM-008 | Alarm backup hold-up | C (rigour 4) | none | `SP-03` | verified | — |

#### Indicators requirement → Alarm and indication requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-IND-001 | Red indicator response | C (rigour 4) | `MRTM-ALM-001` | `SP-01` | verified | — |
| MRTM-IND-002 | Acknowledge button contact | C (rigour 4) | `MRTM-ALM-004` | `SP-01` | verified | — |

### Alarm and indication requirement ⇄ Backup alarm requirement

#### Alarm and indication requirement → Backup alarm requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-ALM-001 | Alarm early signal latency | C (rigour 4) | none | `test_alarm_mgr.test_early_alarm_is_red_1_hz_without_buzzer_then_escalates`, `test_limit_evaluator.test_early_alarm_budget_fits_5_s` | verified | — |
| MRTM-ALM-002 | Alarm excursion confirmation | C (rigour 4) | none | `test_int_chains.test_int01_excursion_chain`, `test_limit_evaluator.test_early_alarm_budget_fits_5_s` | verified | — |
| MRTM-ALM-003 | Alarm buzzer latency | C (rigour 4) | none | `test_int_chains.test_int01_excursion_chain` | verified | — |
| MRTM-ALM-004 | Alarm acknowledge | C (rigour 4) | none | `test_alarm_mgr.test_ack_stops_the_buzzer_in_the_same_step_and_logs` | verified | — |
| MRTM-ALM-005 | Alarm backup path | C (rigour 4) | `MRTM-BKA-001` | `SP-03`, `test_int_chains.test_int02_watchdog_chain` | verified | — |
| MRTM-ALM-006 | Alarm high-priority auditory pattern | C (rigour 4) | none | — | unverified | — |
| MRTM-ALM-007 | Alarm excursion end | C (rigour 4) | none | `test_limit_evaluator.test_nth_consecutive_in_sample_ends_excursion` | verified | — |
| MRTM-ALM-008 | Alarm backup hold-up | C (rigour 4) | `MRTM-BKA-002` | `SP-03` | verified | — |

#### Backup alarm requirement → Alarm and indication requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-BKA-001 | Backup alarm timeout | C (rigour 4) | `MRTM-ALM-005` | `SP-03` | verified | — |
| MRTM-BKA-002 | Backup alarm hold-up | C (rigour 4) | `MRTM-ALM-008` | `SP-03` | verified | — |

### Display requirement ⇄ Oled requirement

#### Display requirement → Oled requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-DSP-001 | Display excursion warning | C (rigour 4) | none | `test_int_chains.test_int01_excursion_chain` | verified | — |
| MRTM-DSP-002 | Display temperature | C (rigour 4) | `MRTM-OLD-001` | `SP-09` | verified | — |
| MRTM-DSP-003 | Display messages | C (rigour 4) | none | `SP-05`, `SP-09` | verified | — |

#### Oled requirement → Display requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-OLD-001 | Panel digit height | C (rigour 4) | `MRTM-DSP-002` | `SP-09` | verified | — |

### Display requirement ⇄ Display item requirement

#### Display requirement → Display item requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-DSP-001 | Display excursion warning | C (rigour 4) | `MRTM-DSI-001` | `test_int_chains.test_int01_excursion_chain` | verified | — |
| MRTM-DSP-002 | Display temperature | C (rigour 4) | `MRTM-DSI-002` | `SP-09` | verified | — |
| MRTM-DSP-003 | Display messages | C (rigour 4) | `MRTM-DSI-001` | `SP-05`, `SP-09` | verified | — |

#### Display item requirement → Display requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-DSI-001 | Display item redraw | C (rigour 4) | `MRTM-DSP-001`, `MRTM-DSP-003` | `test_display_mgr.test_calibration_due_and_log_capacity_messages`, `test_display_mgr.test_excursion_warning_for_the_whole_excursion`, `test_display_mgr.test_probe_fault_message` | verified | `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_display_step` |
| MRTM-DSI-002 | Display item number rate | C (rigour 4) | `MRTM-DSP-002` | `test_display_mgr.test_temperature_refreshes_every_10_s_in_tenths` | verified | `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step` |

### Logging and history requirement ⇄ Rtc requirement

#### Logging and history requirement → Rtc requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-LOG-001 | Logging record write | C (rigour 4) | none | `SP-07` | verified | — |
| MRTM-LOG-002 | Logging retention | C (rigour 4) | none | `SP-07` | verified | — |
| MRTM-LOG-003 | Logging read-only export | C (rigour 4) | none | `SP-08` | verified | — |
| MRTM-LOG-004 | Logging time stamp | C (rigour 4) | `MRTM-RTC-001` | `SP-12` | verified | — |

#### Rtc requirement → Logging and history requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-RTC-001 | Clock drift | C (rigour 4) | `MRTM-LOG-004` | `SP-12` | verified | — |

### Logging and history requirement ⇄ Log item requirement

#### Logging and history requirement → Log item requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-LOG-001 | Logging record write | C (rigour 4) | `MRTM-LGI-001` | `SP-07` | verified | — |
| MRTM-LOG-002 | Logging retention | C (rigour 4) | `MRTM-LGI-002` | `SP-07` | verified | — |
| MRTM-LOG-003 | Logging read-only export | C (rigour 4) | none | `SP-08` | verified | — |
| MRTM-LOG-004 | Logging time stamp | C (rigour 4) | none | `SP-12` | verified | — |

#### Log item requirement → Logging and history requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-LGI-001 | Log item two copies | C (rigour 4) | `MRTM-LOG-001` | `test_history_ring.test_append_writes_copy_a_and_copy_b` | verified | `10-src/firmware/components/event_log/src/event_log.c#event_log_step` |
| MRTM-LGI-002 | Log item ring | C (rigour 4) | `MRTM-LOG-002` | `test_history_ring.test_retains_10000_records_after_wrapping` | verified | `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_init` |

### Logging and history requirement ⇄ Usb item requirement

#### Logging and history requirement → Usb item requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-LOG-001 | Logging record write | C (rigour 4) | none | `SP-07` | verified | — |
| MRTM-LOG-002 | Logging retention | C (rigour 4) | none | `SP-07` | verified | — |
| MRTM-LOG-003 | Logging read-only export | C (rigour 4) | `MRTM-USI-001`, `MRTM-USI-002` | `SP-08` | verified | — |
| MRTM-LOG-004 | Logging time stamp | C (rigour 4) | none | `SP-12` | verified | — |

#### Usb item requirement → Logging and history requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-USI-001 | USB item volume | B (rigour 2) | `MRTM-LOG-003` | `test_usb_export.test_history_csv_is_marked_read_only` | verified | `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_init` |
| MRTM-USI-002 | USB item read-only access | B (rigour 2) | `MRTM-LOG-003` | `test_usb_export.test_every_write_is_refused` | verified | `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_write10` |

### Power requirement ⇄ Battery requirement

#### Power requirement → Battery requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-PWR-001 | Power switch-over | C (rigour 4) | none | `SP-04` | verified | — |
| MRTM-PWR-002 | Power battery time | C (rigour 4) | `MRTM-BAT-001` | `SP-04` | verified | — |
| MRTM-PWR-003 | Power events | C (rigour 4) | none | `test_int_chains.test_int05_power_loss_logged_within_1_s` | verified | — |

#### Battery requirement → Power requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-BAT-001 | Battery capacity | C (rigour 4) | `MRTM-PWR-002` | `SP-04` | verified | — |

### Power requirement ⇄ Power path requirement

#### Power requirement → Power path requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-PWR-001 | Power switch-over | C (rigour 4) | `MRTM-PPT-001` | `SP-04` | verified | — |
| MRTM-PWR-002 | Power battery time | C (rigour 4) | none | `SP-04` | verified | — |
| MRTM-PWR-003 | Power events | C (rigour 4) | none | `test_int_chains.test_int05_power_loss_logged_within_1_s` | verified | — |

#### Power path requirement → Power requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-PPT-001 | Power path switch | C (rigour 4) | `MRTM-PWR-001` | `SP-04` | verified | — |

### Power requirement ⇄ Power item requirement

#### Power requirement → Power item requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-PWR-001 | Power switch-over | C (rigour 4) | none | `SP-04` | verified | — |
| MRTM-PWR-002 | Power battery time | C (rigour 4) | none | `SP-04` | verified | — |
| MRTM-PWR-003 | Power events | C (rigour 4) | `MRTM-PWI-001`, `MRTM-PWI-002` | `test_int_chains.test_int05_power_loss_logged_within_1_s` | verified | — |

#### Power item requirement → Power requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-PWI-001 | Power item mains events | C (rigour 4) | `MRTM-PWR-003` | `test_power_mon.test_mains_loss_and_restore_are_logged_from_the_edge` | verified | `10-src/firmware/components/power_mon/src/power_mon.c#power_mon_isr` |
| MRTM-PWI-002 | Power item battery low | C (rigour 4) | `MRTM-PWR-003` | `test_power_mon.test_battery_below_3400_mv_twice_sounds_the_buzzer` | verified | `10-src/firmware/components/power_mon/src/power_mon.c#power_mon_step` |

### Supervision requirement ⇄ Mcu requirement

#### Supervision requirement → Mcu requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SUP-001 | Supervision restart | C (rigour 4) | `MRTM-MCU-001` | `SP-03` | verified | — |
| MRTM-SUP-002 | Supervision power-up tests | C (rigour 4) | none | `SP-05` | verified | — |
| MRTM-SUP-003 | Supervision band check | C (rigour 4) | none | `test_int_chains.test_int03_corrupt_config_fail_safe` | verified | — |
| MRTM-SUP-004 | Supervision pulse stop | C (rigour 4) | none | `test_int_chains.test_int02_watchdog_chain` | verified | — |

#### Mcu requirement → Supervision requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-MCU-001 | Processor watchdog reset | C (rigour 4) | `MRTM-SUP-001` | `SP-03` | verified | — |

### Supervision requirement ⇄ Supervisor item requirement

#### Supervision requirement → Supervisor item requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SUP-001 | Supervision restart | C (rigour 4) | `MRTM-SVI-001` | `SP-03` | verified | — |
| MRTM-SUP-002 | Supervision power-up tests | C (rigour 4) | `MRTM-SVI-002` | `SP-05` | verified | — |
| MRTM-SUP-003 | Supervision band check | C (rigour 4) | `MRTM-SVI-003` | `test_int_chains.test_int03_corrupt_config_fail_safe` | verified | — |
| MRTM-SUP-004 | Supervision pulse stop | C (rigour 4) | `MRTM-SVI-001` | `test_int_chains.test_int02_watchdog_chain` | verified | — |

#### Supervisor item requirement → Supervision requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SVI-001 | Supervisor item pulses | C (rigour 4) | `MRTM-SUP-001`, `MRTM-SUP-004` | `test_wdt_kicker.test_pulses_stop_within_2_s_of_a_missed_alarm_cycle` | verified | `10-src/firmware/components/wdt_kicker/src/wdt_kicker.c#wdt_kicker_step` |
| MRTM-SVI-002 | Supervisor item self-tests | C (rigour 4) | `MRTM-SUP-002` | `test_diagnostics.test_power_up_tests_pass_inside_their_windows` | verified | `10-src/firmware/components/diagnostics/src/diagnostics.c#diagnostics_power_up` |
| MRTM-SVI-003 | Supervisor item band load | C (rigour 4) | `MRTM-SUP-003` | `test_config_mgr.test_bad_crc_is_refused_with_err_crc` | verified | `10-src/firmware/components/config_mgr/src/config_mgr.c#config_mgr_load` |

### Backup alarm requirement ⇄ Backup timer requirement

#### Backup alarm requirement → Backup timer requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-BKA-001 | Backup alarm timeout | C (rigour 4) | `MRTM-BKT-001` | `SP-03` | verified | — |
| MRTM-BKA-002 | Backup alarm hold-up | C (rigour 4) | none | `SP-03` | verified | — |

#### Backup timer requirement → Backup alarm requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-BKT-001 | Backup timer period | C (rigour 4) | `MRTM-BKA-001` | `SP-03` | verified | — |

### Backup alarm requirement ⇄ Backup driver requirement

#### Backup alarm requirement → Backup driver requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-BKA-001 | Backup alarm timeout | C (rigour 4) | `MRTM-BKD-001` | `SP-03` | verified | — |
| MRTM-BKA-002 | Backup alarm hold-up | C (rigour 4) | none | `SP-03` | verified | — |

#### Backup driver requirement → Backup alarm requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-BKD-001 | Backup driver response | C (rigour 4) | `MRTM-BKA-001` | `SP-03` | verified | — |

### Backup alarm requirement ⇄ Hold up requirement

#### Backup alarm requirement → Hold up requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-BKA-001 | Backup alarm timeout | C (rigour 4) | none | `SP-03` | verified | — |
| MRTM-BKA-002 | Backup alarm hold-up | C (rigour 4) | `MRTM-BKH-001` | `SP-03` | verified | — |

#### Hold up requirement → Backup alarm requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-BKH-001 | Hold-up energy | C (rigour 4) | `MRTM-BKA-002` | `SP-03` | verified | — |

### Requirements ⇄ Allocated items

**Objective:** ARP4754A 5.3, *allocation of requirements to items*; and DO-178C Table A-2 objective 1, *high-level requirements are developed* — from the system requirements allocated to software.

#### Requirements → Allocated items (requirement to allocated item)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-ALI-001 | Alarm item early light | C (rigour 4) | `alarmSwItem.alarmMgr` | `test_alarm_mgr.test_early_alarm_is_red_1_hz_without_buzzer_then_escalates` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take` |
| MRTM-ALI-002 | Alarm item buzzer on | C (rigour 4) | `alarmSwItem.alarmMgr` | `test_alarm_mgr.test_confirm_sounds_the_buzzer_and_flashes_red_at_2_hz` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-ALI-003 | Alarm item buzzer off | C (rigour 4) | `alarmSwItem.alarmMgr` | `test_alarm_mgr.test_ack_stops_the_buzzer_in_the_same_step_and_logs`, `test_alarm_mgr.test_button_debounce_50_ms` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_button_debounced` |
| MRTM-ALI-004 | Alarm item heartbeat | C (rigour 4) | `alarmSwItem.alarmMgr` | `test_alarm_mgr.test_heartbeat_moves_on_every_step` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_heartbeat` |
| MRTM-ALM-001 | Alarm early signal latency | C (rigour 4) | `alarm` | `test_alarm_mgr.test_early_alarm_is_red_1_hz_without_buzzer_then_escalates`, `test_limit_evaluator.test_early_alarm_budget_fits_5_s` | verified | — |
| MRTM-ALM-002 | Alarm excursion confirmation | C (rigour 4) | `alarm` | `test_int_chains.test_int01_excursion_chain`, `test_limit_evaluator.test_early_alarm_budget_fits_5_s` | verified | — |
| MRTM-ALM-003 | Alarm buzzer latency | C (rigour 4) | `alarm` | `test_int_chains.test_int01_excursion_chain` | verified | — |
| MRTM-ALM-004 | Alarm acknowledge | C (rigour 4) | `alarm` | `test_alarm_mgr.test_ack_stops_the_buzzer_in_the_same_step_and_logs` | verified | — |
| MRTM-ALM-005 | Alarm backup path | C (rigour 4) | `alarm` | `SP-03`, `test_int_chains.test_int02_watchdog_chain` | verified | — |
| MRTM-ALM-006 | Alarm high-priority auditory pattern | C (rigour 4) | `alarm` | — | unverified | — |
| MRTM-ALM-007 | Alarm excursion end | C (rigour 4) | `alarm` | `test_limit_evaluator.test_nth_consecutive_in_sample_ends_excursion` | verified | — |
| MRTM-ALM-008 | Alarm backup hold-up | C (rigour 4) | `alarm` | `SP-03` | verified | — |
| MRTM-BAT-001 | Battery capacity | C (rigour 4) | `mainBattery` | `SP-04` | verified | — |
| MRTM-BKA-001 | Backup alarm timeout | C (rigour 4) | `backupAlarm` | `SP-03` | verified | — |
| MRTM-BKA-002 | Backup alarm hold-up | C (rigour 4) | `backupAlarm` | `SP-03` | verified | — |
| MRTM-BKD-001 | Backup driver response | C (rigour 4) | `backupDriver` | `SP-03` | verified | — |
| MRTM-BKH-001 | Hold-up energy | C (rigour 4) | `holdUp` | `SP-03` | verified | — |
| MRTM-BKT-001 | Backup timer period | C (rigour 4) | `backupTimer` | `SP-03` | verified | — |
| MRTM-BZR-001 | Buzzer loudness | C (rigour 4) | `alarmBuzzer` | `SP-06` | verified | — |
| MRTM-DSI-001 | Display item redraw | C (rigour 4) | `displaySwItem.displayMgr` | `test_display_mgr.test_calibration_due_and_log_capacity_messages`, `test_display_mgr.test_excursion_warning_for_the_whole_excursion`, `test_display_mgr.test_probe_fault_message` | verified | `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_display_step` |
| MRTM-DSI-002 | Display item number rate | C (rigour 4) | `displaySwItem.displayMgr` | `test_display_mgr.test_temperature_refreshes_every_10_s_in_tenths` | verified | `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step` |
| MRTM-DSP-001 | Display excursion warning | C (rigour 4) | `display` | `test_int_chains.test_int01_excursion_chain` | verified | — |
| MRTM-DSP-002 | Display temperature | C (rigour 4) | `display` | `SP-09` | verified | — |
| MRTM-DSP-003 | Display messages | C (rigour 4) | `display` | `SP-05`, `SP-09` | verified | — |
| MRTM-ENV-001 | Battery endurance | C (rigour 4) | `monitor` | `SP-04` | verified | — |
| MRTM-ENV-002 | Ambient temperature | C (rigour 4) | `monitor` | `SP-11` | verified | — |
| MRTM-ENV-003 | Humidity | C (rigour 4) | `monitor` | `SP-11` | verified | — |
| MRTM-ENV-004 | Probe environment | C (rigour 4) | `monitor` | `SP-10` | verified | — |
| MRTM-EXI-001 | Excursion item early report | C (rigour 4) | `excursionSwItem.limitEvaluator` | `test_limit_evaluator.test_early_alarm_budget_fits_5_s`, `test_limit_evaluator.test_first_out_sample_raises_the_early_alarm` | verified | `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step` |
| MRTM-EXI-002 | Excursion item confirmation | C (rigour 4) | `excursionSwItem.limitEvaluator` | `test_limit_evaluator.test_early_alarm_budget_fits_5_s`, `test_limit_evaluator.test_nth_consecutive_out_sample_confirms` | verified | `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step` |
| MRTM-EXI-003 | Excursion item end | C (rigour 4) | `excursionSwItem.limitEvaluator` | `test_limit_evaluator.test_nth_consecutive_in_sample_ends_excursion` | verified | `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step` |
| MRTM-IFC-001 | Probe bus | C (rigour 4) | `monitor` | `SP-10`, `test_sensor_sampler.test_error_codes_arg_and_bus`, `test_sensor_sampler.test_good_scratchpad_gives_a_valid_sample` | verified | `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_init`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_read` |
| MRTM-IFC-002 | Acknowledge input | C (rigour 4) | `monitor` | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_button_debounce_50_ms` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_button_debounced`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_button_isr` |
| MRTM-IFC-003 | USB readout | C (rigour 4) | `monitor` | `SP-08`, `test_usb_export.test_boot_sector_is_a_fat12_volume`, `test_usb_export.test_csv_lines_oldest_first_newest_last`, `test_usb_export.test_every_write_is_refused`, `test_usb_export.test_history_csv_is_marked_read_only` | verified | `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_init`, `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_read10`, `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_write10` |
| MRTM-IFC-004 | Display character height | C (rigour 4) | `monitor` | `SP-09` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw` |
| MRTM-IND-001 | Red indicator response | C (rigour 4) | `indicators` | `SP-01` | verified | — |
| MRTM-IND-002 | Acknowledge button contact | C (rigour 4) | `indicators` | `SP-01` | verified | — |
| MRTM-LGI-001 | Log item two copies | C (rigour 4) | `logSwItem.eventLog` | `test_history_ring.test_append_writes_copy_a_and_copy_b` | verified | `10-src/firmware/components/event_log/src/event_log.c#event_log_step` |
| MRTM-LGI-002 | Log item ring | C (rigour 4) | `logSwItem.eventLog` | `test_history_ring.test_retains_10000_records_after_wrapping` | verified | `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_init` |
| MRTM-LOG-001 | Logging record write | C (rigour 4) | `logging` | `SP-07` | verified | — |
| MRTM-LOG-002 | Logging retention | C (rigour 4) | `logging` | `SP-07` | verified | — |
| MRTM-LOG-003 | Logging read-only export | C (rigour 4) | `logging` | `SP-08` | verified | — |
| MRTM-LOG-004 | Logging time stamp | C (rigour 4) | `logging` | `SP-12` | verified | — |
| MRTM-MCU-001 | Processor watchdog reset | C (rigour 4) | `mcu` | `SP-03` | verified | — |
| MRTM-MNT-001 | Probe replacement | C (rigour 4) | `monitor` | `SP-10` | verified | — |
| MRTM-MNT-002 | Battery level | C (rigour 4) | `monitor` | `SP-09`, `test_display_mgr.test_battery_shown_in_steps_of_10_percent` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step` |
| MRTM-MNT-003 | Firmware version | C (rigour 4) | `monitor` | `SP-05`, `test_display_mgr.test_band_and_version_shown_in_the_first_3_s` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/display_mgr/src/display_mgr.cpp#renderFrame`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_power_up` |
| MRTM-OLD-001 | Panel digit height | C (rigour 4) | `oled` | `SP-09` | verified | — |
| MRTM-PPT-001 | Power path switch | C (rigour 4) | `supplyPath` | `SP-04` | verified | — |
| MRTM-PRB-001 | Probe conversion time | C (rigour 4) | `probe` | `SP-10` | verified | — |
| MRTM-PRB-002 | Probe accuracy | C (rigour 4) | `probe` | `SP-10` | verified | — |
| MRTM-PRB-003 | Probe scratchpad check | C (rigour 4) | `probe` | `SP-10` | verified | — |
| MRTM-PRF-001 | Measurement accuracy | C (rigour 4) | `monitor` | `SP-10`, `test_sensor_sampler.test_conversion_rounds_to_a_tenth_and_adds_the_offset` | verified | `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_to_tenths` |
| MRTM-PRF-002 | End-to-end alert time | C (rigour 4) | `monitor` | `SP-01`, `SP-01-H`, `test_int_chains.test_int01_excursion_chain` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-PRF-003 | Log readout time | C (rigour 4) | `monitor` | `SP-08`, `test_usb_export.test_full_history_fits_and_fat_chain_ends` | verified | `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_read10` |
| MRTM-PRF-004 | Display refresh | C (rigour 4) | `monitor` | `SP-09`, `test_display_mgr.test_temperature_refreshes_every_10_s_in_tenths` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#display_mgr_tick`, `10-src/firmware/components/display_mgr/src/display_mgr.cpp#renderFrame` |
| MRTM-PWI-001 | Power item mains events | C (rigour 4) | `powerSwItem.powerMon` | `test_power_mon.test_mains_loss_and_restore_are_logged_from_the_edge` | verified | `10-src/firmware/components/power_mon/src/power_mon.c#power_mon_isr` |
| MRTM-PWI-002 | Power item battery low | C (rigour 4) | `powerSwItem.powerMon` | `test_power_mon.test_battery_below_3400_mv_twice_sounds_the_buzzer` | verified | `10-src/firmware/components/power_mon/src/power_mon.c#power_mon_step` |
| MRTM-PWR-001 | Power switch-over | C (rigour 4) | `power` | `SP-04` | verified | — |
| MRTM-PWR-002 | Power battery time | C (rigour 4) | `power` | `SP-04` | verified | — |
| MRTM-PWR-003 | Power events | C (rigour 4) | `power` | `test_int_chains.test_int05_power_loss_logged_within_1_s` | verified | — |
| MRTM-RTC-001 | Clock drift | C (rigour 4) | `rtc` | `SP-12` | verified | — |
| MRTM-SAF-001 | Buzzer loudness | C (rigour 4) | `monitor` | `SP-06` | verified | — |
| MRTM-SAF-002 | Probe fault raises alert | C (rigour 4) | `monitor` | `SP-02`, `test_alarm_mgr.test_probe_fault_sounds_1_s_on_1_s_off` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step` |
| MRTM-SAF-003 | Implausible sample | C (rigour 4) | `monitor` | `SP-02`, `test_sensor_sampler.test_reading_outside_minus30_to_50_declares_the_fault_at_once` | verified | `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_probe_fault`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_read` |
| MRTM-SAF-004 | Watchdog restart | C (rigour 4) | `monitor` | `SP-03`, `test_wdt_kicker.test_task_watchdog_armed_at_5_s` | verified | `10-src/firmware/components/wdt_kicker/src/wdt_kicker.c#wdt_kicker_init` |
| MRTM-SAF-005 | Log power loss | C (rigour 4) | `monitor` | `SP-04`, `test_int_chains.test_int05_power_loss_logged_within_1_s`, `test_power_mon.test_mains_loss_and_restore_are_logged_from_the_edge` | verified | `10-src/firmware/components/power_mon/src/power_mon.c#power_mon_isr` |
| MRTM-SAF-006 | Alert survives restart | C (rigour 4) | `monitor` | `SP-05`, `test_alarm_mgr.test_acknowledged_alarm_is_not_restored_as_sounding`, `test_alarm_mgr.test_error_codes_full_and_nvs`, `test_alarm_mgr.test_unacknowledged_alarm_is_restored_after_a_restart`, `test_int_chains.test_int04_restart_restores_the_alarm` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_init`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_power_up` |
| MRTM-SAF-007 | Buzzer self-test | C (rigour 4) | `monitor` | `SP-05`, `test_diagnostics.test_power_up_tests_pass_inside_their_windows`, `test_diagnostics.test_silent_buzzer_fails_the_power_up_test` | verified | `10-src/firmware/components/diagnostics/src/diagnostics.c#diagnostics_power_up` |
| MRTM-SAF-008 | Low battery alarm | C (rigour 4) | `monitor` | `SP-04`, `test_alarm_mgr.test_battery_low_or_fail_safe_forces_the_buzzer`, `test_power_mon.test_battery_below_3400_mv_twice_sounds_the_buzzer` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step`, `10-src/firmware/components/power_mon/src/power_mon.c#power_mon_step` |
| MRTM-SAF-009 | Backup alarm on firmware silence | C (rigour 4) | `monitor` | `SP-03`, `test_int_chains.test_int02_watchdog_chain` | verified | `10-src/firmware/components/wdt_kicker/src/wdt_kicker.c#wdt_kicker_step` |
| MRTM-SAF-010 | Watchdog tied to the alarm service | C (rigour 4) | `monitor` | `SP-03`, `test_alarm_mgr.test_heartbeat_moves_on_every_step`, `test_int_chains.test_int02_watchdog_chain`, `test_wdt_kicker.test_pulses_stop_within_2_s_of_a_missed_alarm_cycle`, `test_wdt_kicker.test_pulses_while_the_heartbeat_moves` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_heartbeat`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step`, `10-src/firmware/components/wdt_kicker/src/wdt_kicker.c#wdt_kicker_step` |
| MRTM-SAF-011 | Fault tone differs from excursion tone | C (rigour 4) | `monitor` | `SP-02`, `test_alarm_mgr.test_probe_fault_sounds_1_s_on_1_s_off` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SAF-012 | Probe calibration due | C (rigour 4) | `monitor` | `SP-09`, `test_display_mgr.test_calibration_due_and_log_capacity_messages` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step` |
| MRTM-SAF-013 | Alarm on total power loss | C (rigour 4) | `monitor` | `SP-03` | verified | — |
| MRTM-SAF-014 | Buzzer open-circuit detection | C (rigour 4) | `monitor` | `SP-06`, `test_alarm_mgr.test_no_buzzer_current_for_5_steps_declares_buzzer_fault_red_4_hz` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SAF-015 | Diverse signal for buzzer fault | C (rigour 4) | `monitor` | `SP-06`, `test_alarm_mgr.test_no_buzzer_current_for_5_steps_declares_buzzer_fault_red_4_hz` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SAF-016 | Show the band at power-up | C (rigour 4) | `monitor` | `SP-05`, `test_display_mgr.test_band_and_version_shown_in_the_first_3_s` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#display_mgr_init`, `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/display_mgr/src/display_mgr.cpp#renderFrame`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_power_up` |
| MRTM-SAF-017 | Band integrity check | C (rigour 4) | `monitor` | `SP-05`, `test_alarm_mgr.test_battery_low_or_fail_safe_forces_the_buzzer`, `test_config_mgr.test_bad_crc_is_refused_with_err_crc`, `test_config_mgr.test_missing_record_is_err_nvs`, `test_config_mgr.test_store_writes_a_fresh_crc_and_logs_config_changed`, `test_int_chains.test_int03_corrupt_config_fail_safe` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step`, `10-src/firmware/components/config_mgr/src/config_mgr.c#config_mgr_load`, `10-src/firmware/components/config_mgr/src/config_mgr.c#config_mgr_store`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_power_up`, `10-src/firmware/components/mrtm_common/src/mrtm_crc.c#mrtm_crc32` |
| MRTM-SAF-018 | Two copies of every record | C (rigour 4) | `monitor` | `SP-07`, `test_event_log.test_error_code_full_after_32`, `test_event_log.test_flash_failure_does_not_loop`, `test_event_log.test_step_numbers_checksums_and_stores_every_queued_record`, `test_history_ring.test_append_writes_copy_a_and_copy_b`, `test_history_ring.test_corrupt_copy_a_is_read_from_copy_b`, `test_history_ring.test_error_codes_flash_arg` | verified | `10-src/firmware/components/event_log/src/event_log.c#event_log_step`, `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_append` |
| MRTM-SAF-019 | Stuck acknowledge button | C (rigour 4) | `monitor` | `SP-01`, `test_alarm_mgr.test_button_held_60_s_is_a_button_fault_and_ignored` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_button_debounced`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SAF-020 | Probe placement in the instructions | C (rigour 4) | `monitor` | `SP-14` | verified | — |
| MRTM-SAF-021 | I2C bus recovery | C (rigour 4) | `monitor` | `SP-09`, `test_display_mgr.test_i2c_timeout_resets_the_bus_within_1_s` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#recoverBus` |
| MRTM-SAF-022 | Clock stop detection | C (rigour 4) | `monitor` | `SP-05`, `test_rtc_clock.test_error_codes_bus_and_arg`, `test_rtc_clock.test_oscillator_stop_at_power_up_logs_clock_fault` | verified | `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_power_up`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_init` |
| MRTM-SAF-023 | Backup alarm power-up test | C (rigour 4) | `monitor` | `SP-05`, `test_diagnostics.test_backup_alarm_not_heard_fails_and_pulses_resume`, `test_diagnostics.test_power_up_tests_pass_inside_their_windows`, `test_wdt_kicker.test_hold_stops_pulses_and_release_resumes` | verified | `10-src/firmware/components/diagnostics/src/diagnostics.c#diagnostics_power_up` |
| MRTM-SEN-001 | Sensing sample period | C (rigour 4) | `sensing` | `SP-01` | verified | — |
| MRTM-SEN-002 | Sensing sample latency | C (rigour 4) | `sensing` | `test_limit_evaluator.test_early_alarm_budget_fits_5_s` | verified | — |
| MRTM-SEN-003 | Sensing accuracy | C (rigour 4) | `sensing` | `SP-10` | verified | — |
| MRTM-SEN-004 | Sensing invalid sample | C (rigour 4) | `sensing` | `SP-02` | verified | — |
| MRTM-SNI-001 | Sensor item conversion start | C (rigour 4) | `sensorSwItem.sensorSampler` | `test_sensor_sampler.test_good_scratchpad_gives_a_valid_sample` | verified | `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_read` |
| MRTM-SNI-002 | Sensor item invalid sample | C (rigour 4) | `sensorSwItem.sensorSampler` | `test_sensor_sampler.test_bad_crc_is_invalid_but_not_out_of_range`, `test_sensor_sampler.test_reading_outside_minus30_to_50_declares_the_fault_at_once` | verified | `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_probe_fault` |
| MRTM-STK-001 | Alert on excursion | C (rigour 4) | `monitor` | `SP-01` | verified | — |
| MRTM-STK-002 | No alert on brief door opening | C (rigour 4) | `monitor` | `SP-01`, `test_alarm_mgr.test_early_alarm_is_red_1_hz_without_buzzer_then_escalates`, `test_limit_evaluator.test_back_in_band_clears_the_early_alarm`, `test_limit_evaluator.test_n_minus_one_out_then_one_in_does_not_confirm` | verified | — |
| MRTM-STK-003 | Silence the alert | C (rigour 4) | `monitor` | `SP-01` | verified | — |
| MRTM-STK-004 | See the temperature | C (rigour 4) | `monitor` | `SP-09` | verified | — |
| MRTM-STK-005 | Audit history | C (rigour 4) | `monitor` | `SP-08` | verified | — |
| MRTM-STK-006 | History cannot be edited | C (rigour 4) | `monitor` | `SP-08`, `test_usb_export.test_every_write_is_refused` | verified | — |
| MRTM-STK-007 | Probe failure is visible | C (rigour 4) | `monitor` | `SP-02` | verified | — |
| MRTM-STK-008 | Monitoring through a power cut | C (rigour 4) | `monitor` | `SP-04` | verified | — |
| MRTM-SUP-001 | Supervision restart | C (rigour 4) | `supervision` | `SP-03` | verified | — |
| MRTM-SUP-002 | Supervision power-up tests | C (rigour 4) | `supervision` | `SP-05` | verified | — |
| MRTM-SUP-003 | Supervision band check | C (rigour 4) | `supervision` | `test_int_chains.test_int03_corrupt_config_fail_safe` | verified | — |
| MRTM-SUP-004 | Supervision pulse stop | C (rigour 4) | `supervision` | `test_int_chains.test_int02_watchdog_chain` | verified | — |
| MRTM-SVI-001 | Supervisor item pulses | C (rigour 4) | `supervisorSwItem.wdtKicker` | `test_wdt_kicker.test_pulses_stop_within_2_s_of_a_missed_alarm_cycle` | verified | `10-src/firmware/components/wdt_kicker/src/wdt_kicker.c#wdt_kicker_step` |
| MRTM-SVI-002 | Supervisor item self-tests | C (rigour 4) | `supervisorSwItem.wdtKicker` | `test_diagnostics.test_power_up_tests_pass_inside_their_windows` | verified | `10-src/firmware/components/diagnostics/src/diagnostics.c#diagnostics_power_up` |
| MRTM-SVI-003 | Supervisor item band load | C (rigour 4) | `supervisorSwItem.wdtKicker` | `test_config_mgr.test_bad_crc_is_refused_with_err_crc` | verified | `10-src/firmware/components/config_mgr/src/config_mgr.c#config_mgr_load` |
| MRTM-SYS-001 | Sampling period | C (rigour 4) | `monitor` | `SP-01`, `SP-01-H`, `test_sensor_sampler.test_good_scratchpad_gives_a_valid_sample` | verified | `10-src/config/mrtm_config.h#off`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_read` |
| MRTM-SYS-002 | Excursion confirmation | C (rigour 4) | `monitor` | `SP-01`, `SP-01-H`, `test_int_chains.test_int01_excursion_chain`, `test_limit_evaluator.test_invalid_sample_neither_counts_nor_resets`, `test_limit_evaluator.test_n_minus_one_out_then_one_in_does_not_confirm`, `test_limit_evaluator.test_nth_consecutive_out_sample_confirms` | verified | `10-src/config/mrtm_config.h#off`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step` |
| MRTM-SYS-003 | Buzzer on excursion | C (rigour 4) | `monitor` | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_confirm_sounds_the_buzzer_and_flashes_red_at_2_hz`, `test_int_chains.test_int01_excursion_chain` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take` |
| MRTM-SYS-004 | Red indicator on excursion | C (rigour 4) | `monitor` | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_confirm_sounds_the_buzzer_and_flashes_red_at_2_hz` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SYS-005 | Warning on excursion | C (rigour 4) | `monitor` | `SP-01`, `SP-01-H`, `test_display_mgr.test_excursion_warning_for_the_whole_excursion`, `test_int_chains.test_int01_excursion_chain` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/display_mgr/src/display_mgr.cpp#renderFrame`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_display_step` |
| MRTM-SYS-006 | Acknowledge silences buzzer | C (rigour 4) | `monitor` | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_ack_stops_the_buzzer_in_the_same_step_and_logs` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_button_debounced`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_post`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take` |
| MRTM-SYS-007 | Warning stays while excursion is open | C (rigour 4) | `monitor` | `SP-01`, `test_display_mgr.test_excursion_warning_for_the_whole_excursion` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw` |
| MRTM-SYS-008 | Log excursion start | C (rigour 4) | `monitor` | `SP-01`, `SP-01-H`, `test_event_log.test_time_stamp_is_the_utc_second_of_the_post`, `test_int_chains.test_int01_excursion_chain`, `test_usb_export.test_csv_lines_oldest_first_newest_last` | verified | `10-src/firmware/components/event_log/src/event_log.c#event_log_post`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now` |
| MRTM-SYS-009 | Log excursion end | C (rigour 4) | `monitor` | `SP-01`, `SP-01-H`, `test_event_log.test_end_record_carries_the_peak_in_tenths`, `test_limit_evaluator.test_peak_below_band_counts_distance_downwards`, `test_limit_evaluator.test_peak_is_the_most_extreme_sample` | verified | `10-src/firmware/components/event_log/src/event_log.c#event_log_post`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_peak`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step` |
| MRTM-SYS-010 | Log acknowledgement | C (rigour 4) | `monitor` | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_ack_stops_the_buzzer_in_the_same_step_and_logs`, `test_event_log.test_time_stamp_is_the_utc_second_of_the_post` | verified | `10-src/firmware/components/event_log/src/event_log.c#event_log_post`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now` |
| MRTM-SYS-011 | Display resolution | C (rigour 4) | `monitor` | `SP-09`, `test_display_mgr.test_temperature_refreshes_every_10_s_in_tenths`, `test_sensor_sampler.test_conversion_rounds_to_a_tenth_and_adds_the_offset` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_to_tenths` |
| MRTM-SYS-012 | Probe fault detection | C (rigour 4) | `monitor` | `SP-02`, `test_mrtm_common.test_crc8_over_a_scratchpad`, `test_mrtm_common.test_crc_check_values`, `test_sensor_sampler.test_bad_crc_is_invalid_but_not_out_of_range`, `test_sensor_sampler.test_fault_after_30_s_without_a_correct_crc`, `test_sensor_sampler.test_fault_clears_on_the_next_valid_sample` | verified | `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step`, `10-src/firmware/components/mrtm_common/src/mrtm_crc.c#mrtm_crc8_maxim`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_probe_fault`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_read` |
| MRTM-SYS-013 | Probe fault message | C (rigour 4) | `monitor` | `SP-02`, `test_display_mgr.test_probe_fault_message` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/display_mgr/src/display_mgr.cpp#renderFrame`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_display_step` |
| MRTM-SYS-014 | Read-only event log | C (rigour 4) | `monitor` | `SP-08`, `test_usb_export.test_every_write_is_refused`, `test_usb_export.test_history_csv_is_marked_read_only` | verified | `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_init`, `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_write10` |
| MRTM-SYS-015 | Event log capacity | C (rigour 4) | `monitor` | `SP-07`, `test_history_ring.test_init_finds_the_head_again_after_a_restart`, `test_history_ring.test_retains_10000_records_after_wrapping`, `test_history_ring.test_retains_10000_straight_after_an_erase_ahead`, `test_usb_export.test_full_history_fits_and_fat_chain_ends` | verified | `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_append`, `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_init`, `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_read` |
| MRTM-SYS-016 | Battery operation | C (rigour 4) | `monitor` | `SP-04` | verified | — |
| MRTM-SYS-017 | Allowed band | C (rigour 4) | `monitor` | `SP-13`, `test_config_mgr.test_band_outside_2_to_8_is_refused`, `test_config_mgr.test_valid_record_loads_the_2_to_8_degree_band`, `test_limit_evaluator.test_band_edges_two_and_eight_degrees_are_inside` | verified | `10-src/firmware/components/config_mgr/src/config_mgr.c#config_mgr_load`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_init`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step` |
| MRTM-SYS-018 | Excursion end confirmation | C (rigour 4) | `monitor` | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_end_returns_to_quiet_from_sounding_and_silenced`, `test_limit_evaluator.test_hysteresis_knob_is_zero`, `test_limit_evaluator.test_nth_consecutive_in_sample_ends_excursion`, `test_limit_evaluator.test_out_sample_restarts_the_in_run` | verified | `10-src/config/mrtm_config.h#off`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step` |
| MRTM-SYS-019 | Alarm comes back after silence | C (rigour 4) | `monitor` | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_re_sounds_15_minutes_after_the_ack` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SYS-020 | Clock drift | C (rigour 4) | `monitor` | `SP-12`, `test_rtc_clock.test_now_is_the_rtc_copy_refreshed_each_second` | verified | `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_tick` |
| MRTM-SYS-021 | Event log integrity | C (rigour 4) | `monitor` | `SP-07`, `test_history_ring.test_both_copies_corrupt_reports_err_crc_and_logs_it`, `test_history_ring.test_corrupt_copy_a_is_read_from_copy_b`, `test_mrtm_common.test_crc_check_values`, `test_usb_export.test_unreadable_record_is_a_corrupt_line` | verified | `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_read`, `10-src/firmware/components/mrtm_common/src/mrtm_crc.c#mrtm_crc32` |
| MRTM-SYS-022 | Log capacity warning | C (rigour 4) | `monitor` | `SP-07`, `test_display_mgr.test_calibration_due_and_log_capacity_messages`, `test_history_ring.test_capacity_warning_once_at_9000` | verified | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_append`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step` |
| MRTM-SYS-023 | Power restore event | C (rigour 4) | `monitor` | `SP-04`, `test_event_log.test_time_stamp_is_the_utc_second_of_the_post`, `test_power_mon.test_mains_loss_and_restore_are_logged_from_the_edge` | verified | `10-src/firmware/components/event_log/src/event_log.c#event_log_post`, `10-src/firmware/components/power_mon/src/power_mon.c#power_mon_isr`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now` |
| MRTM-SYS-024 | Early excursion alarm | C (rigour 4) | `monitor` | `SP-01`, `SP-01-H`, `test_alarm_mgr.test_early_alarm_clears_back_to_quiet`, `test_alarm_mgr.test_early_alarm_is_red_1_hz_without_buzzer_then_escalates`, `test_limit_evaluator.test_back_in_band_clears_the_early_alarm`, `test_limit_evaluator.test_early_alarm_budget_fits_5_s`, `test_limit_evaluator.test_first_out_sample_raises_the_early_alarm` | verified | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step` |
| MRTM-USI-001 | USB item volume | B (rigour 2) | `usbSwItem.usbExport` | `test_usb_export.test_history_csv_is_marked_read_only` | verified | `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_init` |
| MRTM-USI-002 | USB item read-only access | B (rigour 2) | `usbSwItem.usbExport` | `test_usb_export.test_every_write_is_refused` | verified | `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_write10` |

#### Allocated items → Requirements (item to requirements)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| AckButton |  | not classified | none | — | n/a — allocated item | — |
| Alarm |  | not classified | none | — | n/a — allocated item | — |
| AlarmBuzzer |  | not classified | none | — | n/a — allocated item | — |
| AlarmItem |  | not classified | none | — | n/a — allocated item | — |
| AlarmMgr |  | not classified | none | — | n/a — allocated item | — |
| AlarmSwItem |  | not classified | none | — | n/a — allocated item | — |
| AlarmTask |  | not classified | none | — | n/a — allocated item | — |
| AlarmWhiteBox |  | not classified | none | — | n/a — allocated item | — |
| BackupAlarm |  | not classified | none | — | n/a — allocated item | — |
| BackupAlarmAssembly |  | not classified | none | — | n/a — allocated item | — |
| BackupAlarmWhiteBox |  | not classified | none | — | n/a — allocated item | — |
| BackupDriver |  | not classified | none | — | n/a — allocated item | — |
| BackupTimer |  | not classified | none | — | n/a — allocated item | — |
| BannerWidget |  | not classified | none | — | n/a — allocated item | — |
| Battery |  | not classified | none | — | n/a — allocated item | — |
| Buzzer |  | not classified | none | — | n/a — allocated item | — |
| ChargerPowerPath |  | not classified | none | — | n/a — allocated item | — |
| ClinicManager |  | not classified | none | — | n/a — allocated item | — |
| ClinicSetting |  | not classified | none | — | n/a — allocated item | — |
| Component |  | not classified | none | — | n/a — allocated item | — |
| ConfigMgr |  | not classified | none | — | n/a — allocated item | — |
| Diagnostics |  | not classified | none | — | n/a — allocated item | — |
| Display |  | not classified | none | — | n/a — allocated item | — |
| DisplayItem |  | not classified | none | — | n/a — allocated item | — |
| DisplayMgr |  | not classified | none | — | n/a — allocated item | — |
| DisplaySwItem |  | not classified | none | — | n/a — allocated item | — |
| DisplayTask |  | not classified | none | — | n/a — allocated item | — |
| DisplayWhiteBox |  | not classified | none | — | n/a — allocated item | — |
| Ds18b20 |  | not classified | none | — | n/a — allocated item | — |
| Ds18b20Probe |  | not classified | none | — | n/a — allocated item | — |
| Esp32Module |  | not classified | none | — | n/a — allocated item | — |
| Esp32S3Module |  | not classified | none | — | n/a — allocated item | — |
| EventLog |  | not classified | none | — | n/a — allocated item | — |
| ExcursionItem |  | not classified | none | — | n/a — allocated item | — |
| ExcursionSwItem |  | not classified | none | — | n/a — allocated item | — |
| FrameBuffer |  | not classified | none | — | n/a — allocated item | — |
| Fridge |  | not classified | none | — | n/a — allocated item | — |
| HistoryRingStore |  | not classified | none | — | n/a — allocated item | — |
| HoldUp |  | not classified | none | — | n/a — allocated item | — |
| HoldUpCapacitor |  | not classified | none | — | n/a — allocated item | — |
| IconWidget |  | not classified | none | — | n/a — allocated item | — |
| IndicatorLed |  | not classified | none | — | n/a — allocated item | — |
| Indicators |  | not classified | none | — | n/a — allocated item | — |
| Led |  | not classified | none | — | n/a — allocated item | — |
| LiIonCell |  | not classified | none | — | n/a — allocated item | — |
| LimitEvaluator |  | not classified | none | — | n/a — allocated item | — |
| LogItem |  | not classified | none | — | n/a — allocated item | — |
| LogSwItem |  | not classified | none | — | n/a — allocated item | — |
| LogTask |  | not classified | none | — | n/a — allocated item | — |
| Logging |  | not classified | none | — | n/a — allocated item | — |
| LoggingWhiteBox |  | not classified | none | — | n/a — allocated item | — |
| LogicalMonitor |  | not classified | none | — | n/a — allocated item | — |
| MainBattery |  | not classified | none | — | n/a — allocated item | — |
| MainsSupply |  | not classified | none | — | n/a — allocated item | — |
| Mcu |  | not classified | none | — | n/a — allocated item | — |
| Monitor |  | not classified | none | — | n/a — allocated item | — |
| MonitorSystem |  | not classified | none | — | n/a — allocated item | — |
| MonitorWhiteBox |  | not classified | none | — | n/a — allocated item | — |
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
| Oled |  | not classified | none | — | n/a — allocated item | — |
| Oled128x64 |  | not classified | none | — | n/a — allocated item | — |
| OledPanel |  | not classified | none | — | n/a — allocated item | — |
| PiezoBuzzerStage |  | not classified | none | — | n/a — allocated item | — |
| Power |  | not classified | none | — | n/a — allocated item | — |
| PowerItem |  | not classified | none | — | n/a — allocated item | — |
| PowerMon |  | not classified | none | — | n/a — allocated item | — |
| PowerPath |  | not classified | none | — | n/a — allocated item | — |
| PowerSwItem |  | not classified | none | — | n/a — allocated item | — |
| PowerWhiteBox |  | not classified | none | — | n/a — allocated item | — |
| Probe |  | not classified | none | — | n/a — allocated item | — |
| QualityOfficer |  | not classified | none | — | n/a — allocated item | — |
| Rtc |  | not classified | none | — | n/a — allocated item | — |
| RtcChip |  | not classified | none | — | n/a — allocated item | — |
| RtcClock |  | not classified | none | — | n/a — allocated item | — |
| RtosTask |  | not classified | none | — | n/a — allocated item | — |
| Screen |  | not classified | none | — | n/a — allocated item | — |
| Sensing |  | not classified | none | — | n/a — allocated item | — |
| SensingWhiteBox |  | not classified | none | — | n/a — allocated item | — |
| SensorItem |  | not classified | none | — | n/a — allocated item | — |
| SensorSampler |  | not classified | none | — | n/a — allocated item | — |
| SensorSwItem |  | not classified | none | — | n/a — allocated item | — |
| SensorTask |  | not classified | none | — | n/a — allocated item | — |
| Ssd1306Driver |  | not classified | none | — | n/a — allocated item | — |
| Staff |  | not classified | none | — | n/a — allocated item | — |
| Supercap |  | not classified | none | — | n/a — allocated item | — |
| Supervision |  | not classified | none | — | n/a — allocated item | — |
| SupervisionWhiteBox |  | not classified | none | — | n/a — allocated item | — |
| SupervisorItem |  | not classified | none | — | n/a — allocated item | — |
| SupervisorSwItem |  | not classified | none | — | n/a — allocated item | — |
| SupervisorTask |  | not classified | none | — | n/a — allocated item | — |
| SupplyPath |  | not classified | none | — | n/a — allocated item | — |
| TactileButton |  | not classified | none | — | n/a — allocated item | — |
| TcxoRtc |  | not classified | none | — | n/a — allocated item | — |
| Technician |  | not classified | none | — | n/a — allocated item | — |
| TextWidget |  | not classified | none | — | n/a — allocated item | — |
| UsbExport |  | not classified | none | — | n/a — allocated item | — |
| UsbHost |  | not classified | none | — | n/a — allocated item | — |
| UsbItem |  | not classified | none | — | n/a — allocated item | — |
| UsbSwItem |  | not classified | none | — | n/a — allocated item | — |
| UsbTask |  | not classified | none | — | n/a — allocated item | — |
| WatchdogAlarmTimer |  | not classified | none | — | n/a — allocated item | — |
| WdtKicker |  | not classified | none | — | n/a — allocated item | — |
| Widget |  | not classified | none | — | n/a — allocated item | — |
| ackButton |  | not classified | none | — | n/a — allocated item | — |
| alarm |  | not classified | `MRTM-ALM-001`, `MRTM-ALM-002`, `MRTM-ALM-003`, `MRTM-ALM-004`, `MRTM-ALM-005`, `MRTM-ALM-006`, `MRTM-ALM-007`, `MRTM-ALM-008` | — | n/a — allocated item | — |
| alarmBuzzer |  | not classified | `MRTM-BZR-001` | — | n/a — allocated item | — |
| alarmF |  | not classified | none | — | n/a — allocated item | — |
| alarmItem |  | not classified | none | — | n/a — allocated item | — |
| alarmManager |  | not classified | none | — | n/a — allocated item | — |
| alarmMgr |  | not classified | none | — | n/a — allocated item | — |
| alarmMgrApi |  | not classified | none | — | n/a — allocated item | — |
| alarmP |  | not classified | none | — | n/a — allocated item | — |
| alarmService |  | not classified | none | — | n/a — allocated item | — |
| alarmSwItem |  | not classified | none | — | n/a — allocated item | — |
| alarmSwItem.alarmMgr |  | not classified | `MRTM-ALI-001`, `MRTM-ALI-002`, `MRTM-ALI-003`, `MRTM-ALI-004` | — | n/a — unresolved reference | — |
| alarmTask |  | not classified | none | — | n/a — allocated item | — |
| backupAlarm |  | not classified | `MRTM-BKA-001`, `MRTM-BKA-002` | — | n/a — allocated item | — |
| backupDriver |  | not classified | `MRTM-BKD-001` | — | n/a — allocated item | — |
| backupTimer |  | not classified | `MRTM-BKT-001` | — | n/a — allocated item | — |
| banner |  | not classified | none | — | n/a — allocated item | — |
| battery |  | not classified | none | — | n/a — allocated item | — |
| board |  | not classified | none | — | n/a — allocated item | — |
| buzzer |  | not classified | none | — | n/a — allocated item | — |
| configMgr |  | not classified | none | — | n/a — allocated item | — |
| configMgrApi |  | not classified | none | — | n/a — allocated item | — |
| diagnostics |  | not classified | none | — | n/a — allocated item | — |
| diagnosticsApi |  | not classified | none | — | n/a — allocated item | — |
| display |  | not classified | `MRTM-DSP-001`, `MRTM-DSP-002`, `MRTM-DSP-003` | — | n/a — allocated item | — |
| displayF |  | not classified | none | — | n/a — allocated item | — |
| displayItem |  | not classified | none | — | n/a — allocated item | — |
| displayMgr |  | not classified | none | — | n/a — allocated item | — |
| displayMgrApi |  | not classified | none | — | n/a — allocated item | — |
| displayService |  | not classified | none | — | n/a — allocated item | — |
| displaySwItem |  | not classified | none | — | n/a — allocated item | — |
| displaySwItem.displayMgr |  | not classified | `MRTM-DSI-001`, `MRTM-DSI-002` | — | n/a — unresolved reference | — |
| displayTask |  | not classified | none | — | n/a — allocated item | — |
| driver |  | not classified | none | — | n/a — allocated item | — |
| esp32 |  | not classified | none | — | n/a — allocated item | — |
| evaluator |  | not classified | none | — | n/a — allocated item | — |
| eventLog |  | not classified | none | — | n/a — allocated item | — |
| eventLogApi |  | not classified | none | — | n/a — allocated item | — |
| eventLogger |  | not classified | none | — | n/a — allocated item | — |
| excursionDetector |  | not classified | none | — | n/a — allocated item | — |
| excursionItem |  | not classified | none | — | n/a — allocated item | — |
| excursionService |  | not classified | none | — | n/a — allocated item | — |
| excursionSwItem |  | not classified | none | — | n/a — allocated item | — |
| excursionSwItem.limitEvaluator |  | not classified | `MRTM-EXI-001`, `MRTM-EXI-002`, `MRTM-EXI-003` | — | n/a — unresolved reference | — |
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
| historyRing |  | not classified | none | — | n/a — allocated item | — |
| historyRingApi |  | not classified | none | — | n/a — allocated item | — |
| historyServer |  | not classified | none | — | n/a — allocated item | — |
| holdUp |  | not classified | `MRTM-BKH-001` | — | n/a — allocated item | — |
| holdUpCap |  | not classified | none | — | n/a — allocated item | — |
| icon |  | not classified | none | — | n/a — allocated item | — |
| indicators |  | not classified | `MRTM-IND-001`, `MRTM-IND-002` | — | n/a — allocated item | — |
| limitEvaluator |  | not classified | none | — | n/a — allocated item | — |
| limitEvaluatorApi |  | not classified | none | — | n/a — allocated item | — |
| logItem |  | not classified | none | — | n/a — allocated item | — |
| logService |  | not classified | none | — | n/a — allocated item | — |
| logSwItem |  | not classified | none | — | n/a — allocated item | — |
| logSwItem.eventLog |  | not classified | `MRTM-LGI-001`, `MRTM-LGI-002` | — | n/a — unresolved reference | — |
| logTask |  | not classified | none | — | n/a — allocated item | — |
| logger |  | not classified | none | — | n/a — allocated item | — |
| logging |  | not classified | `MRTM-LOG-001`, `MRTM-LOG-002`, `MRTM-LOG-003`, `MRTM-LOG-004` | — | n/a — allocated item | — |
| loggingF |  | not classified | none | — | n/a — allocated item | — |
| loggingP |  | not classified | none | — | n/a — allocated item | — |
| mainBattery |  | not classified | `MRTM-BAT-001` | — | n/a — allocated item | — |
| mains |  | not classified | none | — | n/a — allocated item | — |
| mainsSupply |  | not classified | none | — | n/a — allocated item | — |
| mcu |  | not classified | `MRTM-MCU-001` | — | n/a — allocated item | — |
| module |  | not classified | none | — | n/a — allocated item | — |
| monitor |  | not classified | `MRTM-ENV-001`, `MRTM-ENV-002`, `MRTM-ENV-003`, `MRTM-ENV-004`, `MRTM-IFC-001`, `MRTM-IFC-002`, `MRTM-IFC-003`, `MRTM-IFC-004`, `MRTM-MNT-001`, `MRTM-MNT-002`, `MRTM-MNT-003`, `MRTM-PRF-001`, `MRTM-PRF-002`, `MRTM-PRF-003`, `MRTM-PRF-004`, `MRTM-SAF-001`, `MRTM-SAF-002`, `MRTM-SAF-003`, `MRTM-SAF-004`, `MRTM-SAF-005`, `MRTM-SAF-006`, `MRTM-SAF-007`, `MRTM-SAF-008`, `MRTM-SAF-009`, `MRTM-SAF-010`, `MRTM-SAF-011`, `MRTM-SAF-012`, `MRTM-SAF-013`, `MRTM-SAF-014`, `MRTM-SAF-015`, `MRTM-SAF-016`, `MRTM-SAF-017`, `MRTM-SAF-018`, `MRTM-SAF-019`, `MRTM-SAF-020`, `MRTM-SAF-021`, `MRTM-SAF-022`, `MRTM-SAF-023`, `MRTM-STK-001`, `MRTM-STK-002`, `MRTM-STK-003`, `MRTM-STK-004`, `MRTM-STK-005`, `MRTM-STK-006`, `MRTM-STK-007`, `MRTM-STK-008`, `MRTM-SYS-001`, `MRTM-SYS-002`, `MRTM-SYS-003`, `MRTM-SYS-004`, `MRTM-SYS-005`, `MRTM-SYS-006`, `MRTM-SYS-007`, `MRTM-SYS-008`, `MRTM-SYS-009`, `MRTM-SYS-010`, `MRTM-SYS-011`, `MRTM-SYS-012`, `MRTM-SYS-013`, `MRTM-SYS-014`, `MRTM-SYS-015`, `MRTM-SYS-016`, `MRTM-SYS-017`, `MRTM-SYS-018`, `MRTM-SYS-019`, `MRTM-SYS-020`, `MRTM-SYS-021`, `MRTM-SYS-022`, `MRTM-SYS-023`, `MRTM-SYS-024` | — | n/a — allocated item | — |
| nurse |  | not classified | none | — | n/a — allocated item | — |
| oled |  | not classified | `MRTM-OLD-001` | — | n/a — allocated item | — |
| power |  | not classified | `MRTM-PWR-001`, `MRTM-PWR-002`, `MRTM-PWR-003` | — | n/a — allocated item | — |
| powerClock |  | not classified | none | — | n/a — allocated item | — |
| powerItem |  | not classified | none | — | n/a — allocated item | — |
| powerLogger |  | not classified | none | — | n/a — allocated item | — |
| powerMon |  | not classified | none | — | n/a — allocated item | — |
| powerMonApi |  | not classified | none | — | n/a — allocated item | — |
| powerPath |  | not classified | none | — | n/a — allocated item | — |
| powerRing |  | not classified | none | — | n/a — allocated item | — |
| powerService |  | not classified | none | — | n/a — allocated item | — |
| powerSupervisor |  | not classified | none | — | n/a — allocated item | — |
| powerSwItem |  | not classified | none | — | n/a — allocated item | — |
| powerSwItem.powerMon |  | not classified | `MRTM-PWI-001`, `MRTM-PWI-002` | — | n/a — unresolved reference | — |
| probe |  | not classified | `MRTM-PRB-001`, `MRTM-PRB-002`, `MRTM-PRB-003` | — | n/a — allocated item | — |
| probeSupervisor |  | not classified | none | — | n/a — allocated item | — |
| redLed |  | not classified | none | — | n/a — allocated item | — |
| rtc |  | not classified | `MRTM-RTC-001` | — | n/a — allocated item | — |
| rtcClock |  | not classified | none | — | n/a — allocated item | — |
| rtcClockApi |  | not classified | none | — | n/a — allocated item | — |
| sampler |  | not classified | none | — | n/a — allocated item | — |
| screen |  | not classified | none | — | n/a — allocated item | — |
| selfTest |  | not classified | none | — | n/a — allocated item | — |
| sensing |  | not classified | `MRTM-SEN-001`, `MRTM-SEN-002`, `MRTM-SEN-003`, `MRTM-SEN-004` | — | n/a — allocated item | — |
| sensingF |  | not classified | none | — | n/a — allocated item | — |
| sensorItem |  | not classified | none | — | n/a — allocated item | — |
| sensorSampler |  | not classified | none | — | n/a — allocated item | — |
| sensorSamplerApi |  | not classified | none | — | n/a — allocated item | — |
| sensorService |  | not classified | none | — | n/a — allocated item | — |
| sensorSwItem |  | not classified | none | — | n/a — allocated item | — |
| sensorSwItem.sensorSampler |  | not classified | `MRTM-SNI-001`, `MRTM-SNI-002` | — | n/a — unresolved reference | — |
| sensorTask |  | not classified | none | — | n/a — allocated item | — |
| staff |  | not classified | none | — | n/a — allocated item | — |
| staffF |  | not classified | none | — | n/a — allocated item | — |
| staffP |  | not classified | none | — | n/a — allocated item | — |
| statusDisplay |  | not classified | none | — | n/a — allocated item | — |
| supervision |  | not classified | `MRTM-SUP-001`, `MRTM-SUP-002`, `MRTM-SUP-003`, `MRTM-SUP-004` | — | n/a — allocated item | — |
| supervisor |  | not classified | none | — | n/a — allocated item | — |
| supervisorItem |  | not classified | none | — | n/a — allocated item | — |
| supervisorSwItem |  | not classified | none | — | n/a — allocated item | — |
| supervisorSwItem.wdtKicker |  | not classified | `MRTM-SVI-001`, `MRTM-SVI-002`, `MRTM-SVI-003` | — | n/a — unresolved reference | — |
| supervisorTask |  | not classified | none | — | n/a — allocated item | — |
| supplyPath |  | not classified | `MRTM-PPT-001` | — | n/a — allocated item | — |
| technician |  | not classified | none | — | n/a — allocated item | — |
| temperature |  | not classified | none | — | n/a — allocated item | — |
| timekeeper |  | not classified | none | — | n/a — allocated item | — |
| timer |  | not classified | none | — | n/a — allocated item | — |
| usbExport |  | not classified | none | — | n/a — allocated item | — |
| usbExportApi |  | not classified | none | — | n/a — allocated item | — |
| usbHost |  | not classified | none | — | n/a — allocated item | — |
| usbItem |  | not classified | none | — | n/a — allocated item | — |
| usbService |  | not classified | none | — | n/a — allocated item | — |
| usbSwItem |  | not classified | none | — | n/a — allocated item | — |
| usbSwItem.usbExport |  | not classified | `MRTM-USI-001`, `MRTM-USI-002` | — | n/a — unresolved reference | — |
| usbTask |  | not classified | none | — | n/a — allocated item | — |
| watchdog |  | not classified | none | — | n/a — allocated item | — |
| wdtKicker |  | not classified | none | — | n/a — allocated item | — |
| wdtKickerApi |  | not classified | none | — | n/a — allocated item | — |

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

**Count:** 1

- MRTM-ALM-006

### Derived / exempted — requirements a declaration waived from the orphan rule

**Count:** 0

No derived exemptions.

