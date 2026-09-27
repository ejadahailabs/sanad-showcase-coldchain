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
- [Declared gaps](#declared-gaps)
  - [Orphans — requirements tracing up to nothing](#orphans--requirements-tracing-up-to-nothing)
  - [Childless — an approved requirement nothing traces up to](#childless--an-approved-requirement-nothing-traces-up-to)
  - [Unverified — requirements with no verifying case](#unverified--requirements-with-no-verifying-case)
  - [Derived / exempted — requirements a declaration waived from the orphan rule](#derived--exempted--requirements-a-declaration-waived-from-the-orphan-rule)

## Configuration identity and completeness

**Mode:** Engineering — generated on a workstation, outside the certification recipe; this report carries no certification credit.

**Generated from commit:** `f87cc4bcbbd672a5b2c48dffac638885761404be`

**Tool version:** `sanad 0.6.3`

**Inputs:** `146 requirements`, `symbol index`, `architecture inventory`

This report regenerates byte-identically from the same commit with the same tool version and inputs — it names no clock and reads nothing outside those inputs, so any second run that differs is evidence something changed, not that the report drifted.

**Rule pack:** `default`

**Analyses that ran:** `validation`, `traceability`, `structure`, `verification`, `implementation`, `safety`, `architecture`, `consistency`, `conformance`, `impact`

**Analyses that did not run:**

- `interface` — did not run: no template in this repository declares the role `interface`. It produced no findings, and that silence is not a clean result.
- `security` — did not run: no template in this repository declares the role `threat`. It produced no findings, and that silence is not a clean result.

**Criticality levels present:** none declared

## Trace legs required by criticality band

This repository declares no criticality scale, so policy mandates no trace leg and no band selects a stricter chain. The trace matrices below are therefore informational: complete and honest, but carrying no certification obligation (rule 4).

## Level trace matrices

**Objective:** DO-178C Table A-3 objective 6, *high-level requirements are traceable to system requirements*, and the same objective at each level below it; evidenced by the trace data of §5.5, *the bi-directional association between* requirements at adjacent levels.

### Stakeholder Requirement ⇄ System Requirement

#### Stakeholder Requirement → System Requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-STK-001 | Alert on excursion | not classified | `MRTM-SYS-003`, `MRTM-SYS-004`, `MRTM-SYS-005`, `MRTM-SYS-017`, `MRTM-SYS-024` | — | not reported | — |
| MRTM-STK-002 | No alert on brief door opening | not classified | `MRTM-SYS-002`, `MRTM-SYS-018` | — | not reported | — |
| MRTM-STK-003 | Silence the alert | not classified | `MRTM-SYS-006`, `MRTM-SYS-007`, `MRTM-SYS-019` | — | not reported | — |
| MRTM-STK-004 | See the temperature | not classified | `MRTM-SYS-001`, `MRTM-SYS-011` | — | not reported | — |
| MRTM-STK-005 | Audit history | not classified | `MRTM-SYS-008`, `MRTM-SYS-009`, `MRTM-SYS-010`, `MRTM-SYS-015`, `MRTM-SYS-020`, `MRTM-SYS-022` | — | not reported | — |
| MRTM-STK-006 | History cannot be edited | not classified | `MRTM-SYS-014`, `MRTM-SYS-021` | — | not reported | — |
| MRTM-STK-007 | Probe failure is visible | not classified | `MRTM-SYS-012`, `MRTM-SYS-013` | — | not reported | — |
| MRTM-STK-008 | Monitoring through a power cut | not classified | `MRTM-SYS-016`, `MRTM-SYS-023` | — | not reported | — |

#### System Requirement → Stakeholder Requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SYS-001 | Sampling period | not classified | `MRTM-STK-004` | — | not reported | `10-src/config/mrtm_config.h#off`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_read` |
| MRTM-SYS-002 | Excursion confirmation | not classified | `MRTM-STK-002` | — | not reported | `10-src/config/mrtm_config.h#off`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step` |
| MRTM-SYS-003 | Buzzer on excursion | not classified | `MRTM-STK-001` | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take` |
| MRTM-SYS-004 | Red indicator on excursion | not classified | `MRTM-STK-001` | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SYS-005 | Warning on excursion | not classified | `MRTM-STK-001` | — | not reported | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/display_mgr/src/display_mgr.cpp#renderFrame`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_display_step` |
| MRTM-SYS-006 | Acknowledge silences buzzer | not classified | `MRTM-STK-003` | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_button_debounced`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_post`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take` |
| MRTM-SYS-007 | Warning stays while excursion is open | not classified | `MRTM-STK-003` | — | not reported | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw` |
| MRTM-SYS-008 | Log excursion start | not classified | `MRTM-STK-005` | — | not reported | `10-src/firmware/components/event_log/src/event_log.c#event_log_post`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now` |
| MRTM-SYS-009 | Log excursion end | not classified | `MRTM-STK-005` | — | not reported | `10-src/firmware/components/event_log/src/event_log.c#event_log_post`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_peak`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step` |
| MRTM-SYS-010 | Log acknowledgement | not classified | `MRTM-STK-005` | — | not reported | `10-src/firmware/components/event_log/src/event_log.c#event_log_post`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now` |
| MRTM-SYS-011 | Display resolution | not classified | `MRTM-STK-004` | — | not reported | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_to_tenths` |
| MRTM-SYS-012 | Probe fault detection | not classified | `MRTM-STK-007` | — | not reported | `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step`, `10-src/firmware/components/mrtm_common/src/mrtm_crc.c#mrtm_crc8_maxim`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_probe_fault`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_read` |
| MRTM-SYS-013 | Probe fault message | not classified | `MRTM-STK-007` | — | not reported | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/display_mgr/src/display_mgr.cpp#renderFrame`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_display_step` |
| MRTM-SYS-014 | Read-only event log | not classified | `MRTM-STK-006` | — | not reported | `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_init`, `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_write10` |
| MRTM-SYS-015 | Event log capacity | not classified | `MRTM-STK-005` | — | not reported | `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_append`, `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_init`, `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_read` |
| MRTM-SYS-016 | Battery operation | not classified | `MRTM-STK-008` | — | not reported | — |
| MRTM-SYS-017 | Allowed band | not classified | `MRTM-STK-001` | — | not reported | `10-src/firmware/components/config_mgr/src/config_mgr.c#config_mgr_load`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_init`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step` |
| MRTM-SYS-018 | Excursion end confirmation | not classified | `MRTM-STK-002` | — | not reported | `10-src/config/mrtm_config.h#off`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step` |
| MRTM-SYS-019 | Alarm comes back after silence | not classified | `MRTM-STK-003` | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SYS-020 | Clock drift | not classified | `MRTM-STK-005` | — | not reported | `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_tick` |
| MRTM-SYS-021 | Event log integrity | not classified | `MRTM-STK-006` | — | not reported | `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_read`, `10-src/firmware/components/mrtm_common/src/mrtm_crc.c#mrtm_crc32` |
| MRTM-SYS-022 | Log capacity warning | not classified | `MRTM-STK-005` | — | not reported | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_append`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step` |
| MRTM-SYS-023 | Power restore event | not classified | `MRTM-STK-008` | — | not reported | `10-src/firmware/components/event_log/src/event_log.c#event_log_post`, `10-src/firmware/components/power_mon/src/power_mon.c#power_mon_isr`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now` |
| MRTM-SYS-024 | Early excursion alarm | not classified | `MRTM-STK-001` | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step` |

### System Requirement ⇄ Environmental Requirement

#### System Requirement → Environmental Requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SYS-001 | Sampling period | not classified | `MRTM-ENV-002`, `MRTM-ENV-003`, `MRTM-ENV-004` | — | not reported | `10-src/config/mrtm_config.h#off`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_read` |
| MRTM-SYS-002 | Excursion confirmation | not classified | none | — | not reported | `10-src/config/mrtm_config.h#off`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step` |
| MRTM-SYS-003 | Buzzer on excursion | not classified | none | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take` |
| MRTM-SYS-004 | Red indicator on excursion | not classified | none | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SYS-005 | Warning on excursion | not classified | none | — | not reported | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/display_mgr/src/display_mgr.cpp#renderFrame`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_display_step` |
| MRTM-SYS-006 | Acknowledge silences buzzer | not classified | none | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_button_debounced`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_post`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take` |
| MRTM-SYS-007 | Warning stays while excursion is open | not classified | none | — | not reported | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw` |
| MRTM-SYS-008 | Log excursion start | not classified | none | — | not reported | `10-src/firmware/components/event_log/src/event_log.c#event_log_post`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now` |
| MRTM-SYS-009 | Log excursion end | not classified | none | — | not reported | `10-src/firmware/components/event_log/src/event_log.c#event_log_post`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_peak`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step` |
| MRTM-SYS-010 | Log acknowledgement | not classified | none | — | not reported | `10-src/firmware/components/event_log/src/event_log.c#event_log_post`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now` |
| MRTM-SYS-011 | Display resolution | not classified | none | — | not reported | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_to_tenths` |
| MRTM-SYS-012 | Probe fault detection | not classified | none | — | not reported | `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step`, `10-src/firmware/components/mrtm_common/src/mrtm_crc.c#mrtm_crc8_maxim`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_probe_fault`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_read` |
| MRTM-SYS-013 | Probe fault message | not classified | none | — | not reported | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/display_mgr/src/display_mgr.cpp#renderFrame`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_display_step` |
| MRTM-SYS-014 | Read-only event log | not classified | none | — | not reported | `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_init`, `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_write10` |
| MRTM-SYS-015 | Event log capacity | not classified | none | — | not reported | `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_append`, `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_init`, `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_read` |
| MRTM-SYS-016 | Battery operation | not classified | `MRTM-ENV-001` | — | not reported | — |
| MRTM-SYS-017 | Allowed band | not classified | none | — | not reported | `10-src/firmware/components/config_mgr/src/config_mgr.c#config_mgr_load`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_init`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step` |
| MRTM-SYS-018 | Excursion end confirmation | not classified | none | — | not reported | `10-src/config/mrtm_config.h#off`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step` |
| MRTM-SYS-019 | Alarm comes back after silence | not classified | none | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SYS-020 | Clock drift | not classified | none | — | not reported | `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_tick` |
| MRTM-SYS-021 | Event log integrity | not classified | none | — | not reported | `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_read`, `10-src/firmware/components/mrtm_common/src/mrtm_crc.c#mrtm_crc32` |
| MRTM-SYS-022 | Log capacity warning | not classified | none | — | not reported | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_append`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step` |
| MRTM-SYS-023 | Power restore event | not classified | none | — | not reported | `10-src/firmware/components/event_log/src/event_log.c#event_log_post`, `10-src/firmware/components/power_mon/src/power_mon.c#power_mon_isr`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now` |
| MRTM-SYS-024 | Early excursion alarm | not classified | none | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step` |

#### Environmental Requirement → System Requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-ENV-001 | Battery endurance | not classified | `MRTM-SYS-016` | — | not reported | — |
| MRTM-ENV-002 | Ambient temperature | not classified | `MRTM-SYS-001` | — | not reported | — |
| MRTM-ENV-003 | Humidity | not classified | `MRTM-SYS-001` | — | not reported | — |
| MRTM-ENV-004 | Probe environment | not classified | `MRTM-SYS-001` | — | not reported | — |

### System Requirement ⇄ Interface Requirement

#### System Requirement → Interface Requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SYS-001 | Sampling period | not classified | `MRTM-IFC-001` | — | not reported | `10-src/config/mrtm_config.h#off`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_read` |
| MRTM-SYS-002 | Excursion confirmation | not classified | none | — | not reported | `10-src/config/mrtm_config.h#off`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step` |
| MRTM-SYS-003 | Buzzer on excursion | not classified | none | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take` |
| MRTM-SYS-004 | Red indicator on excursion | not classified | none | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SYS-005 | Warning on excursion | not classified | `MRTM-IFC-004` | — | not reported | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/display_mgr/src/display_mgr.cpp#renderFrame`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_display_step` |
| MRTM-SYS-006 | Acknowledge silences buzzer | not classified | `MRTM-IFC-002` | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_button_debounced`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_post`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take` |
| MRTM-SYS-007 | Warning stays while excursion is open | not classified | none | — | not reported | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw` |
| MRTM-SYS-008 | Log excursion start | not classified | none | — | not reported | `10-src/firmware/components/event_log/src/event_log.c#event_log_post`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now` |
| MRTM-SYS-009 | Log excursion end | not classified | none | — | not reported | `10-src/firmware/components/event_log/src/event_log.c#event_log_post`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_peak`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step` |
| MRTM-SYS-010 | Log acknowledgement | not classified | none | — | not reported | `10-src/firmware/components/event_log/src/event_log.c#event_log_post`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now` |
| MRTM-SYS-011 | Display resolution | not classified | none | — | not reported | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_to_tenths` |
| MRTM-SYS-012 | Probe fault detection | not classified | none | — | not reported | `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step`, `10-src/firmware/components/mrtm_common/src/mrtm_crc.c#mrtm_crc8_maxim`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_probe_fault`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_read` |
| MRTM-SYS-013 | Probe fault message | not classified | none | — | not reported | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/display_mgr/src/display_mgr.cpp#renderFrame`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_display_step` |
| MRTM-SYS-014 | Read-only event log | not classified | `MRTM-IFC-003` | — | not reported | `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_init`, `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_write10` |
| MRTM-SYS-015 | Event log capacity | not classified | none | — | not reported | `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_append`, `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_init`, `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_read` |
| MRTM-SYS-016 | Battery operation | not classified | none | — | not reported | — |
| MRTM-SYS-017 | Allowed band | not classified | none | — | not reported | `10-src/firmware/components/config_mgr/src/config_mgr.c#config_mgr_load`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_init`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step` |
| MRTM-SYS-018 | Excursion end confirmation | not classified | none | — | not reported | `10-src/config/mrtm_config.h#off`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step` |
| MRTM-SYS-019 | Alarm comes back after silence | not classified | none | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SYS-020 | Clock drift | not classified | none | — | not reported | `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_tick` |
| MRTM-SYS-021 | Event log integrity | not classified | none | — | not reported | `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_read`, `10-src/firmware/components/mrtm_common/src/mrtm_crc.c#mrtm_crc32` |
| MRTM-SYS-022 | Log capacity warning | not classified | none | — | not reported | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_append`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step` |
| MRTM-SYS-023 | Power restore event | not classified | none | — | not reported | `10-src/firmware/components/event_log/src/event_log.c#event_log_post`, `10-src/firmware/components/power_mon/src/power_mon.c#power_mon_isr`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now` |
| MRTM-SYS-024 | Early excursion alarm | not classified | none | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step` |

#### Interface Requirement → System Requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-IFC-001 | Probe bus | not classified | `MRTM-SYS-001` | — | not reported | `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_init`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_read` |
| MRTM-IFC-002 | Acknowledge input | not classified | `MRTM-SYS-006` | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_button_debounced`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_button_isr` |
| MRTM-IFC-003 | USB readout | not classified | `MRTM-SYS-014` | — | not reported | `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_init`, `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_read10`, `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_write10` |
| MRTM-IFC-004 | Display character height | not classified | `MRTM-SYS-005` | — | not reported | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw` |

### System Requirement ⇄ Maintainability Requirement

#### System Requirement → Maintainability Requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SYS-001 | Sampling period | not classified | `MRTM-MNT-003` | — | not reported | `10-src/config/mrtm_config.h#off`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_read` |
| MRTM-SYS-002 | Excursion confirmation | not classified | none | — | not reported | `10-src/config/mrtm_config.h#off`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step` |
| MRTM-SYS-003 | Buzzer on excursion | not classified | none | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take` |
| MRTM-SYS-004 | Red indicator on excursion | not classified | none | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SYS-005 | Warning on excursion | not classified | none | — | not reported | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/display_mgr/src/display_mgr.cpp#renderFrame`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_display_step` |
| MRTM-SYS-006 | Acknowledge silences buzzer | not classified | none | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_button_debounced`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_post`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take` |
| MRTM-SYS-007 | Warning stays while excursion is open | not classified | none | — | not reported | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw` |
| MRTM-SYS-008 | Log excursion start | not classified | none | — | not reported | `10-src/firmware/components/event_log/src/event_log.c#event_log_post`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now` |
| MRTM-SYS-009 | Log excursion end | not classified | none | — | not reported | `10-src/firmware/components/event_log/src/event_log.c#event_log_post`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_peak`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step` |
| MRTM-SYS-010 | Log acknowledgement | not classified | none | — | not reported | `10-src/firmware/components/event_log/src/event_log.c#event_log_post`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now` |
| MRTM-SYS-011 | Display resolution | not classified | none | — | not reported | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_to_tenths` |
| MRTM-SYS-012 | Probe fault detection | not classified | `MRTM-MNT-001` | — | not reported | `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step`, `10-src/firmware/components/mrtm_common/src/mrtm_crc.c#mrtm_crc8_maxim`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_probe_fault`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_read` |
| MRTM-SYS-013 | Probe fault message | not classified | none | — | not reported | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/display_mgr/src/display_mgr.cpp#renderFrame`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_display_step` |
| MRTM-SYS-014 | Read-only event log | not classified | none | — | not reported | `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_init`, `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_write10` |
| MRTM-SYS-015 | Event log capacity | not classified | none | — | not reported | `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_append`, `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_init`, `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_read` |
| MRTM-SYS-016 | Battery operation | not classified | `MRTM-MNT-002` | — | not reported | — |
| MRTM-SYS-017 | Allowed band | not classified | none | — | not reported | `10-src/firmware/components/config_mgr/src/config_mgr.c#config_mgr_load`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_init`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step` |
| MRTM-SYS-018 | Excursion end confirmation | not classified | none | — | not reported | `10-src/config/mrtm_config.h#off`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step` |
| MRTM-SYS-019 | Alarm comes back after silence | not classified | none | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SYS-020 | Clock drift | not classified | none | — | not reported | `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_tick` |
| MRTM-SYS-021 | Event log integrity | not classified | none | — | not reported | `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_read`, `10-src/firmware/components/mrtm_common/src/mrtm_crc.c#mrtm_crc32` |
| MRTM-SYS-022 | Log capacity warning | not classified | none | — | not reported | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_append`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step` |
| MRTM-SYS-023 | Power restore event | not classified | none | — | not reported | `10-src/firmware/components/event_log/src/event_log.c#event_log_post`, `10-src/firmware/components/power_mon/src/power_mon.c#power_mon_isr`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now` |
| MRTM-SYS-024 | Early excursion alarm | not classified | none | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step` |

#### Maintainability Requirement → System Requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-MNT-001 | Probe replacement | not classified | `MRTM-SYS-012` | — | not reported | — |
| MRTM-MNT-002 | Battery level | not classified | `MRTM-SYS-016` | — | not reported | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step` |
| MRTM-MNT-003 | Firmware version | not classified | `MRTM-SYS-001` | — | not reported | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/display_mgr/src/display_mgr.cpp#renderFrame`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_power_up` |

### System Requirement ⇄ Performance Requirement

#### System Requirement → Performance Requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SYS-001 | Sampling period | not classified | `MRTM-PRF-001` | — | not reported | `10-src/config/mrtm_config.h#off`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_read` |
| MRTM-SYS-002 | Excursion confirmation | not classified | none | — | not reported | `10-src/config/mrtm_config.h#off`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step` |
| MRTM-SYS-003 | Buzzer on excursion | not classified | `MRTM-PRF-002` | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take` |
| MRTM-SYS-004 | Red indicator on excursion | not classified | none | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SYS-005 | Warning on excursion | not classified | none | — | not reported | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/display_mgr/src/display_mgr.cpp#renderFrame`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_display_step` |
| MRTM-SYS-006 | Acknowledge silences buzzer | not classified | none | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_button_debounced`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_post`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take` |
| MRTM-SYS-007 | Warning stays while excursion is open | not classified | none | — | not reported | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw` |
| MRTM-SYS-008 | Log excursion start | not classified | none | — | not reported | `10-src/firmware/components/event_log/src/event_log.c#event_log_post`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now` |
| MRTM-SYS-009 | Log excursion end | not classified | none | — | not reported | `10-src/firmware/components/event_log/src/event_log.c#event_log_post`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_peak`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step` |
| MRTM-SYS-010 | Log acknowledgement | not classified | none | — | not reported | `10-src/firmware/components/event_log/src/event_log.c#event_log_post`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now` |
| MRTM-SYS-011 | Display resolution | not classified | `MRTM-PRF-004` | — | not reported | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_to_tenths` |
| MRTM-SYS-012 | Probe fault detection | not classified | none | — | not reported | `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step`, `10-src/firmware/components/mrtm_common/src/mrtm_crc.c#mrtm_crc8_maxim`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_probe_fault`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_read` |
| MRTM-SYS-013 | Probe fault message | not classified | none | — | not reported | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/display_mgr/src/display_mgr.cpp#renderFrame`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_display_step` |
| MRTM-SYS-014 | Read-only event log | not classified | none | — | not reported | `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_init`, `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_write10` |
| MRTM-SYS-015 | Event log capacity | not classified | `MRTM-PRF-003` | — | not reported | `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_append`, `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_init`, `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_read` |
| MRTM-SYS-016 | Battery operation | not classified | none | — | not reported | — |
| MRTM-SYS-017 | Allowed band | not classified | none | — | not reported | `10-src/firmware/components/config_mgr/src/config_mgr.c#config_mgr_load`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_init`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step` |
| MRTM-SYS-018 | Excursion end confirmation | not classified | none | — | not reported | `10-src/config/mrtm_config.h#off`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step` |
| MRTM-SYS-019 | Alarm comes back after silence | not classified | none | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SYS-020 | Clock drift | not classified | none | — | not reported | `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_tick` |
| MRTM-SYS-021 | Event log integrity | not classified | none | — | not reported | `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_read`, `10-src/firmware/components/mrtm_common/src/mrtm_crc.c#mrtm_crc32` |
| MRTM-SYS-022 | Log capacity warning | not classified | none | — | not reported | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_append`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step` |
| MRTM-SYS-023 | Power restore event | not classified | none | — | not reported | `10-src/firmware/components/event_log/src/event_log.c#event_log_post`, `10-src/firmware/components/power_mon/src/power_mon.c#power_mon_isr`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now` |
| MRTM-SYS-024 | Early excursion alarm | not classified | none | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step` |

#### Performance Requirement → System Requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-PRF-001 | Measurement accuracy | not classified | `MRTM-SYS-001` | — | not reported | `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_to_tenths` |
| MRTM-PRF-002 | End-to-end alert time | not classified | `MRTM-SYS-003` | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-PRF-003 | Log readout time | not classified | `MRTM-SYS-015` | — | not reported | `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_read10` |
| MRTM-PRF-004 | Display refresh | not classified | `MRTM-SYS-011` | — | not reported | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#display_mgr_tick`, `10-src/firmware/components/display_mgr/src/display_mgr.cpp#renderFrame` |

### System Requirement ⇄ Safety Requirement

#### System Requirement → Safety Requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SYS-001 | Sampling period | not classified | `MRTM-SAF-003`, `MRTM-SAF-004`, `MRTM-SAF-012`, `MRTM-SAF-020` | — | not reported | `10-src/config/mrtm_config.h#off`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_read` |
| MRTM-SYS-002 | Excursion confirmation | not classified | none | — | not reported | `10-src/config/mrtm_config.h#off`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step` |
| MRTM-SYS-003 | Buzzer on excursion | not classified | `MRTM-SAF-001`, `MRTM-SAF-006`, `MRTM-SAF-007`, `MRTM-SAF-009`, `MRTM-SAF-010`, `MRTM-SAF-014`, `MRTM-SAF-023` | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take` |
| MRTM-SYS-004 | Red indicator on excursion | not classified | `MRTM-SAF-015` | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SYS-005 | Warning on excursion | not classified | `MRTM-SAF-021` | — | not reported | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/display_mgr/src/display_mgr.cpp#renderFrame`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_display_step` |
| MRTM-SYS-006 | Acknowledge silences buzzer | not classified | `MRTM-SAF-019` | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_button_debounced`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_post`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take` |
| MRTM-SYS-007 | Warning stays while excursion is open | not classified | none | — | not reported | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw` |
| MRTM-SYS-008 | Log excursion start | not classified | none | — | not reported | `10-src/firmware/components/event_log/src/event_log.c#event_log_post`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now` |
| MRTM-SYS-009 | Log excursion end | not classified | none | — | not reported | `10-src/firmware/components/event_log/src/event_log.c#event_log_post`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_peak`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step` |
| MRTM-SYS-010 | Log acknowledgement | not classified | none | — | not reported | `10-src/firmware/components/event_log/src/event_log.c#event_log_post`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now` |
| MRTM-SYS-011 | Display resolution | not classified | none | — | not reported | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_to_tenths` |
| MRTM-SYS-012 | Probe fault detection | not classified | `MRTM-SAF-002`, `MRTM-SAF-011` | — | not reported | `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step`, `10-src/firmware/components/mrtm_common/src/mrtm_crc.c#mrtm_crc8_maxim`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_probe_fault`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_read` |
| MRTM-SYS-013 | Probe fault message | not classified | none | — | not reported | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/display_mgr/src/display_mgr.cpp#renderFrame`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_display_step` |
| MRTM-SYS-014 | Read-only event log | not classified | none | — | not reported | `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_init`, `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_write10` |
| MRTM-SYS-015 | Event log capacity | not classified | `MRTM-SAF-018` | — | not reported | `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_append`, `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_init`, `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_read` |
| MRTM-SYS-016 | Battery operation | not classified | `MRTM-SAF-005`, `MRTM-SAF-008`, `MRTM-SAF-013` | — | not reported | — |
| MRTM-SYS-017 | Allowed band | not classified | `MRTM-SAF-016`, `MRTM-SAF-017` | — | not reported | `10-src/firmware/components/config_mgr/src/config_mgr.c#config_mgr_load`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_init`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step` |
| MRTM-SYS-018 | Excursion end confirmation | not classified | none | — | not reported | `10-src/config/mrtm_config.h#off`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step` |
| MRTM-SYS-019 | Alarm comes back after silence | not classified | none | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SYS-020 | Clock drift | not classified | `MRTM-SAF-022` | — | not reported | `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_tick` |
| MRTM-SYS-021 | Event log integrity | not classified | none | — | not reported | `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_read`, `10-src/firmware/components/mrtm_common/src/mrtm_crc.c#mrtm_crc32` |
| MRTM-SYS-022 | Log capacity warning | not classified | none | — | not reported | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_append`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step` |
| MRTM-SYS-023 | Power restore event | not classified | none | — | not reported | `10-src/firmware/components/event_log/src/event_log.c#event_log_post`, `10-src/firmware/components/power_mon/src/power_mon.c#power_mon_isr`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now` |
| MRTM-SYS-024 | Early excursion alarm | not classified | none | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step` |

#### Safety Requirement → System Requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SAF-001 | Buzzer loudness | not classified | `MRTM-SYS-003` | — | not reported | — |
| MRTM-SAF-002 | Probe fault raises alert | not classified | `MRTM-SYS-012` | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step` |
| MRTM-SAF-003 | Implausible sample | not classified | `MRTM-SYS-001` | — | not reported | `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_probe_fault`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_read` |
| MRTM-SAF-004 | Watchdog restart | not classified | `MRTM-SYS-001` | — | not reported | `10-src/firmware/components/wdt_kicker/src/wdt_kicker.c#wdt_kicker_init` |
| MRTM-SAF-005 | Log power loss | not classified | `MRTM-SYS-016` | — | not reported | `10-src/firmware/components/power_mon/src/power_mon.c#power_mon_isr` |
| MRTM-SAF-006 | Alert survives restart | not classified | `MRTM-SYS-003` | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_init`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_power_up` |
| MRTM-SAF-007 | Buzzer self-test | not classified | `MRTM-SYS-003` | — | not reported | `10-src/firmware/components/diagnostics/src/diagnostics.c#diagnostics_power_up` |
| MRTM-SAF-008 | Low battery alarm | not classified | `MRTM-SYS-016` | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step`, `10-src/firmware/components/power_mon/src/power_mon.c#power_mon_step` |
| MRTM-SAF-009 | Backup alarm on firmware silence | not classified | `MRTM-SYS-003` | — | not reported | `10-src/firmware/components/wdt_kicker/src/wdt_kicker.c#wdt_kicker_step` |
| MRTM-SAF-010 | Watchdog tied to the alarm service | not classified | `MRTM-SYS-003` | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_heartbeat`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step`, `10-src/firmware/components/wdt_kicker/src/wdt_kicker.c#wdt_kicker_step` |
| MRTM-SAF-011 | Fault tone differs from excursion tone | not classified | `MRTM-SYS-012` | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SAF-012 | Probe calibration due | not classified | `MRTM-SYS-001` | — | not reported | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step` |
| MRTM-SAF-013 | Alarm on total power loss | not classified | `MRTM-SYS-016` | — | not reported | — |
| MRTM-SAF-014 | Buzzer open-circuit detection | not classified | `MRTM-SYS-003` | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SAF-015 | Diverse signal for buzzer fault | not classified | `MRTM-SYS-004` | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SAF-016 | Show the band at power-up | not classified | `MRTM-SYS-017` | — | not reported | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#display_mgr_init`, `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/display_mgr/src/display_mgr.cpp#renderFrame`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_power_up` |
| MRTM-SAF-017 | Band integrity check | not classified | `MRTM-SYS-017` | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step`, `10-src/firmware/components/config_mgr/src/config_mgr.c#config_mgr_load`, `10-src/firmware/components/config_mgr/src/config_mgr.c#config_mgr_store`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_power_up`, `10-src/firmware/components/mrtm_common/src/mrtm_crc.c#mrtm_crc32` |
| MRTM-SAF-018 | Two copies of every record | not classified | `MRTM-SYS-015` | — | not reported | `10-src/firmware/components/event_log/src/event_log.c#event_log_step`, `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_append` |
| MRTM-SAF-019 | Stuck acknowledge button | not classified | `MRTM-SYS-006` | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_button_debounced`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SAF-020 | Probe placement in the instructions | not classified | `MRTM-SYS-001` | — | not reported | — |
| MRTM-SAF-021 | I2C bus recovery | not classified | `MRTM-SYS-005` | — | not reported | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#recoverBus` |
| MRTM-SAF-022 | Clock stop detection | not classified | `MRTM-SYS-020` | — | not reported | `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_power_up`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_init` |
| MRTM-SAF-023 | Backup alarm power-up test | not classified | `MRTM-SYS-003` | — | not reported | `10-src/firmware/components/diagnostics/src/diagnostics.c#diagnostics_power_up` |

### Environmental Requirement ⇄ Hardware item requirement

#### Environmental Requirement → Hardware item requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-ENV-001 | Battery endurance | not classified | `MRTM-HWI-012` | — | not reported | — |
| MRTM-ENV-002 | Ambient temperature | not classified | none | — | not reported | — |
| MRTM-ENV-003 | Humidity | not classified | none | — | not reported | — |
| MRTM-ENV-004 | Probe environment | not classified | `MRTM-HWI-002` | — | not reported | — |

#### Hardware item requirement → Environmental Requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-HWI-001 | Probe conversion time | not classified | none | — | not reported | — |
| MRTM-HWI-002 | Probe accuracy | not classified | `MRTM-ENV-004` | — | not reported | — |
| MRTM-HWI-003 | Probe scratchpad check | not classified | none | — | not reported | — |
| MRTM-HWI-004 | Buzzer loudness | not classified | none | — | not reported | — |
| MRTM-HWI-005 | Red indicator response | not classified | none | — | not reported | — |
| MRTM-HWI-006 | Acknowledge contact | not classified | none | — | not reported | — |
| MRTM-HWI-007 | Backup alarm timeout | not classified | none | — | not reported | — |
| MRTM-HWI-008 | Backup alarm hold-up | not classified | none | — | not reported | — |
| MRTM-HWI-009 | Display digit height | not classified | none | — | not reported | — |
| MRTM-HWI-010 | Clock drift | not classified | none | — | not reported | — |
| MRTM-HWI-011 | Power path switch-over | not classified | none | — | not reported | — |
| MRTM-HWI-012 | Battery endurance | not classified | `MRTM-ENV-001` | — | not reported | — |
| MRTM-HWI-013 | Processor watchdog reset | not classified | none | — | not reported | — |

### Interface Requirement ⇄ Hardware item requirement

#### Interface Requirement → Hardware item requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-IFC-001 | Probe bus | not classified | none | — | not reported | `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_init`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_read` |
| MRTM-IFC-002 | Acknowledge input | not classified | `MRTM-HWI-006` | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_button_debounced`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_button_isr` |
| MRTM-IFC-003 | USB readout | not classified | none | — | not reported | `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_init`, `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_read10`, `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_write10` |
| MRTM-IFC-004 | Display character height | not classified | `MRTM-HWI-009` | — | not reported | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw` |

#### Hardware item requirement → Interface Requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-HWI-001 | Probe conversion time | not classified | none | — | not reported | — |
| MRTM-HWI-002 | Probe accuracy | not classified | none | — | not reported | — |
| MRTM-HWI-003 | Probe scratchpad check | not classified | none | — | not reported | — |
| MRTM-HWI-004 | Buzzer loudness | not classified | none | — | not reported | — |
| MRTM-HWI-005 | Red indicator response | not classified | none | — | not reported | — |
| MRTM-HWI-006 | Acknowledge contact | not classified | `MRTM-IFC-002` | — | not reported | — |
| MRTM-HWI-007 | Backup alarm timeout | not classified | none | — | not reported | — |
| MRTM-HWI-008 | Backup alarm hold-up | not classified | none | — | not reported | — |
| MRTM-HWI-009 | Display digit height | not classified | `MRTM-IFC-004` | — | not reported | — |
| MRTM-HWI-010 | Clock drift | not classified | none | — | not reported | — |
| MRTM-HWI-011 | Power path switch-over | not classified | none | — | not reported | — |
| MRTM-HWI-012 | Battery endurance | not classified | none | — | not reported | — |
| MRTM-HWI-013 | Processor watchdog reset | not classified | none | — | not reported | — |

### Performance Requirement ⇄ Hardware item requirement

#### Performance Requirement → Hardware item requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-PRF-001 | Measurement accuracy | not classified | `MRTM-HWI-002` | — | not reported | `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_to_tenths` |
| MRTM-PRF-002 | End-to-end alert time | not classified | none | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-PRF-003 | Log readout time | not classified | none | — | not reported | `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_read10` |
| MRTM-PRF-004 | Display refresh | not classified | none | — | not reported | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#display_mgr_tick`, `10-src/firmware/components/display_mgr/src/display_mgr.cpp#renderFrame` |

#### Hardware item requirement → Performance Requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-HWI-001 | Probe conversion time | not classified | none | — | not reported | — |
| MRTM-HWI-002 | Probe accuracy | not classified | `MRTM-PRF-001` | — | not reported | — |
| MRTM-HWI-003 | Probe scratchpad check | not classified | none | — | not reported | — |
| MRTM-HWI-004 | Buzzer loudness | not classified | none | — | not reported | — |
| MRTM-HWI-005 | Red indicator response | not classified | none | — | not reported | — |
| MRTM-HWI-006 | Acknowledge contact | not classified | none | — | not reported | — |
| MRTM-HWI-007 | Backup alarm timeout | not classified | none | — | not reported | — |
| MRTM-HWI-008 | Backup alarm hold-up | not classified | none | — | not reported | — |
| MRTM-HWI-009 | Display digit height | not classified | none | — | not reported | — |
| MRTM-HWI-010 | Clock drift | not classified | none | — | not reported | — |
| MRTM-HWI-011 | Power path switch-over | not classified | none | — | not reported | — |
| MRTM-HWI-012 | Battery endurance | not classified | none | — | not reported | — |
| MRTM-HWI-013 | Processor watchdog reset | not classified | none | — | not reported | — |

### Safety Requirement ⇄ Hardware item requirement

#### Safety Requirement → Hardware item requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SAF-001 | Buzzer loudness | not classified | `MRTM-HWI-004` | — | not reported | — |
| MRTM-SAF-002 | Probe fault raises alert | not classified | none | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step` |
| MRTM-SAF-003 | Implausible sample | not classified | `MRTM-HWI-003` | — | not reported | `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_probe_fault`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_read` |
| MRTM-SAF-004 | Watchdog restart | not classified | `MRTM-HWI-013` | — | not reported | `10-src/firmware/components/wdt_kicker/src/wdt_kicker.c#wdt_kicker_init` |
| MRTM-SAF-005 | Log power loss | not classified | none | — | not reported | `10-src/firmware/components/power_mon/src/power_mon.c#power_mon_isr` |
| MRTM-SAF-006 | Alert survives restart | not classified | none | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_init`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_power_up` |
| MRTM-SAF-007 | Buzzer self-test | not classified | none | — | not reported | `10-src/firmware/components/diagnostics/src/diagnostics.c#diagnostics_power_up` |
| MRTM-SAF-008 | Low battery alarm | not classified | none | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step`, `10-src/firmware/components/power_mon/src/power_mon.c#power_mon_step` |
| MRTM-SAF-009 | Backup alarm on firmware silence | not classified | `MRTM-HWI-007` | — | not reported | `10-src/firmware/components/wdt_kicker/src/wdt_kicker.c#wdt_kicker_step` |
| MRTM-SAF-010 | Watchdog tied to the alarm service | not classified | none | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_heartbeat`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step`, `10-src/firmware/components/wdt_kicker/src/wdt_kicker.c#wdt_kicker_step` |
| MRTM-SAF-011 | Fault tone differs from excursion tone | not classified | none | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SAF-012 | Probe calibration due | not classified | none | — | not reported | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step` |
| MRTM-SAF-013 | Alarm on total power loss | not classified | `MRTM-HWI-008` | — | not reported | — |
| MRTM-SAF-014 | Buzzer open-circuit detection | not classified | none | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SAF-015 | Diverse signal for buzzer fault | not classified | none | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SAF-016 | Show the band at power-up | not classified | none | — | not reported | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#display_mgr_init`, `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/display_mgr/src/display_mgr.cpp#renderFrame`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_power_up` |
| MRTM-SAF-017 | Band integrity check | not classified | none | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step`, `10-src/firmware/components/config_mgr/src/config_mgr.c#config_mgr_load`, `10-src/firmware/components/config_mgr/src/config_mgr.c#config_mgr_store`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_power_up`, `10-src/firmware/components/mrtm_common/src/mrtm_crc.c#mrtm_crc32` |
| MRTM-SAF-018 | Two copies of every record | not classified | none | — | not reported | `10-src/firmware/components/event_log/src/event_log.c#event_log_step`, `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_append` |
| MRTM-SAF-019 | Stuck acknowledge button | not classified | none | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_button_debounced`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SAF-020 | Probe placement in the instructions | not classified | none | — | not reported | — |
| MRTM-SAF-021 | I2C bus recovery | not classified | none | — | not reported | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#recoverBus` |
| MRTM-SAF-022 | Clock stop detection | not classified | none | — | not reported | `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_power_up`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_init` |
| MRTM-SAF-023 | Backup alarm power-up test | not classified | none | — | not reported | `10-src/firmware/components/diagnostics/src/diagnostics.c#diagnostics_power_up` |

#### Hardware item requirement → Safety Requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-HWI-001 | Probe conversion time | not classified | none | — | not reported | — |
| MRTM-HWI-002 | Probe accuracy | not classified | none | — | not reported | — |
| MRTM-HWI-003 | Probe scratchpad check | not classified | `MRTM-SAF-003` | — | not reported | — |
| MRTM-HWI-004 | Buzzer loudness | not classified | `MRTM-SAF-001` | — | not reported | — |
| MRTM-HWI-005 | Red indicator response | not classified | none | — | not reported | — |
| MRTM-HWI-006 | Acknowledge contact | not classified | none | — | not reported | — |
| MRTM-HWI-007 | Backup alarm timeout | not classified | `MRTM-SAF-009` | — | not reported | — |
| MRTM-HWI-008 | Backup alarm hold-up | not classified | `MRTM-SAF-013` | — | not reported | — |
| MRTM-HWI-009 | Display digit height | not classified | none | — | not reported | — |
| MRTM-HWI-010 | Clock drift | not classified | none | — | not reported | — |
| MRTM-HWI-011 | Power path switch-over | not classified | none | — | not reported | — |
| MRTM-HWI-012 | Battery endurance | not classified | none | — | not reported | — |
| MRTM-HWI-013 | Processor watchdog reset | not classified | `MRTM-SAF-004` | — | not reported | — |

### System Requirement ⇄ Hardware item requirement

#### System Requirement → Hardware item requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SYS-001 | Sampling period | not classified | none | — | not reported | `10-src/config/mrtm_config.h#off`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_read` |
| MRTM-SYS-002 | Excursion confirmation | not classified | none | — | not reported | `10-src/config/mrtm_config.h#off`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step` |
| MRTM-SYS-003 | Buzzer on excursion | not classified | none | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take` |
| MRTM-SYS-004 | Red indicator on excursion | not classified | `MRTM-HWI-005` | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SYS-005 | Warning on excursion | not classified | none | — | not reported | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/display_mgr/src/display_mgr.cpp#renderFrame`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_display_step` |
| MRTM-SYS-006 | Acknowledge silences buzzer | not classified | `MRTM-HWI-006` | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_button_debounced`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_post`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take` |
| MRTM-SYS-007 | Warning stays while excursion is open | not classified | none | — | not reported | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw` |
| MRTM-SYS-008 | Log excursion start | not classified | none | — | not reported | `10-src/firmware/components/event_log/src/event_log.c#event_log_post`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now` |
| MRTM-SYS-009 | Log excursion end | not classified | none | — | not reported | `10-src/firmware/components/event_log/src/event_log.c#event_log_post`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_peak`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step` |
| MRTM-SYS-010 | Log acknowledgement | not classified | none | — | not reported | `10-src/firmware/components/event_log/src/event_log.c#event_log_post`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now` |
| MRTM-SYS-011 | Display resolution | not classified | none | — | not reported | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_to_tenths` |
| MRTM-SYS-012 | Probe fault detection | not classified | `MRTM-HWI-003` | — | not reported | `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step`, `10-src/firmware/components/mrtm_common/src/mrtm_crc.c#mrtm_crc8_maxim`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_probe_fault`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_read` |
| MRTM-SYS-013 | Probe fault message | not classified | none | — | not reported | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/display_mgr/src/display_mgr.cpp#renderFrame`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_display_step` |
| MRTM-SYS-014 | Read-only event log | not classified | none | — | not reported | `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_init`, `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_write10` |
| MRTM-SYS-015 | Event log capacity | not classified | none | — | not reported | `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_append`, `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_init`, `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_read` |
| MRTM-SYS-016 | Battery operation | not classified | `MRTM-HWI-011` | — | not reported | — |
| MRTM-SYS-017 | Allowed band | not classified | none | — | not reported | `10-src/firmware/components/config_mgr/src/config_mgr.c#config_mgr_load`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_init`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step` |
| MRTM-SYS-018 | Excursion end confirmation | not classified | none | — | not reported | `10-src/config/mrtm_config.h#off`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step` |
| MRTM-SYS-019 | Alarm comes back after silence | not classified | none | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SYS-020 | Clock drift | not classified | `MRTM-HWI-010` | — | not reported | `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_tick` |
| MRTM-SYS-021 | Event log integrity | not classified | none | — | not reported | `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_read`, `10-src/firmware/components/mrtm_common/src/mrtm_crc.c#mrtm_crc32` |
| MRTM-SYS-022 | Log capacity warning | not classified | none | — | not reported | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_append`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step` |
| MRTM-SYS-023 | Power restore event | not classified | none | — | not reported | `10-src/firmware/components/event_log/src/event_log.c#event_log_post`, `10-src/firmware/components/power_mon/src/power_mon.c#power_mon_isr`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now` |
| MRTM-SYS-024 | Early excursion alarm | not classified | `MRTM-HWI-001` | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step` |

#### Hardware item requirement → System Requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-HWI-001 | Probe conversion time | not classified | `MRTM-SYS-024` | — | not reported | — |
| MRTM-HWI-002 | Probe accuracy | not classified | none | — | not reported | — |
| MRTM-HWI-003 | Probe scratchpad check | not classified | `MRTM-SYS-012` | — | not reported | — |
| MRTM-HWI-004 | Buzzer loudness | not classified | none | — | not reported | — |
| MRTM-HWI-005 | Red indicator response | not classified | `MRTM-SYS-004` | — | not reported | — |
| MRTM-HWI-006 | Acknowledge contact | not classified | `MRTM-SYS-006` | — | not reported | — |
| MRTM-HWI-007 | Backup alarm timeout | not classified | none | — | not reported | — |
| MRTM-HWI-008 | Backup alarm hold-up | not classified | none | — | not reported | — |
| MRTM-HWI-009 | Display digit height | not classified | none | — | not reported | — |
| MRTM-HWI-010 | Clock drift | not classified | `MRTM-SYS-020` | — | not reported | — |
| MRTM-HWI-011 | Power path switch-over | not classified | `MRTM-SYS-016` | — | not reported | — |
| MRTM-HWI-012 | Battery endurance | not classified | none | — | not reported | — |
| MRTM-HWI-013 | Processor watchdog reset | not classified | none | — | not reported | — |

### Interface Requirement ⇄ Software system requirement

#### Interface Requirement → Software system requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-IFC-001 | Probe bus | not classified | none | — | not reported | `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_init`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_read` |
| MRTM-IFC-002 | Acknowledge input | not classified | `MRTM-SRS-007` | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_button_debounced`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_button_isr` |
| MRTM-IFC-003 | USB readout | not classified | `MRTM-SRS-014` | — | not reported | `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_init`, `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_read10`, `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_write10` |
| MRTM-IFC-004 | Display character height | not classified | none | — | not reported | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw` |

#### Software system requirement → Interface Requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SRS-001 | SRS sample period | not classified | none | — | not reported | — |
| MRTM-SRS-002 | SRS early alarm signal | not classified | none | — | not reported | — |
| MRTM-SRS-003 | SRS excursion confirmation | not classified | none | — | not reported | — |
| MRTM-SRS-004 | SRS excursion end | not classified | none | — | not reported | — |
| MRTM-SRS-005 | SRS invalid sample | not classified | none | — | not reported | — |
| MRTM-SRS-006 | SRS buzzer on | not classified | none | — | not reported | — |
| MRTM-SRS-007 | SRS buzzer off on acknowledge | not classified | `MRTM-IFC-002` | — | not reported | — |
| MRTM-SRS-008 | SRS alarm burst pattern | not classified | none | — | not reported | — |
| MRTM-SRS-009 | SRS excursion warning | not classified | none | — | not reported | — |
| MRTM-SRS-010 | SRS temperature shown | not classified | none | — | not reported | — |
| MRTM-SRS-011 | SRS status messages | not classified | none | — | not reported | — |
| MRTM-SRS-012 | SRS record stored twice | not classified | none | — | not reported | — |
| MRTM-SRS-013 | SRS log capacity | not classified | none | — | not reported | — |
| MRTM-SRS-014 | SRS read-only export | not classified | `MRTM-IFC-003` | — | not reported | — |
| MRTM-SRS-015 | SRS time stamp | not classified | none | — | not reported | — |
| MRTM-SRS-016 | SRS power events | not classified | none | — | not reported | — |
| MRTM-SRS-017 | SRS watchdog service stop | not classified | none | — | not reported | — |
| MRTM-SRS-018 | SRS power-up tests | not classified | none | — | not reported | — |
| MRTM-SRS-019 | SRS band integrity | not classified | none | — | not reported | — |

### Performance Requirement ⇄ Software system requirement

#### Performance Requirement → Software system requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-PRF-001 | Measurement accuracy | not classified | none | — | not reported | `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_to_tenths` |
| MRTM-PRF-002 | End-to-end alert time | not classified | `MRTM-SRS-006` | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-PRF-003 | Log readout time | not classified | `MRTM-SRS-014` | — | not reported | `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_read10` |
| MRTM-PRF-004 | Display refresh | not classified | `MRTM-SRS-010` | — | not reported | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#display_mgr_tick`, `10-src/firmware/components/display_mgr/src/display_mgr.cpp#renderFrame` |

#### Software system requirement → Performance Requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SRS-001 | SRS sample period | not classified | none | — | not reported | — |
| MRTM-SRS-002 | SRS early alarm signal | not classified | none | — | not reported | — |
| MRTM-SRS-003 | SRS excursion confirmation | not classified | none | — | not reported | — |
| MRTM-SRS-004 | SRS excursion end | not classified | none | — | not reported | — |
| MRTM-SRS-005 | SRS invalid sample | not classified | none | — | not reported | — |
| MRTM-SRS-006 | SRS buzzer on | not classified | `MRTM-PRF-002` | — | not reported | — |
| MRTM-SRS-007 | SRS buzzer off on acknowledge | not classified | none | — | not reported | — |
| MRTM-SRS-008 | SRS alarm burst pattern | not classified | none | — | not reported | — |
| MRTM-SRS-009 | SRS excursion warning | not classified | none | — | not reported | — |
| MRTM-SRS-010 | SRS temperature shown | not classified | `MRTM-PRF-004` | — | not reported | — |
| MRTM-SRS-011 | SRS status messages | not classified | none | — | not reported | — |
| MRTM-SRS-012 | SRS record stored twice | not classified | none | — | not reported | — |
| MRTM-SRS-013 | SRS log capacity | not classified | none | — | not reported | — |
| MRTM-SRS-014 | SRS read-only export | not classified | `MRTM-PRF-003` | — | not reported | — |
| MRTM-SRS-015 | SRS time stamp | not classified | none | — | not reported | — |
| MRTM-SRS-016 | SRS power events | not classified | none | — | not reported | — |
| MRTM-SRS-017 | SRS watchdog service stop | not classified | none | — | not reported | — |
| MRTM-SRS-018 | SRS power-up tests | not classified | none | — | not reported | — |
| MRTM-SRS-019 | SRS band integrity | not classified | none | — | not reported | — |

### Safety Requirement ⇄ Software system requirement

#### Safety Requirement → Software system requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SAF-001 | Buzzer loudness | not classified | none | — | not reported | — |
| MRTM-SAF-002 | Probe fault raises alert | not classified | none | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step` |
| MRTM-SAF-003 | Implausible sample | not classified | `MRTM-SRS-005` | — | not reported | `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_probe_fault`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_read` |
| MRTM-SAF-004 | Watchdog restart | not classified | none | — | not reported | `10-src/firmware/components/wdt_kicker/src/wdt_kicker.c#wdt_kicker_init` |
| MRTM-SAF-005 | Log power loss | not classified | `MRTM-SRS-016` | — | not reported | `10-src/firmware/components/power_mon/src/power_mon.c#power_mon_isr` |
| MRTM-SAF-006 | Alert survives restart | not classified | none | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_init`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_power_up` |
| MRTM-SAF-007 | Buzzer self-test | not classified | `MRTM-SRS-018` | — | not reported | `10-src/firmware/components/diagnostics/src/diagnostics.c#diagnostics_power_up` |
| MRTM-SAF-008 | Low battery alarm | not classified | `MRTM-SRS-016` | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step`, `10-src/firmware/components/power_mon/src/power_mon.c#power_mon_step` |
| MRTM-SAF-009 | Backup alarm on firmware silence | not classified | `MRTM-SRS-017` | — | not reported | `10-src/firmware/components/wdt_kicker/src/wdt_kicker.c#wdt_kicker_step` |
| MRTM-SAF-010 | Watchdog tied to the alarm service | not classified | `MRTM-SRS-017` | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_heartbeat`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step`, `10-src/firmware/components/wdt_kicker/src/wdt_kicker.c#wdt_kicker_step` |
| MRTM-SAF-011 | Fault tone differs from excursion tone | not classified | none | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SAF-012 | Probe calibration due | not classified | `MRTM-SRS-011` | — | not reported | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step` |
| MRTM-SAF-013 | Alarm on total power loss | not classified | none | — | not reported | — |
| MRTM-SAF-014 | Buzzer open-circuit detection | not classified | none | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SAF-015 | Diverse signal for buzzer fault | not classified | none | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SAF-016 | Show the band at power-up | not classified | `MRTM-SRS-011` | — | not reported | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#display_mgr_init`, `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/display_mgr/src/display_mgr.cpp#renderFrame`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_power_up` |
| MRTM-SAF-017 | Band integrity check | not classified | `MRTM-SRS-019` | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step`, `10-src/firmware/components/config_mgr/src/config_mgr.c#config_mgr_load`, `10-src/firmware/components/config_mgr/src/config_mgr.c#config_mgr_store`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_power_up`, `10-src/firmware/components/mrtm_common/src/mrtm_crc.c#mrtm_crc32` |
| MRTM-SAF-018 | Two copies of every record | not classified | `MRTM-SRS-012` | — | not reported | `10-src/firmware/components/event_log/src/event_log.c#event_log_step`, `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_append` |
| MRTM-SAF-019 | Stuck acknowledge button | not classified | none | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_button_debounced`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SAF-020 | Probe placement in the instructions | not classified | none | — | not reported | — |
| MRTM-SAF-021 | I2C bus recovery | not classified | none | — | not reported | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#recoverBus` |
| MRTM-SAF-022 | Clock stop detection | not classified | `MRTM-SRS-015` | — | not reported | `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_power_up`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_init` |
| MRTM-SAF-023 | Backup alarm power-up test | not classified | `MRTM-SRS-018` | — | not reported | `10-src/firmware/components/diagnostics/src/diagnostics.c#diagnostics_power_up` |

#### Software system requirement → Safety Requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SRS-001 | SRS sample period | not classified | none | — | not reported | — |
| MRTM-SRS-002 | SRS early alarm signal | not classified | none | — | not reported | — |
| MRTM-SRS-003 | SRS excursion confirmation | not classified | none | — | not reported | — |
| MRTM-SRS-004 | SRS excursion end | not classified | none | — | not reported | — |
| MRTM-SRS-005 | SRS invalid sample | not classified | `MRTM-SAF-003` | — | not reported | — |
| MRTM-SRS-006 | SRS buzzer on | not classified | none | — | not reported | — |
| MRTM-SRS-007 | SRS buzzer off on acknowledge | not classified | none | — | not reported | — |
| MRTM-SRS-008 | SRS alarm burst pattern | not classified | none | — | not reported | — |
| MRTM-SRS-009 | SRS excursion warning | not classified | none | — | not reported | — |
| MRTM-SRS-010 | SRS temperature shown | not classified | none | — | not reported | — |
| MRTM-SRS-011 | SRS status messages | not classified | `MRTM-SAF-012`, `MRTM-SAF-016` | — | not reported | — |
| MRTM-SRS-012 | SRS record stored twice | not classified | `MRTM-SAF-018` | — | not reported | — |
| MRTM-SRS-013 | SRS log capacity | not classified | none | — | not reported | — |
| MRTM-SRS-014 | SRS read-only export | not classified | none | — | not reported | — |
| MRTM-SRS-015 | SRS time stamp | not classified | `MRTM-SAF-022` | — | not reported | — |
| MRTM-SRS-016 | SRS power events | not classified | `MRTM-SAF-005`, `MRTM-SAF-008` | — | not reported | — |
| MRTM-SRS-017 | SRS watchdog service stop | not classified | `MRTM-SAF-009`, `MRTM-SAF-010` | — | not reported | — |
| MRTM-SRS-018 | SRS power-up tests | not classified | `MRTM-SAF-007`, `MRTM-SAF-023` | — | not reported | — |
| MRTM-SRS-019 | SRS band integrity | not classified | `MRTM-SAF-017` | — | not reported | — |

### System Requirement ⇄ Software system requirement

#### System Requirement → Software system requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SYS-001 | Sampling period | not classified | `MRTM-SRS-001` | — | not reported | `10-src/config/mrtm_config.h#off`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_read` |
| MRTM-SYS-002 | Excursion confirmation | not classified | `MRTM-SRS-003` | — | not reported | `10-src/config/mrtm_config.h#off`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step` |
| MRTM-SYS-003 | Buzzer on excursion | not classified | `MRTM-SRS-006`, `MRTM-SRS-008` | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take` |
| MRTM-SYS-004 | Red indicator on excursion | not classified | none | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SYS-005 | Warning on excursion | not classified | `MRTM-SRS-009` | — | not reported | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/display_mgr/src/display_mgr.cpp#renderFrame`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_display_step` |
| MRTM-SYS-006 | Acknowledge silences buzzer | not classified | `MRTM-SRS-007` | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_button_debounced`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_post`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take` |
| MRTM-SYS-007 | Warning stays while excursion is open | not classified | `MRTM-SRS-009` | — | not reported | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw` |
| MRTM-SYS-008 | Log excursion start | not classified | `MRTM-SRS-012`, `MRTM-SRS-015` | — | not reported | `10-src/firmware/components/event_log/src/event_log.c#event_log_post`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now` |
| MRTM-SYS-009 | Log excursion end | not classified | `MRTM-SRS-012` | — | not reported | `10-src/firmware/components/event_log/src/event_log.c#event_log_post`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_peak`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step` |
| MRTM-SYS-010 | Log acknowledgement | not classified | `MRTM-SRS-012` | — | not reported | `10-src/firmware/components/event_log/src/event_log.c#event_log_post`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now` |
| MRTM-SYS-011 | Display resolution | not classified | `MRTM-SRS-010` | — | not reported | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_to_tenths` |
| MRTM-SYS-012 | Probe fault detection | not classified | `MRTM-SRS-005` | — | not reported | `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step`, `10-src/firmware/components/mrtm_common/src/mrtm_crc.c#mrtm_crc8_maxim`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_probe_fault`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_read` |
| MRTM-SYS-013 | Probe fault message | not classified | `MRTM-SRS-011` | — | not reported | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/display_mgr/src/display_mgr.cpp#renderFrame`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_display_step` |
| MRTM-SYS-014 | Read-only event log | not classified | `MRTM-SRS-014` | — | not reported | `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_init`, `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_write10` |
| MRTM-SYS-015 | Event log capacity | not classified | `MRTM-SRS-013` | — | not reported | `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_append`, `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_init`, `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_read` |
| MRTM-SYS-016 | Battery operation | not classified | none | — | not reported | — |
| MRTM-SYS-017 | Allowed band | not classified | `MRTM-SRS-019` | — | not reported | `10-src/firmware/components/config_mgr/src/config_mgr.c#config_mgr_load`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_init`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step` |
| MRTM-SYS-018 | Excursion end confirmation | not classified | `MRTM-SRS-004` | — | not reported | `10-src/config/mrtm_config.h#off`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step` |
| MRTM-SYS-019 | Alarm comes back after silence | not classified | none | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SYS-020 | Clock drift | not classified | `MRTM-SRS-015` | — | not reported | `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_tick` |
| MRTM-SYS-021 | Event log integrity | not classified | none | — | not reported | `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_read`, `10-src/firmware/components/mrtm_common/src/mrtm_crc.c#mrtm_crc32` |
| MRTM-SYS-022 | Log capacity warning | not classified | `MRTM-SRS-011` | — | not reported | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_append`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step` |
| MRTM-SYS-023 | Power restore event | not classified | `MRTM-SRS-016` | — | not reported | `10-src/firmware/components/event_log/src/event_log.c#event_log_post`, `10-src/firmware/components/power_mon/src/power_mon.c#power_mon_isr`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now` |
| MRTM-SYS-024 | Early excursion alarm | not classified | `MRTM-SRS-002` | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step` |

#### Software system requirement → System Requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SRS-001 | SRS sample period | not classified | `MRTM-SYS-001` | — | not reported | — |
| MRTM-SRS-002 | SRS early alarm signal | not classified | `MRTM-SYS-024` | — | not reported | — |
| MRTM-SRS-003 | SRS excursion confirmation | not classified | `MRTM-SYS-002` | — | not reported | — |
| MRTM-SRS-004 | SRS excursion end | not classified | `MRTM-SYS-018` | — | not reported | — |
| MRTM-SRS-005 | SRS invalid sample | not classified | `MRTM-SYS-012` | — | not reported | — |
| MRTM-SRS-006 | SRS buzzer on | not classified | `MRTM-SYS-003` | — | not reported | — |
| MRTM-SRS-007 | SRS buzzer off on acknowledge | not classified | `MRTM-SYS-006` | — | not reported | — |
| MRTM-SRS-008 | SRS alarm burst pattern | not classified | `MRTM-SYS-003` | — | not reported | — |
| MRTM-SRS-009 | SRS excursion warning | not classified | `MRTM-SYS-005`, `MRTM-SYS-007` | — | not reported | — |
| MRTM-SRS-010 | SRS temperature shown | not classified | `MRTM-SYS-011` | — | not reported | — |
| MRTM-SRS-011 | SRS status messages | not classified | `MRTM-SYS-013`, `MRTM-SYS-022` | — | not reported | — |
| MRTM-SRS-012 | SRS record stored twice | not classified | `MRTM-SYS-008`, `MRTM-SYS-009`, `MRTM-SYS-010` | — | not reported | — |
| MRTM-SRS-013 | SRS log capacity | not classified | `MRTM-SYS-015` | — | not reported | — |
| MRTM-SRS-014 | SRS read-only export | not classified | `MRTM-SYS-014` | — | not reported | — |
| MRTM-SRS-015 | SRS time stamp | not classified | `MRTM-SYS-008`, `MRTM-SYS-020` | — | not reported | — |
| MRTM-SRS-016 | SRS power events | not classified | `MRTM-SYS-023` | — | not reported | — |
| MRTM-SRS-017 | SRS watchdog service stop | not classified | none | — | not reported | — |
| MRTM-SRS-018 | SRS power-up tests | not classified | none | — | not reported | — |
| MRTM-SRS-019 | SRS band integrity | not classified | `MRTM-SYS-017` | — | not reported | — |

### Software system requirement ⇄ Sensor item requirement

#### Software system requirement → Sensor item requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SRS-001 | SRS sample period | not classified | `MRTM-SNI-001` | — | not reported | — |
| MRTM-SRS-002 | SRS early alarm signal | not classified | `MRTM-SNI-001` | — | not reported | — |
| MRTM-SRS-003 | SRS excursion confirmation | not classified | none | — | not reported | — |
| MRTM-SRS-004 | SRS excursion end | not classified | none | — | not reported | — |
| MRTM-SRS-005 | SRS invalid sample | not classified | `MRTM-SNI-002` | — | not reported | — |
| MRTM-SRS-006 | SRS buzzer on | not classified | none | — | not reported | — |
| MRTM-SRS-007 | SRS buzzer off on acknowledge | not classified | none | — | not reported | — |
| MRTM-SRS-008 | SRS alarm burst pattern | not classified | none | — | not reported | — |
| MRTM-SRS-009 | SRS excursion warning | not classified | none | — | not reported | — |
| MRTM-SRS-010 | SRS temperature shown | not classified | none | — | not reported | — |
| MRTM-SRS-011 | SRS status messages | not classified | none | — | not reported | — |
| MRTM-SRS-012 | SRS record stored twice | not classified | none | — | not reported | — |
| MRTM-SRS-013 | SRS log capacity | not classified | none | — | not reported | — |
| MRTM-SRS-014 | SRS read-only export | not classified | none | — | not reported | — |
| MRTM-SRS-015 | SRS time stamp | not classified | none | — | not reported | — |
| MRTM-SRS-016 | SRS power events | not classified | none | — | not reported | — |
| MRTM-SRS-017 | SRS watchdog service stop | not classified | none | — | not reported | — |
| MRTM-SRS-018 | SRS power-up tests | not classified | none | — | not reported | — |
| MRTM-SRS-019 | SRS band integrity | not classified | none | — | not reported | — |

#### Sensor item requirement → Software system requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SNI-001 | Sensor item conversion start | not classified | `MRTM-SRS-001`, `MRTM-SRS-002` | — | not reported | `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_read` |
| MRTM-SNI-002 | Sensor item invalid sample | not classified | `MRTM-SRS-005` | — | not reported | `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_probe_fault` |

### Software system requirement ⇄ Excursion item requirement

#### Software system requirement → Excursion item requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SRS-001 | SRS sample period | not classified | none | — | not reported | — |
| MRTM-SRS-002 | SRS early alarm signal | not classified | `MRTM-EXI-001` | — | not reported | — |
| MRTM-SRS-003 | SRS excursion confirmation | not classified | `MRTM-EXI-002` | — | not reported | — |
| MRTM-SRS-004 | SRS excursion end | not classified | `MRTM-EXI-003` | — | not reported | — |
| MRTM-SRS-005 | SRS invalid sample | not classified | none | — | not reported | — |
| MRTM-SRS-006 | SRS buzzer on | not classified | none | — | not reported | — |
| MRTM-SRS-007 | SRS buzzer off on acknowledge | not classified | none | — | not reported | — |
| MRTM-SRS-008 | SRS alarm burst pattern | not classified | none | — | not reported | — |
| MRTM-SRS-009 | SRS excursion warning | not classified | none | — | not reported | — |
| MRTM-SRS-010 | SRS temperature shown | not classified | none | — | not reported | — |
| MRTM-SRS-011 | SRS status messages | not classified | none | — | not reported | — |
| MRTM-SRS-012 | SRS record stored twice | not classified | none | — | not reported | — |
| MRTM-SRS-013 | SRS log capacity | not classified | none | — | not reported | — |
| MRTM-SRS-014 | SRS read-only export | not classified | none | — | not reported | — |
| MRTM-SRS-015 | SRS time stamp | not classified | none | — | not reported | — |
| MRTM-SRS-016 | SRS power events | not classified | none | — | not reported | — |
| MRTM-SRS-017 | SRS watchdog service stop | not classified | none | — | not reported | — |
| MRTM-SRS-018 | SRS power-up tests | not classified | none | — | not reported | — |
| MRTM-SRS-019 | SRS band integrity | not classified | none | — | not reported | — |

#### Excursion item requirement → Software system requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-EXI-001 | Excursion item early report | not classified | `MRTM-SRS-002` | — | not reported | `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step` |
| MRTM-EXI-002 | Excursion item confirmation | not classified | `MRTM-SRS-003` | — | not reported | `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step` |
| MRTM-EXI-003 | Excursion item end | not classified | `MRTM-SRS-004` | — | not reported | `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step` |

### Software system requirement ⇄ Alarm item requirement

#### Software system requirement → Alarm item requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SRS-001 | SRS sample period | not classified | none | — | not reported | — |
| MRTM-SRS-002 | SRS early alarm signal | not classified | `MRTM-ALI-001` | — | not reported | — |
| MRTM-SRS-003 | SRS excursion confirmation | not classified | none | — | not reported | — |
| MRTM-SRS-004 | SRS excursion end | not classified | none | — | not reported | — |
| MRTM-SRS-005 | SRS invalid sample | not classified | none | — | not reported | — |
| MRTM-SRS-006 | SRS buzzer on | not classified | `MRTM-ALI-002` | — | not reported | — |
| MRTM-SRS-007 | SRS buzzer off on acknowledge | not classified | `MRTM-ALI-003` | — | not reported | — |
| MRTM-SRS-008 | SRS alarm burst pattern | not classified | none | — | not reported | — |
| MRTM-SRS-009 | SRS excursion warning | not classified | none | — | not reported | — |
| MRTM-SRS-010 | SRS temperature shown | not classified | none | — | not reported | — |
| MRTM-SRS-011 | SRS status messages | not classified | none | — | not reported | — |
| MRTM-SRS-012 | SRS record stored twice | not classified | none | — | not reported | — |
| MRTM-SRS-013 | SRS log capacity | not classified | none | — | not reported | — |
| MRTM-SRS-014 | SRS read-only export | not classified | none | — | not reported | — |
| MRTM-SRS-015 | SRS time stamp | not classified | none | — | not reported | — |
| MRTM-SRS-016 | SRS power events | not classified | none | — | not reported | — |
| MRTM-SRS-017 | SRS watchdog service stop | not classified | `MRTM-ALI-004` | — | not reported | — |
| MRTM-SRS-018 | SRS power-up tests | not classified | none | — | not reported | — |
| MRTM-SRS-019 | SRS band integrity | not classified | none | — | not reported | — |

#### Alarm item requirement → Software system requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-ALI-001 | Alarm item early signal | not classified | `MRTM-SRS-002` | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take` |
| MRTM-ALI-002 | Alarm item buzzer on | not classified | `MRTM-SRS-006` | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-ALI-003 | Alarm item buzzer off | not classified | `MRTM-SRS-007` | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_button_debounced` |
| MRTM-ALI-004 | Alarm item heartbeat | not classified | `MRTM-SRS-017` | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_heartbeat` |

### Software system requirement ⇄ Display item requirement

#### Software system requirement → Display item requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SRS-001 | SRS sample period | not classified | none | — | not reported | — |
| MRTM-SRS-002 | SRS early alarm signal | not classified | none | — | not reported | — |
| MRTM-SRS-003 | SRS excursion confirmation | not classified | none | — | not reported | — |
| MRTM-SRS-004 | SRS excursion end | not classified | none | — | not reported | — |
| MRTM-SRS-005 | SRS invalid sample | not classified | none | — | not reported | — |
| MRTM-SRS-006 | SRS buzzer on | not classified | none | — | not reported | — |
| MRTM-SRS-007 | SRS buzzer off on acknowledge | not classified | none | — | not reported | — |
| MRTM-SRS-008 | SRS alarm burst pattern | not classified | none | — | not reported | — |
| MRTM-SRS-009 | SRS excursion warning | not classified | `MRTM-DSI-001` | — | not reported | — |
| MRTM-SRS-010 | SRS temperature shown | not classified | `MRTM-DSI-002` | — | not reported | — |
| MRTM-SRS-011 | SRS status messages | not classified | `MRTM-DSI-001` | — | not reported | — |
| MRTM-SRS-012 | SRS record stored twice | not classified | none | — | not reported | — |
| MRTM-SRS-013 | SRS log capacity | not classified | none | — | not reported | — |
| MRTM-SRS-014 | SRS read-only export | not classified | none | — | not reported | — |
| MRTM-SRS-015 | SRS time stamp | not classified | none | — | not reported | — |
| MRTM-SRS-016 | SRS power events | not classified | none | — | not reported | — |
| MRTM-SRS-017 | SRS watchdog service stop | not classified | none | — | not reported | — |
| MRTM-SRS-018 | SRS power-up tests | not classified | none | — | not reported | — |
| MRTM-SRS-019 | SRS band integrity | not classified | none | — | not reported | — |

#### Display item requirement → Software system requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-DSI-001 | Display item redraw | not classified | `MRTM-SRS-009`, `MRTM-SRS-011` | — | not reported | `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_display_step` |
| MRTM-DSI-002 | Display item temperature | not classified | `MRTM-SRS-010` | — | not reported | `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step` |

### Software system requirement ⇄ Log item requirement

#### Software system requirement → Log item requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SRS-001 | SRS sample period | not classified | none | — | not reported | — |
| MRTM-SRS-002 | SRS early alarm signal | not classified | none | — | not reported | — |
| MRTM-SRS-003 | SRS excursion confirmation | not classified | none | — | not reported | — |
| MRTM-SRS-004 | SRS excursion end | not classified | none | — | not reported | — |
| MRTM-SRS-005 | SRS invalid sample | not classified | none | — | not reported | — |
| MRTM-SRS-006 | SRS buzzer on | not classified | none | — | not reported | — |
| MRTM-SRS-007 | SRS buzzer off on acknowledge | not classified | none | — | not reported | — |
| MRTM-SRS-008 | SRS alarm burst pattern | not classified | none | — | not reported | — |
| MRTM-SRS-009 | SRS excursion warning | not classified | none | — | not reported | — |
| MRTM-SRS-010 | SRS temperature shown | not classified | none | — | not reported | — |
| MRTM-SRS-011 | SRS status messages | not classified | none | — | not reported | — |
| MRTM-SRS-012 | SRS record stored twice | not classified | `MRTM-LGI-001` | — | not reported | — |
| MRTM-SRS-013 | SRS log capacity | not classified | `MRTM-LGI-002` | — | not reported | — |
| MRTM-SRS-014 | SRS read-only export | not classified | none | — | not reported | — |
| MRTM-SRS-015 | SRS time stamp | not classified | `MRTM-LGI-003` | — | not reported | — |
| MRTM-SRS-016 | SRS power events | not classified | none | — | not reported | — |
| MRTM-SRS-017 | SRS watchdog service stop | not classified | none | — | not reported | — |
| MRTM-SRS-018 | SRS power-up tests | not classified | none | — | not reported | — |
| MRTM-SRS-019 | SRS band integrity | not classified | none | — | not reported | — |

#### Log item requirement → Software system requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-LGI-001 | Log item double write | not classified | `MRTM-SRS-012` | — | not reported | `10-src/firmware/components/event_log/src/event_log.c#event_log_step` |
| MRTM-LGI-002 | Log item ring | not classified | `MRTM-SRS-013` | — | not reported | `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_init` |
| MRTM-LGI-003 | Log item time stamp | not classified | `MRTM-SRS-015` | — | not reported | — |

### Software system requirement ⇄ Usb item requirement

#### Software system requirement → Usb item requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SRS-001 | SRS sample period | not classified | none | — | not reported | — |
| MRTM-SRS-002 | SRS early alarm signal | not classified | none | — | not reported | — |
| MRTM-SRS-003 | SRS excursion confirmation | not classified | none | — | not reported | — |
| MRTM-SRS-004 | SRS excursion end | not classified | none | — | not reported | — |
| MRTM-SRS-005 | SRS invalid sample | not classified | none | — | not reported | — |
| MRTM-SRS-006 | SRS buzzer on | not classified | none | — | not reported | — |
| MRTM-SRS-007 | SRS buzzer off on acknowledge | not classified | none | — | not reported | — |
| MRTM-SRS-008 | SRS alarm burst pattern | not classified | none | — | not reported | — |
| MRTM-SRS-009 | SRS excursion warning | not classified | none | — | not reported | — |
| MRTM-SRS-010 | SRS temperature shown | not classified | none | — | not reported | — |
| MRTM-SRS-011 | SRS status messages | not classified | none | — | not reported | — |
| MRTM-SRS-012 | SRS record stored twice | not classified | none | — | not reported | — |
| MRTM-SRS-013 | SRS log capacity | not classified | none | — | not reported | — |
| MRTM-SRS-014 | SRS read-only export | not classified | `MRTM-USI-001`, `MRTM-USI-002` | — | not reported | — |
| MRTM-SRS-015 | SRS time stamp | not classified | none | — | not reported | — |
| MRTM-SRS-016 | SRS power events | not classified | none | — | not reported | — |
| MRTM-SRS-017 | SRS watchdog service stop | not classified | none | — | not reported | — |
| MRTM-SRS-018 | SRS power-up tests | not classified | none | — | not reported | — |
| MRTM-SRS-019 | SRS band integrity | not classified | none | — | not reported | — |

#### Usb item requirement → Software system requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-USI-001 | USB item read-only volume | not classified | `MRTM-SRS-014` | — | not reported | `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_init` |
| MRTM-USI-002 | USB item write inhibit | not classified | `MRTM-SRS-014` | — | not reported | `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_write10` |

### Software system requirement ⇄ Power item requirement

#### Software system requirement → Power item requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SRS-001 | SRS sample period | not classified | none | — | not reported | — |
| MRTM-SRS-002 | SRS early alarm signal | not classified | none | — | not reported | — |
| MRTM-SRS-003 | SRS excursion confirmation | not classified | none | — | not reported | — |
| MRTM-SRS-004 | SRS excursion end | not classified | none | — | not reported | — |
| MRTM-SRS-005 | SRS invalid sample | not classified | none | — | not reported | — |
| MRTM-SRS-006 | SRS buzzer on | not classified | none | — | not reported | — |
| MRTM-SRS-007 | SRS buzzer off on acknowledge | not classified | none | — | not reported | — |
| MRTM-SRS-008 | SRS alarm burst pattern | not classified | none | — | not reported | — |
| MRTM-SRS-009 | SRS excursion warning | not classified | none | — | not reported | — |
| MRTM-SRS-010 | SRS temperature shown | not classified | none | — | not reported | — |
| MRTM-SRS-011 | SRS status messages | not classified | none | — | not reported | — |
| MRTM-SRS-012 | SRS record stored twice | not classified | none | — | not reported | — |
| MRTM-SRS-013 | SRS log capacity | not classified | none | — | not reported | — |
| MRTM-SRS-014 | SRS read-only export | not classified | none | — | not reported | — |
| MRTM-SRS-015 | SRS time stamp | not classified | none | — | not reported | — |
| MRTM-SRS-016 | SRS power events | not classified | `MRTM-PWI-001`, `MRTM-PWI-002` | — | not reported | — |
| MRTM-SRS-017 | SRS watchdog service stop | not classified | none | — | not reported | — |
| MRTM-SRS-018 | SRS power-up tests | not classified | none | — | not reported | — |
| MRTM-SRS-019 | SRS band integrity | not classified | none | — | not reported | — |

#### Power item requirement → Software system requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-PWI-001 | Power item mains events | not classified | `MRTM-SRS-016` | — | not reported | `10-src/firmware/components/power_mon/src/power_mon.c#power_mon_isr` |
| MRTM-PWI-002 | Power item battery low | not classified | `MRTM-SRS-016` | — | not reported | `10-src/firmware/components/power_mon/src/power_mon.c#power_mon_step` |

### Software system requirement ⇄ Supervisor item requirement

#### Software system requirement → Supervisor item requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SRS-001 | SRS sample period | not classified | none | — | not reported | — |
| MRTM-SRS-002 | SRS early alarm signal | not classified | none | — | not reported | — |
| MRTM-SRS-003 | SRS excursion confirmation | not classified | none | — | not reported | — |
| MRTM-SRS-004 | SRS excursion end | not classified | none | — | not reported | — |
| MRTM-SRS-005 | SRS invalid sample | not classified | none | — | not reported | — |
| MRTM-SRS-006 | SRS buzzer on | not classified | none | — | not reported | — |
| MRTM-SRS-007 | SRS buzzer off on acknowledge | not classified | none | — | not reported | — |
| MRTM-SRS-008 | SRS alarm burst pattern | not classified | none | — | not reported | — |
| MRTM-SRS-009 | SRS excursion warning | not classified | none | — | not reported | — |
| MRTM-SRS-010 | SRS temperature shown | not classified | none | — | not reported | — |
| MRTM-SRS-011 | SRS status messages | not classified | none | — | not reported | — |
| MRTM-SRS-012 | SRS record stored twice | not classified | none | — | not reported | — |
| MRTM-SRS-013 | SRS log capacity | not classified | none | — | not reported | — |
| MRTM-SRS-014 | SRS read-only export | not classified | none | — | not reported | — |
| MRTM-SRS-015 | SRS time stamp | not classified | none | — | not reported | — |
| MRTM-SRS-016 | SRS power events | not classified | none | — | not reported | — |
| MRTM-SRS-017 | SRS watchdog service stop | not classified | `MRTM-SVI-001` | — | not reported | — |
| MRTM-SRS-018 | SRS power-up tests | not classified | `MRTM-SVI-002` | — | not reported | — |
| MRTM-SRS-019 | SRS band integrity | not classified | `MRTM-SVI-003` | — | not reported | — |

#### Supervisor item requirement → Software system requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SVI-001 | Supervisor item pulse stop | not classified | `MRTM-SRS-017` | — | not reported | `10-src/firmware/components/wdt_kicker/src/wdt_kicker.c#wdt_kicker_step` |
| MRTM-SVI-002 | Supervisor item power-up tests | not classified | `MRTM-SRS-018` | — | not reported | `10-src/firmware/components/diagnostics/src/diagnostics.c#diagnostics_power_up` |
| MRTM-SVI-003 | Supervisor item band check | not classified | `MRTM-SRS-019` | — | not reported | `10-src/firmware/components/config_mgr/src/config_mgr.c#config_mgr_load` |

### Sensor item requirement ⇄ Sensor sampler requirement

#### Sensor item requirement → Sensor sampler requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SNI-001 | Sensor item conversion start | not classified | `MRTM-SMP-001` | — | not reported | `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_read` |
| MRTM-SNI-002 | Sensor item invalid sample | not classified | `MRTM-SMP-002` | — | not reported | `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_probe_fault` |

#### Sensor sampler requirement → Sensor item requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SMP-001 | Sampler read contract | not classified | `MRTM-SNI-001` | — | not reported | `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_read` |
| MRTM-SMP-002 | Sampler invalid flag | not classified | `MRTM-SNI-002` | — | not reported | `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_probe_fault` |

### Excursion item requirement ⇄ Limit evaluator requirement

#### Excursion item requirement → Limit evaluator requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-EXI-001 | Excursion item early report | not classified | `MRTM-LEV-001` | — | not reported | `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step` |
| MRTM-EXI-002 | Excursion item confirmation | not classified | `MRTM-LEV-002` | — | not reported | `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step` |
| MRTM-EXI-003 | Excursion item end | not classified | `MRTM-LEV-003` | — | not reported | `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step` |

#### Limit evaluator requirement → Excursion item requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-LEV-001 | Evaluator early event | not classified | `MRTM-EXI-001` | — | not reported | `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step` |
| MRTM-LEV-002 | Evaluator confirm event | not classified | `MRTM-EXI-002` | — | not reported | `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step` |
| MRTM-LEV-003 | Evaluator end event | not classified | `MRTM-EXI-003` | — | not reported | `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step` |

### Alarm item requirement ⇄ Alarm mgr requirement

#### Alarm item requirement → Alarm mgr requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-ALI-001 | Alarm item early signal | not classified | `MRTM-AMG-001` | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take` |
| MRTM-ALI-002 | Alarm item buzzer on | not classified | `MRTM-AMG-002` | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-ALI-003 | Alarm item buzzer off | not classified | `MRTM-AMG-003` | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_button_debounced` |
| MRTM-ALI-004 | Alarm item heartbeat | not classified | `MRTM-AMG-004` | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_heartbeat` |

#### Alarm mgr requirement → Alarm item requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-AMG-001 | Alarm manager early output | not classified | `MRTM-ALI-001` | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take` |
| MRTM-AMG-002 | Alarm manager buzzer on | not classified | `MRTM-ALI-002` | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-AMG-003 | Alarm manager acknowledge | not classified | `MRTM-ALI-003` | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_button_debounced` |
| MRTM-AMG-004 | Alarm manager heartbeat | not classified | `MRTM-ALI-004` | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_heartbeat` |

### Display item requirement ⇄ Display mgr requirement

#### Display item requirement → Display mgr requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-DSI-001 | Display item redraw | not classified | `MRTM-DMG-001` | — | not reported | `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_display_step` |
| MRTM-DSI-002 | Display item temperature | not classified | `MRTM-DMG-002` | — | not reported | `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step` |

#### Display mgr requirement → Display item requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-DMG-001 | Display manager messages | not classified | `MRTM-DSI-001` | — | not reported | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw` |
| MRTM-DMG-002 | Display manager digits | not classified | `MRTM-DSI-002` | — | not reported | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#renderFrame` |

### Log item requirement ⇄ Event log requirement

#### Log item requirement → Event log requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-LGI-001 | Log item double write | not classified | `MRTM-EVL-001` | — | not reported | `10-src/firmware/components/event_log/src/event_log.c#event_log_step` |
| MRTM-LGI-002 | Log item ring | not classified | none | — | not reported | `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_init` |
| MRTM-LGI-003 | Log item time stamp | not classified | `MRTM-EVL-002` | — | not reported | — |

#### Event log requirement → Log item requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-EVL-001 | Event log checksum | not classified | `MRTM-LGI-001` | — | not reported | `10-src/firmware/components/event_log/src/event_log.c#event_log_step` |
| MRTM-EVL-002 | Event log time stamp | not classified | `MRTM-LGI-003` | — | not reported | `10-src/firmware/components/event_log/src/event_log.c#event_log_post` |

### Log item requirement ⇄ History ring requirement

#### Log item requirement → History ring requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-LGI-001 | Log item double write | not classified | `MRTM-HRG-001` | — | not reported | `10-src/firmware/components/event_log/src/event_log.c#event_log_step` |
| MRTM-LGI-002 | Log item ring | not classified | `MRTM-HRG-002` | — | not reported | `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_init` |
| MRTM-LGI-003 | Log item time stamp | not classified | none | — | not reported | — |

#### History ring requirement → Log item requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-HRG-001 | History ring two copies | not classified | `MRTM-LGI-001` | — | not reported | `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_append` |
| MRTM-HRG-002 | History ring wrap | not classified | `MRTM-LGI-002` | — | not reported | `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_init` |

### Log item requirement ⇄ Rtc clock requirement

#### Log item requirement → Rtc clock requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-LGI-001 | Log item double write | not classified | none | — | not reported | `10-src/firmware/components/event_log/src/event_log.c#event_log_step` |
| MRTM-LGI-002 | Log item ring | not classified | none | — | not reported | `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_init` |
| MRTM-LGI-003 | Log item time stamp | not classified | `MRTM-RTK-001` | — | not reported | — |

#### Rtc clock requirement → Log item requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-RTK-001 | RTC clock second | not classified | `MRTM-LGI-003` | — | not reported | `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now` |

### Usb item requirement ⇄ Usb export requirement

#### Usb item requirement → Usb export requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-USI-001 | USB item read-only volume | not classified | `MRTM-UXP-001` | — | not reported | `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_init` |
| MRTM-USI-002 | USB item write inhibit | not classified | `MRTM-UXP-002` | — | not reported | `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_write10` |

#### Usb export requirement → Usb item requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-UXP-001 | USB export read-only file | not classified | `MRTM-USI-001` | — | not reported | `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_init` |
| MRTM-UXP-002 | USB export write refusal | not classified | `MRTM-USI-002` | — | not reported | `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_write10` |

### Power item requirement ⇄ Power mon requirement

#### Power item requirement → Power mon requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-PWI-001 | Power item mains events | not classified | `MRTM-PMN-001` | — | not reported | `10-src/firmware/components/power_mon/src/power_mon.c#power_mon_isr` |
| MRTM-PWI-002 | Power item battery low | not classified | `MRTM-PMN-002` | — | not reported | `10-src/firmware/components/power_mon/src/power_mon.c#power_mon_step` |

#### Power mon requirement → Power item requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-PMN-001 | Power monitor edge | not classified | `MRTM-PWI-001` | — | not reported | `10-src/firmware/components/power_mon/src/power_mon.c#power_mon_isr` |
| MRTM-PMN-002 | Power monitor battery | not classified | `MRTM-PWI-002` | — | not reported | `10-src/firmware/components/power_mon/src/power_mon.c#power_mon_step` |

### Supervisor item requirement ⇄ Wdt kicker requirement

#### Supervisor item requirement → Wdt kicker requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SVI-001 | Supervisor item pulse stop | not classified | `MRTM-WDK-001` | — | not reported | `10-src/firmware/components/wdt_kicker/src/wdt_kicker.c#wdt_kicker_step` |
| MRTM-SVI-002 | Supervisor item power-up tests | not classified | none | — | not reported | `10-src/firmware/components/diagnostics/src/diagnostics.c#diagnostics_power_up` |
| MRTM-SVI-003 | Supervisor item band check | not classified | none | — | not reported | `10-src/firmware/components/config_mgr/src/config_mgr.c#config_mgr_load` |

#### Wdt kicker requirement → Supervisor item requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-WDK-001 | Watchdog kicker stop | not classified | `MRTM-SVI-001` | — | not reported | `10-src/firmware/components/wdt_kicker/src/wdt_kicker.c#wdt_kicker_step` |

### Supervisor item requirement ⇄ Diagnostics requirement

#### Supervisor item requirement → Diagnostics requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SVI-001 | Supervisor item pulse stop | not classified | none | — | not reported | `10-src/firmware/components/wdt_kicker/src/wdt_kicker.c#wdt_kicker_step` |
| MRTM-SVI-002 | Supervisor item power-up tests | not classified | `MRTM-DGN-001` | — | not reported | `10-src/firmware/components/diagnostics/src/diagnostics.c#diagnostics_power_up` |
| MRTM-SVI-003 | Supervisor item band check | not classified | none | — | not reported | `10-src/firmware/components/config_mgr/src/config_mgr.c#config_mgr_load` |

#### Diagnostics requirement → Supervisor item requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-DGN-001 | Diagnostics power-up verdict | not classified | `MRTM-SVI-002` | — | not reported | `10-src/firmware/components/diagnostics/src/diagnostics.c#diagnostics_power_up` |

### Supervisor item requirement ⇄ Config mgr requirement

#### Supervisor item requirement → Config mgr requirement (parent to children)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-SVI-001 | Supervisor item pulse stop | not classified | none | — | not reported | `10-src/firmware/components/wdt_kicker/src/wdt_kicker.c#wdt_kicker_step` |
| MRTM-SVI-002 | Supervisor item power-up tests | not classified | none | — | not reported | `10-src/firmware/components/diagnostics/src/diagnostics.c#diagnostics_power_up` |
| MRTM-SVI-003 | Supervisor item band check | not classified | `MRTM-CFG-001` | — | not reported | `10-src/firmware/components/config_mgr/src/config_mgr.c#config_mgr_load` |

#### Config mgr requirement → Supervisor item requirement (child to parents)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-CFG-001 | Config manager CRC refusal | not classified | `MRTM-SVI-003` | — | not reported | `10-src/firmware/components/config_mgr/src/config_mgr.c#config_mgr_load` |

### Requirements ⇄ Allocated items

**Objective:** ARP4754A 5.3, *allocation of requirements to items*; and DO-178C Table A-2 objective 1, *high-level requirements are developed* — from the system requirements allocated to software.

#### Requirements → Allocated items (requirement to allocated item)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| MRTM-ALI-001 | Alarm item early signal | not classified | none | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take` |
| MRTM-ALI-002 | Alarm item buzzer on | not classified | none | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-ALI-003 | Alarm item buzzer off | not classified | none | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_button_debounced` |
| MRTM-ALI-004 | Alarm item heartbeat | not classified | none | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_heartbeat` |
| MRTM-AMG-001 | Alarm manager early output | not classified | none | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take` |
| MRTM-AMG-002 | Alarm manager buzzer on | not classified | none | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-AMG-003 | Alarm manager acknowledge | not classified | none | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_button_debounced` |
| MRTM-AMG-004 | Alarm manager heartbeat | not classified | none | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_heartbeat` |
| MRTM-CFG-001 | Config manager CRC refusal | not classified | none | — | not reported | `10-src/firmware/components/config_mgr/src/config_mgr.c#config_mgr_load` |
| MRTM-DGN-001 | Diagnostics power-up verdict | not classified | none | — | not reported | `10-src/firmware/components/diagnostics/src/diagnostics.c#diagnostics_power_up` |
| MRTM-DMG-001 | Display manager messages | not classified | none | — | not reported | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw` |
| MRTM-DMG-002 | Display manager digits | not classified | none | — | not reported | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#renderFrame` |
| MRTM-DSI-001 | Display item redraw | not classified | none | — | not reported | `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_display_step` |
| MRTM-DSI-002 | Display item temperature | not classified | none | — | not reported | `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step` |
| MRTM-ENV-001 | Battery endurance | not classified | none | — | not reported | — |
| MRTM-ENV-002 | Ambient temperature | not classified | none | — | not reported | — |
| MRTM-ENV-003 | Humidity | not classified | none | — | not reported | — |
| MRTM-ENV-004 | Probe environment | not classified | none | — | not reported | — |
| MRTM-EVL-001 | Event log checksum | not classified | none | — | not reported | `10-src/firmware/components/event_log/src/event_log.c#event_log_step` |
| MRTM-EVL-002 | Event log time stamp | not classified | none | — | not reported | `10-src/firmware/components/event_log/src/event_log.c#event_log_post` |
| MRTM-EXI-001 | Excursion item early report | not classified | none | — | not reported | `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step` |
| MRTM-EXI-002 | Excursion item confirmation | not classified | none | — | not reported | `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step` |
| MRTM-EXI-003 | Excursion item end | not classified | none | — | not reported | `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step` |
| MRTM-HRG-001 | History ring two copies | not classified | none | — | not reported | `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_append` |
| MRTM-HRG-002 | History ring wrap | not classified | none | — | not reported | `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_init` |
| MRTM-HWI-001 | Probe conversion time | not classified | none | — | not reported | — |
| MRTM-HWI-002 | Probe accuracy | not classified | none | — | not reported | — |
| MRTM-HWI-003 | Probe scratchpad check | not classified | none | — | not reported | — |
| MRTM-HWI-004 | Buzzer loudness | not classified | none | — | not reported | — |
| MRTM-HWI-005 | Red indicator response | not classified | none | — | not reported | — |
| MRTM-HWI-006 | Acknowledge contact | not classified | none | — | not reported | — |
| MRTM-HWI-007 | Backup alarm timeout | not classified | none | — | not reported | — |
| MRTM-HWI-008 | Backup alarm hold-up | not classified | none | — | not reported | — |
| MRTM-HWI-009 | Display digit height | not classified | none | — | not reported | — |
| MRTM-HWI-010 | Clock drift | not classified | none | — | not reported | — |
| MRTM-HWI-011 | Power path switch-over | not classified | none | — | not reported | — |
| MRTM-HWI-012 | Battery endurance | not classified | none | — | not reported | — |
| MRTM-HWI-013 | Processor watchdog reset | not classified | none | — | not reported | — |
| MRTM-IFC-001 | Probe bus | not classified | none | — | not reported | `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_init`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_read` |
| MRTM-IFC-002 | Acknowledge input | not classified | none | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_button_debounced`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_button_isr` |
| MRTM-IFC-003 | USB readout | not classified | none | — | not reported | `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_init`, `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_read10`, `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_write10` |
| MRTM-IFC-004 | Display character height | not classified | none | — | not reported | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw` |
| MRTM-LEV-001 | Evaluator early event | not classified | none | — | not reported | `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step` |
| MRTM-LEV-002 | Evaluator confirm event | not classified | none | — | not reported | `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step` |
| MRTM-LEV-003 | Evaluator end event | not classified | none | — | not reported | `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step` |
| MRTM-LGI-001 | Log item double write | not classified | none | — | not reported | `10-src/firmware/components/event_log/src/event_log.c#event_log_step` |
| MRTM-LGI-002 | Log item ring | not classified | none | — | not reported | `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_init` |
| MRTM-LGI-003 | Log item time stamp | not classified | none | — | not reported | — |
| MRTM-MNT-001 | Probe replacement | not classified | none | — | not reported | — |
| MRTM-MNT-002 | Battery level | not classified | none | — | not reported | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step` |
| MRTM-MNT-003 | Firmware version | not classified | none | — | not reported | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/display_mgr/src/display_mgr.cpp#renderFrame`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_power_up` |
| MRTM-PMN-001 | Power monitor edge | not classified | none | — | not reported | `10-src/firmware/components/power_mon/src/power_mon.c#power_mon_isr` |
| MRTM-PMN-002 | Power monitor battery | not classified | none | — | not reported | `10-src/firmware/components/power_mon/src/power_mon.c#power_mon_step` |
| MRTM-PRF-001 | Measurement accuracy | not classified | none | — | not reported | `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_to_tenths` |
| MRTM-PRF-002 | End-to-end alert time | not classified | none | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-PRF-003 | Log readout time | not classified | none | — | not reported | `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_read10` |
| MRTM-PRF-004 | Display refresh | not classified | none | — | not reported | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#display_mgr_tick`, `10-src/firmware/components/display_mgr/src/display_mgr.cpp#renderFrame` |
| MRTM-PWI-001 | Power item mains events | not classified | none | — | not reported | `10-src/firmware/components/power_mon/src/power_mon.c#power_mon_isr` |
| MRTM-PWI-002 | Power item battery low | not classified | none | — | not reported | `10-src/firmware/components/power_mon/src/power_mon.c#power_mon_step` |
| MRTM-RTK-001 | RTC clock second | not classified | none | — | not reported | `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now` |
| MRTM-SAF-001 | Buzzer loudness | not classified | none | — | not reported | — |
| MRTM-SAF-002 | Probe fault raises alert | not classified | none | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step` |
| MRTM-SAF-003 | Implausible sample | not classified | none | — | not reported | `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_probe_fault`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_read` |
| MRTM-SAF-004 | Watchdog restart | not classified | none | — | not reported | `10-src/firmware/components/wdt_kicker/src/wdt_kicker.c#wdt_kicker_init` |
| MRTM-SAF-005 | Log power loss | not classified | none | — | not reported | `10-src/firmware/components/power_mon/src/power_mon.c#power_mon_isr` |
| MRTM-SAF-006 | Alert survives restart | not classified | none | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_init`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_power_up` |
| MRTM-SAF-007 | Buzzer self-test | not classified | none | — | not reported | `10-src/firmware/components/diagnostics/src/diagnostics.c#diagnostics_power_up` |
| MRTM-SAF-008 | Low battery alarm | not classified | none | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step`, `10-src/firmware/components/power_mon/src/power_mon.c#power_mon_step` |
| MRTM-SAF-009 | Backup alarm on firmware silence | not classified | none | — | not reported | `10-src/firmware/components/wdt_kicker/src/wdt_kicker.c#wdt_kicker_step` |
| MRTM-SAF-010 | Watchdog tied to the alarm service | not classified | none | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_heartbeat`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step`, `10-src/firmware/components/wdt_kicker/src/wdt_kicker.c#wdt_kicker_step` |
| MRTM-SAF-011 | Fault tone differs from excursion tone | not classified | none | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SAF-012 | Probe calibration due | not classified | none | — | not reported | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step` |
| MRTM-SAF-013 | Alarm on total power loss | not classified | none | — | not reported | — |
| MRTM-SAF-014 | Buzzer open-circuit detection | not classified | none | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SAF-015 | Diverse signal for buzzer fault | not classified | none | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SAF-016 | Show the band at power-up | not classified | none | — | not reported | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#display_mgr_init`, `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/display_mgr/src/display_mgr.cpp#renderFrame`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_power_up` |
| MRTM-SAF-017 | Band integrity check | not classified | none | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step`, `10-src/firmware/components/config_mgr/src/config_mgr.c#config_mgr_load`, `10-src/firmware/components/config_mgr/src/config_mgr.c#config_mgr_store`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_power_up`, `10-src/firmware/components/mrtm_common/src/mrtm_crc.c#mrtm_crc32` |
| MRTM-SAF-018 | Two copies of every record | not classified | none | — | not reported | `10-src/firmware/components/event_log/src/event_log.c#event_log_step`, `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_append` |
| MRTM-SAF-019 | Stuck acknowledge button | not classified | none | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_button_debounced`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SAF-020 | Probe placement in the instructions | not classified | none | — | not reported | — |
| MRTM-SAF-021 | I2C bus recovery | not classified | none | — | not reported | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#recoverBus` |
| MRTM-SAF-022 | Clock stop detection | not classified | none | — | not reported | `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_power_up`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_init` |
| MRTM-SAF-023 | Backup alarm power-up test | not classified | none | — | not reported | `10-src/firmware/components/diagnostics/src/diagnostics.c#diagnostics_power_up` |
| MRTM-SMP-001 | Sampler read contract | not classified | none | — | not reported | `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_read` |
| MRTM-SMP-002 | Sampler invalid flag | not classified | none | — | not reported | `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_probe_fault` |
| MRTM-SNI-001 | Sensor item conversion start | not classified | none | — | not reported | `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_read` |
| MRTM-SNI-002 | Sensor item invalid sample | not classified | none | — | not reported | `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_probe_fault` |
| MRTM-SRS-001 | SRS sample period | not classified | none | — | not reported | — |
| MRTM-SRS-002 | SRS early alarm signal | not classified | none | — | not reported | — |
| MRTM-SRS-003 | SRS excursion confirmation | not classified | none | — | not reported | — |
| MRTM-SRS-004 | SRS excursion end | not classified | none | — | not reported | — |
| MRTM-SRS-005 | SRS invalid sample | not classified | none | — | not reported | — |
| MRTM-SRS-006 | SRS buzzer on | not classified | none | — | not reported | — |
| MRTM-SRS-007 | SRS buzzer off on acknowledge | not classified | none | — | not reported | — |
| MRTM-SRS-008 | SRS alarm burst pattern | not classified | none | — | not reported | — |
| MRTM-SRS-009 | SRS excursion warning | not classified | none | — | not reported | — |
| MRTM-SRS-010 | SRS temperature shown | not classified | none | — | not reported | — |
| MRTM-SRS-011 | SRS status messages | not classified | none | — | not reported | — |
| MRTM-SRS-012 | SRS record stored twice | not classified | none | — | not reported | — |
| MRTM-SRS-013 | SRS log capacity | not classified | none | — | not reported | — |
| MRTM-SRS-014 | SRS read-only export | not classified | none | — | not reported | — |
| MRTM-SRS-015 | SRS time stamp | not classified | none | — | not reported | — |
| MRTM-SRS-016 | SRS power events | not classified | none | — | not reported | — |
| MRTM-SRS-017 | SRS watchdog service stop | not classified | none | — | not reported | — |
| MRTM-SRS-018 | SRS power-up tests | not classified | none | — | not reported | — |
| MRTM-SRS-019 | SRS band integrity | not classified | none | — | not reported | — |
| MRTM-STK-001 | Alert on excursion | not classified | none | — | not reported | — |
| MRTM-STK-002 | No alert on brief door opening | not classified | none | — | not reported | — |
| MRTM-STK-003 | Silence the alert | not classified | none | — | not reported | — |
| MRTM-STK-004 | See the temperature | not classified | none | — | not reported | — |
| MRTM-STK-005 | Audit history | not classified | none | — | not reported | — |
| MRTM-STK-006 | History cannot be edited | not classified | none | — | not reported | — |
| MRTM-STK-007 | Probe failure is visible | not classified | none | — | not reported | — |
| MRTM-STK-008 | Monitoring through a power cut | not classified | none | — | not reported | — |
| MRTM-SVI-001 | Supervisor item pulse stop | not classified | none | — | not reported | `10-src/firmware/components/wdt_kicker/src/wdt_kicker.c#wdt_kicker_step` |
| MRTM-SVI-002 | Supervisor item power-up tests | not classified | none | — | not reported | `10-src/firmware/components/diagnostics/src/diagnostics.c#diagnostics_power_up` |
| MRTM-SVI-003 | Supervisor item band check | not classified | none | — | not reported | `10-src/firmware/components/config_mgr/src/config_mgr.c#config_mgr_load` |
| MRTM-SYS-001 | Sampling period | not classified | none | — | not reported | `10-src/config/mrtm_config.h#off`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_read` |
| MRTM-SYS-002 | Excursion confirmation | not classified | none | — | not reported | `10-src/config/mrtm_config.h#off`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step` |
| MRTM-SYS-003 | Buzzer on excursion | not classified | none | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take` |
| MRTM-SYS-004 | Red indicator on excursion | not classified | none | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SYS-005 | Warning on excursion | not classified | none | — | not reported | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/display_mgr/src/display_mgr.cpp#renderFrame`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_display_step` |
| MRTM-SYS-006 | Acknowledge silences buzzer | not classified | none | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_button_debounced`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_post`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take` |
| MRTM-SYS-007 | Warning stays while excursion is open | not classified | none | — | not reported | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw` |
| MRTM-SYS-008 | Log excursion start | not classified | none | — | not reported | `10-src/firmware/components/event_log/src/event_log.c#event_log_post`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now` |
| MRTM-SYS-009 | Log excursion end | not classified | none | — | not reported | `10-src/firmware/components/event_log/src/event_log.c#event_log_post`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_peak`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step` |
| MRTM-SYS-010 | Log acknowledgement | not classified | none | — | not reported | `10-src/firmware/components/event_log/src/event_log.c#event_log_post`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now` |
| MRTM-SYS-011 | Display resolution | not classified | none | — | not reported | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_to_tenths` |
| MRTM-SYS-012 | Probe fault detection | not classified | none | — | not reported | `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step`, `10-src/firmware/components/mrtm_common/src/mrtm_crc.c#mrtm_crc8_maxim`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_probe_fault`, `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_read` |
| MRTM-SYS-013 | Probe fault message | not classified | none | — | not reported | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/display_mgr/src/display_mgr.cpp#renderFrame`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_display_step` |
| MRTM-SYS-014 | Read-only event log | not classified | none | — | not reported | `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_init`, `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_write10` |
| MRTM-SYS-015 | Event log capacity | not classified | none | — | not reported | `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_append`, `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_init`, `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_read` |
| MRTM-SYS-016 | Battery operation | not classified | none | — | not reported | — |
| MRTM-SYS-017 | Allowed band | not classified | none | — | not reported | `10-src/firmware/components/config_mgr/src/config_mgr.c#config_mgr_load`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_init`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step` |
| MRTM-SYS-018 | Excursion end confirmation | not classified | none | — | not reported | `10-src/config/mrtm_config.h#off`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step` |
| MRTM-SYS-019 | Alarm comes back after silence | not classified | none | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` |
| MRTM-SYS-020 | Clock drift | not classified | none | — | not reported | `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_tick` |
| MRTM-SYS-021 | Event log integrity | not classified | none | — | not reported | `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_read`, `10-src/firmware/components/mrtm_common/src/mrtm_crc.c#mrtm_crc32` |
| MRTM-SYS-022 | Log capacity warning | not classified | none | — | not reported | `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw`, `10-src/firmware/components/history_ring/src/history_ring.c#history_ring_append`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step` |
| MRTM-SYS-023 | Power restore event | not classified | none | — | not reported | `10-src/firmware/components/event_log/src/event_log.c#event_log_post`, `10-src/firmware/components/power_mon/src/power_mon.c#power_mon_isr`, `10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_now` |
| MRTM-SYS-024 | Early excursion alarm | not classified | none | — | not reported | `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step`, `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take`, `10-src/firmware/components/limit_evaluator/src/limit_evaluator.c#limit_evaluator_step`, `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step` |
| MRTM-USI-001 | USB item read-only volume | not classified | none | — | not reported | `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_init` |
| MRTM-USI-002 | USB item write inhibit | not classified | none | — | not reported | `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_write10` |
| MRTM-UXP-001 | USB export read-only file | not classified | none | — | not reported | `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_init` |
| MRTM-UXP-002 | USB export write refusal | not classified | none | — | not reported | `10-src/firmware/components/usb_export/src/usb_export.c#usb_export_write10` |
| MRTM-WDK-001 | Watchdog kicker stop | not classified | none | — | not reported | `10-src/firmware/components/wdt_kicker/src/wdt_kicker.c#wdt_kicker_step` |

#### Allocated items → Requirements (item to requirements)

| ID | Title | Criticality | Linked | Verifying cases | Verification | Implemented by |
|---|---|---|---|---|---|---|
| alarmMgr |  | not classified | none | — | n/a — allocated item | — |
| configMgr |  | not classified | none | — | n/a — allocated item | — |
| diagnostics |  | not classified | none | — | n/a — allocated item | — |
| displayMgr |  | not classified | none | — | n/a — allocated item | — |
| eventLog |  | not classified | none | — | n/a — allocated item | — |
| historyRing |  | not classified | none | — | n/a — allocated item | — |
| limitEvaluator |  | not classified | none | — | n/a — allocated item | — |
| powerMon |  | not classified | none | — | n/a — allocated item | — |
| rtcClock |  | not classified | none | — | n/a — allocated item | — |
| sensorSampler |  | not classified | none | — | n/a — allocated item | — |
| usbExport |  | not classified | none | — | n/a — allocated item | — |
| wdtKicker |  | not classified | none | — | n/a — allocated item | — |

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

Not reported — this repository declares no verification vocabulary (`verifies`, `method` or `disposition`) and no producer declared a verification case, so verification coverage does not run rather than reporting every requirement as unverified (rule 4).

### Derived / exempted — requirements a declaration waived from the orphan rule

**Count:** 0

No derived exemptions.

