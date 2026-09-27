# Requirements Export

**Export schema:** `sanad/requirements-export/2`

**Mode:** Engineering — generated on a workstation, outside the certification recipe; this report carries no certification credit.

**Generated from commit:** `858b61685755a94696ceefc3e2bfbcf2f4c2caea`

**Commit date:** `2026-09-27T11:33:49+05:30`

**Tool version:** `sanad 0.6.3`

**Configuration hash:** `1dc47c01dbdb640911cdfce35e52d909a1416608851312047e891d9b85760938`

**Input hash:** `8d3122d851b11030030345f514dbec8d6db5d1b07b159f4530fefb2c9f3baf53`

**Inputs:** `138 requirements`, `symbol index`, `architecture inventory`, `glossary`, `data dictionary`, `verification cases`

**Index**

- [Environmental Requirement (4)](#environmental-requirement-4)
  - [MRTM-ENV-001 — Battery endurance](#mrtm-env-001--battery-endurance)
  - [MRTM-ENV-002 — Ambient temperature](#mrtm-env-002--ambient-temperature)
  - [MRTM-ENV-003 — Humidity](#mrtm-env-003--humidity)
  - [MRTM-ENV-004 — Probe environment](#mrtm-env-004--probe-environment)
- [Interface Requirement (4)](#interface-requirement-4)
  - [MRTM-IFC-001 — Probe bus](#mrtm-ifc-001--probe-bus)
  - [MRTM-IFC-002 — Acknowledge input](#mrtm-ifc-002--acknowledge-input)
  - [MRTM-IFC-003 — USB readout](#mrtm-ifc-003--usb-readout)
  - [MRTM-IFC-004 — Display character height](#mrtm-ifc-004--display-character-height)
- [Maintainability Requirement (3)](#maintainability-requirement-3)
  - [MRTM-MNT-001 — Probe replacement](#mrtm-mnt-001--probe-replacement)
  - [MRTM-MNT-002 — Battery level](#mrtm-mnt-002--battery-level)
  - [MRTM-MNT-003 — Firmware version](#mrtm-mnt-003--firmware-version)
- [Performance Requirement (4)](#performance-requirement-4)
  - [MRTM-PRF-001 — Measurement accuracy](#mrtm-prf-001--measurement-accuracy)
  - [MRTM-PRF-002 — End-to-end alert time](#mrtm-prf-002--end-to-end-alert-time)
  - [MRTM-PRF-003 — Log readout time](#mrtm-prf-003--log-readout-time)
  - [MRTM-PRF-004 — Display refresh](#mrtm-prf-004--display-refresh)
- [Safety Requirement (23)](#safety-requirement-23)
  - [MRTM-SAF-001 — Buzzer loudness](#mrtm-saf-001--buzzer-loudness)
  - [MRTM-SAF-002 — Probe fault raises alert](#mrtm-saf-002--probe-fault-raises-alert)
  - [MRTM-SAF-003 — Implausible sample](#mrtm-saf-003--implausible-sample)
  - [MRTM-SAF-004 — Watchdog restart](#mrtm-saf-004--watchdog-restart)
  - [MRTM-SAF-005 — Log power loss](#mrtm-saf-005--log-power-loss)
  - [MRTM-SAF-006 — Alert survives restart](#mrtm-saf-006--alert-survives-restart)
  - [MRTM-SAF-007 — Buzzer self-test](#mrtm-saf-007--buzzer-self-test)
  - [MRTM-SAF-008 — Low battery alarm](#mrtm-saf-008--low-battery-alarm)
  - [MRTM-SAF-009 — Backup alarm on firmware silence](#mrtm-saf-009--backup-alarm-on-firmware-silence)
  - [MRTM-SAF-010 — Watchdog tied to the alarm service](#mrtm-saf-010--watchdog-tied-to-the-alarm-service)
  - [MRTM-SAF-011 — Fault tone differs from excursion tone](#mrtm-saf-011--fault-tone-differs-from-excursion-tone)
  - [MRTM-SAF-012 — Probe calibration due](#mrtm-saf-012--probe-calibration-due)
  - [MRTM-SAF-013 — Alarm on total power loss](#mrtm-saf-013--alarm-on-total-power-loss)
  - [MRTM-SAF-014 — Buzzer open-circuit detection](#mrtm-saf-014--buzzer-open-circuit-detection)
  - [MRTM-SAF-015 — Diverse signal for buzzer fault](#mrtm-saf-015--diverse-signal-for-buzzer-fault)
  - [MRTM-SAF-016 — Show the band at power-up](#mrtm-saf-016--show-the-band-at-power-up)
  - [MRTM-SAF-017 — Band integrity check](#mrtm-saf-017--band-integrity-check)
  - [MRTM-SAF-018 — Two copies of every record](#mrtm-saf-018--two-copies-of-every-record)
  - [MRTM-SAF-019 — Stuck acknowledge button](#mrtm-saf-019--stuck-acknowledge-button)
  - [MRTM-SAF-020 — Probe placement in the instructions](#mrtm-saf-020--probe-placement-in-the-instructions)
  - [MRTM-SAF-021 — I2C bus recovery](#mrtm-saf-021--i2c-bus-recovery)
  - [MRTM-SAF-022 — Clock stop detection](#mrtm-saf-022--clock-stop-detection)
  - [MRTM-SAF-023 — Backup alarm power-up test](#mrtm-saf-023--backup-alarm-power-up-test)
- [Stakeholder Requirement (8)](#stakeholder-requirement-8)
  - [MRTM-STK-001 — Alert on excursion](#mrtm-stk-001--alert-on-excursion)
  - [MRTM-STK-002 — No alert on brief door opening](#mrtm-stk-002--no-alert-on-brief-door-opening)
  - [MRTM-STK-003 — Silence the alert](#mrtm-stk-003--silence-the-alert)
  - [MRTM-STK-004 — See the temperature](#mrtm-stk-004--see-the-temperature)
  - [MRTM-STK-005 — Audit history](#mrtm-stk-005--audit-history)
  - [MRTM-STK-006 — History cannot be edited](#mrtm-stk-006--history-cannot-be-edited)
  - [MRTM-STK-007 — Probe failure is visible](#mrtm-stk-007--probe-failure-is-visible)
  - [MRTM-STK-008 — Monitoring through a power cut](#mrtm-stk-008--monitoring-through-a-power-cut)
- [System Requirement (24)](#system-requirement-24)
  - [MRTM-SYS-001 — Sampling period](#mrtm-sys-001--sampling-period)
  - [MRTM-SYS-002 — Excursion confirmation](#mrtm-sys-002--excursion-confirmation)
  - [MRTM-SYS-003 — Buzzer on excursion](#mrtm-sys-003--buzzer-on-excursion)
  - [MRTM-SYS-004 — Red indicator on excursion](#mrtm-sys-004--red-indicator-on-excursion)
  - [MRTM-SYS-005 — Warning on excursion](#mrtm-sys-005--warning-on-excursion)
  - [MRTM-SYS-006 — Acknowledge silences buzzer](#mrtm-sys-006--acknowledge-silences-buzzer)
  - [MRTM-SYS-007 — Warning stays while excursion is open](#mrtm-sys-007--warning-stays-while-excursion-is-open)
  - [MRTM-SYS-008 — Log excursion start](#mrtm-sys-008--log-excursion-start)
  - [MRTM-SYS-009 — Log excursion end](#mrtm-sys-009--log-excursion-end)
  - [MRTM-SYS-010 — Log acknowledgement](#mrtm-sys-010--log-acknowledgement)
  - [MRTM-SYS-011 — Display resolution](#mrtm-sys-011--display-resolution)
  - [MRTM-SYS-012 — Probe fault detection](#mrtm-sys-012--probe-fault-detection)
  - [MRTM-SYS-013 — Probe fault message](#mrtm-sys-013--probe-fault-message)
  - [MRTM-SYS-014 — Read-only event log](#mrtm-sys-014--read-only-event-log)
  - [MRTM-SYS-015 — Event log capacity](#mrtm-sys-015--event-log-capacity)
  - [MRTM-SYS-016 — Battery operation](#mrtm-sys-016--battery-operation)
  - [MRTM-SYS-017 — Allowed band](#mrtm-sys-017--allowed-band)
  - [MRTM-SYS-018 — Excursion end confirmation](#mrtm-sys-018--excursion-end-confirmation)
  - [MRTM-SYS-019 — Alarm comes back after silence](#mrtm-sys-019--alarm-comes-back-after-silence)
  - [MRTM-SYS-020 — Clock drift](#mrtm-sys-020--clock-drift)
  - [MRTM-SYS-021 — Event log integrity](#mrtm-sys-021--event-log-integrity)
  - [MRTM-SYS-022 — Log capacity warning](#mrtm-sys-022--log-capacity-warning)
  - [MRTM-SYS-023 — Power restore event](#mrtm-sys-023--power-restore-event)
  - [MRTM-SYS-024 — Early excursion alarm](#mrtm-sys-024--early-excursion-alarm)
- [Logical Requirement (LA) (26)](#logical-requirement-la-26)
  - [MRTM-LA-001 — Alarm early signal latency](#mrtm-la-001--alarm-early-signal-latency)
  - [MRTM-LA-002 — Alarm excursion confirmation](#mrtm-la-002--alarm-excursion-confirmation)
  - [MRTM-LA-003 — Alarm buzzer latency](#mrtm-la-003--alarm-buzzer-latency)
  - [MRTM-LA-004 — Alarm acknowledge](#mrtm-la-004--alarm-acknowledge)
  - [MRTM-LA-005 — Alarm backup path](#mrtm-la-005--alarm-backup-path)
  - [MRTM-LA-006 — Alarm high-priority auditory pattern](#mrtm-la-006--alarm-high-priority-auditory-pattern)
  - [MRTM-LA-007 — Alarm excursion end](#mrtm-la-007--alarm-excursion-end)
  - [MRTM-LA-008 — Alarm backup hold-up](#mrtm-la-008--alarm-backup-hold-up)
  - [MRTM-LA-009 — Display excursion warning](#mrtm-la-009--display-excursion-warning)
  - [MRTM-LA-010 — Display temperature](#mrtm-la-010--display-temperature)
  - [MRTM-LA-011 — Display messages](#mrtm-la-011--display-messages)
  - [MRTM-LA-012 — Logging record write](#mrtm-la-012--logging-record-write)
  - [MRTM-LA-013 — Logging retention](#mrtm-la-013--logging-retention)
  - [MRTM-LA-014 — Logging read-only export](#mrtm-la-014--logging-read-only-export)
  - [MRTM-LA-015 — Logging time stamp](#mrtm-la-015--logging-time-stamp)
  - [MRTM-LA-016 — Power switch-over](#mrtm-la-016--power-switch-over)
  - [MRTM-LA-017 — Power battery time](#mrtm-la-017--power-battery-time)
  - [MRTM-LA-018 — Power events](#mrtm-la-018--power-events)
  - [MRTM-LA-019 — Sensing sample period](#mrtm-la-019--sensing-sample-period)
  - [MRTM-LA-020 — Sensing sample latency](#mrtm-la-020--sensing-sample-latency)
  - [MRTM-LA-021 — Sensing accuracy](#mrtm-la-021--sensing-accuracy)
  - [MRTM-LA-022 — Sensing invalid sample](#mrtm-la-022--sensing-invalid-sample)
  - [MRTM-LA-023 — Supervision restart](#mrtm-la-023--supervision-restart)
  - [MRTM-LA-024 — Supervision power-up tests](#mrtm-la-024--supervision-power-up-tests)
  - [MRTM-LA-025 — Supervision band check](#mrtm-la-025--supervision-band-check)
  - [MRTM-LA-026 — Supervision pulse stop](#mrtm-la-026--supervision-pulse-stop)
- [Physical Requirement (PA hardware) (16)](#physical-requirement-pa-hardware-16)
  - [MRTM-PH-001 — Backup alarm timeout](#mrtm-ph-001--backup-alarm-timeout)
  - [MRTM-PH-002 — Backup alarm hold-up](#mrtm-ph-002--backup-alarm-hold-up)
  - [MRTM-PH-003 — Backup driver response](#mrtm-ph-003--backup-driver-response)
  - [MRTM-PH-004 — Backup timer period](#mrtm-ph-004--backup-timer-period)
  - [MRTM-PH-005 — Hold-up energy](#mrtm-ph-005--hold-up-energy)
  - [MRTM-PH-006 — Buzzer loudness](#mrtm-ph-006--buzzer-loudness)
  - [MRTM-PH-007 — Red indicator response](#mrtm-ph-007--red-indicator-response)
  - [MRTM-PH-008 — Acknowledge button contact](#mrtm-ph-008--acknowledge-button-contact)
  - [MRTM-PH-009 — Panel digit height](#mrtm-ph-009--panel-digit-height)
  - [MRTM-PH-010 — Clock drift](#mrtm-ph-010--clock-drift)
  - [MRTM-PH-011 — Battery capacity](#mrtm-ph-011--battery-capacity)
  - [MRTM-PH-012 — Power path switch](#mrtm-ph-012--power-path-switch)
  - [MRTM-PH-013 — Probe conversion time](#mrtm-ph-013--probe-conversion-time)
  - [MRTM-PH-014 — Probe accuracy](#mrtm-ph-014--probe-accuracy)
  - [MRTM-PH-015 — Probe scratchpad check](#mrtm-ph-015--probe-scratchpad-check)
  - [MRTM-PH-016 — Processor watchdog reset](#mrtm-ph-016--processor-watchdog-reset)
- [Software Requirement (PA software) (20)](#software-requirement-pa-software-20)
  - [MRTM-SW-001 — Alarm item early light](#mrtm-sw-001--alarm-item-early-light)
  - [MRTM-SW-002 — Alarm item buzzer on](#mrtm-sw-002--alarm-item-buzzer-on)
  - [MRTM-SW-003 — Alarm item buzzer off](#mrtm-sw-003--alarm-item-buzzer-off)
  - [MRTM-SW-004 — Alarm item heartbeat](#mrtm-sw-004--alarm-item-heartbeat)
  - [MRTM-SW-005 — Excursion item early report](#mrtm-sw-005--excursion-item-early-report)
  - [MRTM-SW-006 — Excursion item confirmation](#mrtm-sw-006--excursion-item-confirmation)
  - [MRTM-SW-007 — Excursion item end](#mrtm-sw-007--excursion-item-end)
  - [MRTM-SW-008 — Display item redraw](#mrtm-sw-008--display-item-redraw)
  - [MRTM-SW-009 — Display item number rate](#mrtm-sw-009--display-item-number-rate)
  - [MRTM-SW-010 — Log item two copies](#mrtm-sw-010--log-item-two-copies)
  - [MRTM-SW-011 — Log item ring](#mrtm-sw-011--log-item-ring)
  - [MRTM-SW-012 — USB item volume](#mrtm-sw-012--usb-item-volume)
  - [MRTM-SW-013 — USB item read-only access](#mrtm-sw-013--usb-item-read-only-access)
  - [MRTM-SW-014 — Power item mains events](#mrtm-sw-014--power-item-mains-events)
  - [MRTM-SW-015 — Power item battery low](#mrtm-sw-015--power-item-battery-low)
  - [MRTM-SW-016 — Sensor item conversion start](#mrtm-sw-016--sensor-item-conversion-start)
  - [MRTM-SW-017 — Sensor item invalid sample](#mrtm-sw-017--sensor-item-invalid-sample)
  - [MRTM-SW-018 — Supervisor item pulses](#mrtm-sw-018--supervisor-item-pulses)
  - [MRTM-SW-019 — Supervisor item self-tests](#mrtm-sw-019--supervisor-item-self-tests)
  - [MRTM-SW-020 — Supervisor item band load](#mrtm-sw-020--supervisor-item-band-load)
- [Configuration Item (EPBS) (6)](#configuration-item-epbs-6)
  - [MRTM-CI-001 — Firmware image](#mrtm-ci-001--firmware-image)
  - [MRTM-CI-002 — Main board assembly](#mrtm-ci-002--main-board-assembly)
  - [MRTM-CI-003 — Probe assembly](#mrtm-ci-003--probe-assembly)
  - [MRTM-CI-004 — Display module](#mrtm-ci-004--display-module)
  - [MRTM-CI-005 — Backup alarm board](#mrtm-ci-005--backup-alarm-board)
  - [MRTM-CI-006 — Battery pack](#mrtm-ci-006--battery-pack)

## Environmental Requirement (4)

### {#MRTM-ENV-001}MRTM-ENV-001 — Battery endurance

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The monitor shall operate from the internal battery for 4 h.

**Rationale**

A-11 assumes 4 h until Q-07 is answered.

**Verification**

Test: run on a fully charged battery at 25 °C for 4 h.

**Uplinks:** [MRTM-SYS-016](#MRTM-SYS-016)

**Downlinks:** [MRTM-LA-017](#MRTM-LA-017)

### {#MRTM-ENV-002}MRTM-ENV-002 — Ambient temperature

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The monitor shall operate at an ambient temperature from 10 °C to 35 °C.

**Rationale**

Clinic rooms; IEC 60601-1 cl. 7.9.3.1 frame.

**Verification**

Test: climatic chamber at 10 °C and 35 °C.

**Uplinks:** [MRTM-SYS-001](#MRTM-SYS-001)

### {#MRTM-ENV-003}MRTM-ENV-003 — Humidity

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The monitor shall operate at a relative humidity from 15 % to 85 % non-condensing.

**Rationale**

Clinic rooms; IEC 60601-1 frame.

**Verification**

Test: climatic chamber at 15 % and 85 %.

**Uplinks:** [MRTM-SYS-001](#MRTM-SYS-001)

### {#MRTM-ENV-004}MRTM-ENV-004 — Probe environment

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The temperature probe shall operate at a fridge air temperature from -30 °C to 50 °C.

**Rationale**

Covers freezer faults and defrost cycles.

**Verification**

Test: probe in a chamber at -30 °C and 50 °C.

**Uplinks:** [MRTM-SYS-001](#MRTM-SYS-001)

**Downlinks:** [MRTM-LA-021](#MRTM-LA-021)

## Interface Requirement (4)

### {#MRTM-IFC-001}MRTM-IFC-001 — Probe bus

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The monitor shall read the temperature probe over a 1-Wire bus.

**Rationale**

DS18B20-class digital probe (Phase 6 assumption).

**Verification**

Inspection: bus capture of one sample.

**Uplinks:** [MRTM-SYS-001](#MRTM-SYS-001)

### {#MRTM-IFC-002}MRTM-IFC-002 — Acknowledge input

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The monitor shall debounce the acknowledge button input for 50 ms.

**Rationale**

A momentary contact bounces; one press must be one acknowledgement.

**Verification**

Test: apply a bouncing contact and count acknowledgements.

**Uplinks:** [MRTM-SYS-006](#MRTM-SYS-006)

**Downlinks:** [MRTM-LA-004](#MRTM-LA-004)

### {#MRTM-IFC-003}MRTM-IFC-003 — USB readout

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The monitor shall present the event log to the USB host as a read-only mass-storage volume.

**Rationale**

A-10: readout needs no special software.

**Verification**

Test: connect to a USB host and attempt to write.

**Uplinks:** [MRTM-SYS-014](#MRTM-SYS-014)

**Downlinks:** [MRTM-LA-014](#MRTM-LA-014)

### {#MRTM-IFC-004}MRTM-IFC-004 — Display character height

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The monitor shall draw the temperature digits at a character height of 5 mm or more.

**Rationale**

Readable from 1 m.

**Verification**

Inspection: measure the digit height on the display.

**Uplinks:** [MRTM-SYS-005](#MRTM-SYS-005)

**Downlinks:** [MRTM-LA-010](#MRTM-LA-010)

## Maintainability Requirement (3)

### {#MRTM-MNT-001}MRTM-MNT-001 — Probe replacement

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The monitor shall meet the measurement accuracy with a replacement temperature probe without recalibration.

**Rationale**

The technician must swap a failed probe on site.

**Verification**

Test: swap the probe and repeat the accuracy test.

**Uplinks:** [MRTM-SYS-012](#MRTM-SYS-012)

### {#MRTM-MNT-002}MRTM-MNT-002 — Battery level

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The monitor shall show the battery charge level on the display in steps of 10 %.

**Rationale**

The technician plans the battery change.

**Verification**

Inspection: read the display at three charge levels.

**Uplinks:** [MRTM-SYS-016](#MRTM-SYS-016)

### {#MRTM-MNT-003}MRTM-MNT-003 — Firmware version

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The monitor shall show the firmware version on the display for 3 s at power-up.

**Rationale**

Configuration identification in the field (IEC 62304 cl. 8.1.1).

**Verification**

Inspection: power up and read the version.

**Uplinks:** [MRTM-SYS-001](#MRTM-SYS-001)

## Performance Requirement (4)

### {#MRTM-PRF-001}MRTM-PRF-001 — Measurement accuracy

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The monitor shall measure the fridge air temperature with an accuracy of ±0.5 °C over the range 0 °C to 15 °C.

**Rationale**

Measurement Accuracy in the data dictionary; the band edges must be judged correctly.

**Verification**

Test: compare with a reference thermometer at 0 °C, 5 °C and 15 °C.

**Uplinks:** [MRTM-SYS-001](#MRTM-SYS-001)

**Downlinks:** [MRTM-LA-021](#MRTM-LA-021)

### {#MRTM-PRF-002}MRTM-PRF-002 — End-to-end alert time

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The monitor shall sound the buzzer within 65 s of the first sample outside the allowed band.

**Rationale**

60 s confirmation plus 5 s alert time.

**Verification**

Test: step the probe out of band and time the buzzer.

**Uplinks:** [MRTM-SYS-003](#MRTM-SYS-003)

**Downlinks:** [MRTM-LA-003](#MRTM-LA-003)

### {#MRTM-PRF-003}MRTM-PRF-003 — Log readout time

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The monitor shall deliver the complete event log to the USB host within 30 s.

**Rationale**

An audit readout must not keep staff waiting.

**Verification**

Test: fill the log to 10000 events and time the readout. Run with the event log holding 10000 events (review round 1, T07).

**Uplinks:** [MRTM-SYS-015](#MRTM-SYS-015)

**Downlinks:** [MRTM-LA-014](#MRTM-LA-014)

### {#MRTM-PRF-004}MRTM-PRF-004 — Display refresh

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The monitor shall refresh the displayed temperature at a period of 10 s.

**Rationale**

The display follows the sampling period.

**Verification**

Test: time 20 display updates.

**Uplinks:** [MRTM-SYS-011](#MRTM-SYS-011)

**Downlinks:** [MRTM-LA-010](#MRTM-LA-010)

## Safety Requirement (23)

### {#MRTM-SAF-001}MRTM-SAF-001 — Buzzer loudness

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**hazard**

HAZ-006

**derived**

false

**Description**

The monitor shall sound the buzzer at a sound pressure level of 65 dB(A) or more at 1 m.

**Rationale**

Risk control for hazard 'alert not heard' (ISO 14971 cl. 7; IEC 60601-1-8 frame).

**Safety**

Mitigates HAZ-006 (alert not perceived): a loud enough buzzer is heard across the room where the fridge stands.

**Verification**

Test: with background noise below 45 dB(A), measure the sound pressure level on axis at 1 m with a class 2 sound level meter.

**Uplinks:** [MRTM-SYS-003](#MRTM-SYS-003)

### {#MRTM-SAF-002}MRTM-SAF-002 — Probe fault raises alert

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**hazard**

HAZ-001

**derived**

false

**Description**

The monitor shall sound the buzzer within 5 s of the probe fault declaration.

**Rationale**

Risk control for hazard 'silent loss of monitoring'.

**Safety**

Mitigates HAZ-001 (excursion not detected): a probe that stops answering is alarmed, so a missing reading is never read as a good one.

**Verification**

Test: disconnect the probe and time the buzzer.

**Uplinks:** [MRTM-SYS-012](#MRTM-SYS-012)

### {#MRTM-SAF-003}MRTM-SAF-003 — Implausible sample

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**hazard**

HAZ-001, HAZ-004

**derived**

false

**Description**

The monitor shall declare the probe fault when a sample falls outside the range -30 °C to 50 °C.

**Rationale**

Risk control for hazard 'false in-band reading from a damaged probe'.

**Safety**

Mitigates HAZ-001 and HAZ-004: a reading outside what the probe can physically see is treated as a fault, catching gross drift and wiring faults.

**Verification**

Test: inject samples at -41 °C and 61 °C through the probe simulator.

**Uplinks:** [MRTM-SYS-001](#MRTM-SYS-001)

**Downlinks:** [MRTM-LA-022](#MRTM-LA-022)

### {#MRTM-SAF-004}MRTM-SAF-004 — Watchdog restart

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**hazard**

HAZ-003

**derived**

false

**Description**

The monitor shall restart the monitoring software within 2 s of a software watchdog timeout.

**Rationale**

Risk control for hazard 'firmware hang stops monitoring' (IEC 62304 cl. 5.3.6).

**Safety**

Mitigates HAZ-003 (silent failure): the on-chip watchdog restarts hung software; the backup alarm (MRTM-SAF-009) covers the case where restart does not help.

**Verification**

Test: force a firmware hang and time the restart.

**Uplinks:** [MRTM-SYS-001](#MRTM-SYS-001)

**Downlinks:** [MRTM-LA-023](#MRTM-LA-023)

### {#MRTM-SAF-005}MRTM-SAF-005 — Log power loss

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**hazard**

HAZ-005, HAZ-008

**derived**

false

**Description**

The monitor shall log the power loss event within 1 s of mains power loss.

**Rationale**

Risk control for hazard 'unexplained gap in the history'.

**Safety**

Mitigates HAZ-005 and HAZ-008: the power loss is on record, so the audit shows when the monitor was on battery.

**Verification**

Test: remove mains power and read the logged event.

**Uplinks:** [MRTM-SYS-016](#MRTM-SYS-016)

**Downlinks:** [MRTM-LA-018](#MRTM-LA-018)

### {#MRTM-SAF-006}MRTM-SAF-006 — Alert survives restart

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**hazard**

HAZ-003, HAZ-005

**derived**

false

**Description**

The monitor shall restore the unacknowledged alert state within 2 s of the restart.

**Rationale**

Risk control for hazard 'a restart silences an open alert'.

**Safety**

Mitigates HAZ-003 and HAZ-005: a restart or a power dip does not silently cancel an alarm nobody has acknowledged.

**Verification**

Test: restart the monitor during an unacknowledged alert and confirm the buzzer resumes.

**Uplinks:** [MRTM-SYS-003](#MRTM-SYS-003)

**Downlinks:** [MRTM-LA-023](#MRTM-LA-023)

### {#MRTM-SAF-007}MRTM-SAF-007 — Buzzer self-test

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**hazard**

HAZ-006

**derived**

false

**Description**

The monitor shall test the buzzer within 5 s of power-up.

**Rationale**

Risk control for hazard 'broken buzzer found only when needed'.

**Safety**

Mitigates HAZ-006: staff hear the buzzer at every start, so a dead buzzer is noticed at power-up.

**Verification**

Test: power up with the buzzer disconnected and confirm the fault indication.

**Uplinks:** [MRTM-SYS-003](#MRTM-SYS-003)

**Downlinks:** [MRTM-LA-024](#MRTM-LA-024)

### {#MRTM-SAF-008}MRTM-SAF-008 — Low battery alarm

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**hazard**

HAZ-005

**derived**

false

**Description**

The monitor shall sound the buzzer within 5 s of the battery voltage falling below 3.4 V.

**Rationale**

Review round 1, thread T11: on battery the monitor would stop silently after about 4 h. 3.4 V is synthetic and EE-REVIEW (A-15). Risk control for hazard 'monitoring stops unnoticed' (ISO 14971 cl. 7).

**Safety**

Mitigates HAZ-005: staff are warned while there is still battery left to act on.

**Verification**

Test: lower the battery supply through 3.4 V on a bench supply and time the buzzer.

**Uplinks:** [MRTM-SYS-016](#MRTM-SYS-016)

**Downlinks:** [MRTM-LA-018](#MRTM-LA-018)

### {#MRTM-SAF-009}MRTM-SAF-009 — Backup alarm on firmware silence

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**hazard**

HAZ-003

**derived**

false

**Description**

The backup alarm circuit shall sound the buzzer within 10 s of the last watchdog service pulse from the firmware.

**Rationale**

Risk control for HAZ-003 (silent failure): the alarm must not depend only on the one processor (decision record 0013, Q-12 assumed yes A-18). ISO 14971 cl. 7.1 b (protective measure); IEC 60601-1-8 frame.

**Safety**

Mitigates HAZ-003: a hardware timer outside the processor sounds the buzzer when the firmware stops, so a hung or dead processor is heard instead of silent. Independent of the software path (decision record 0013).

**Verification**

Test: stop the firmware (hold the processor in reset) and time from the last service pulse on the watchdog input to buzzer sound; pass at 10 s or less, 10 trials.

**Uplinks:** [MRTM-SYS-003](#MRTM-SYS-003)

**Downlinks:** [MRTM-LA-005](#MRTM-LA-005)

### {#MRTM-SAF-010}MRTM-SAF-010 — Watchdog tied to the alarm service

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**hazard**

HAZ-003

**derived**

false

**Description**

The monitor shall stop the watchdog service pulses within 2 s of the alarm service missing its 1 s cycle.

**Rationale**

Risk control for HAZ-003: a firmware that runs but whose alarm service is stuck must also trip the backup alarm (decision record 0013). ISO 14971 cl. 7.1 b.

**Safety**

Mitigates HAZ-003: the watchdog is fed only by the alarm service, so the backup alarm also covers the case where the processor runs but the alarm job has stopped.

**Verification**

Test: suspend the alarm service with a test hook and measure the time from the missed cycle to the last service pulse on the watchdog line; pass at 2 s or less.

**Uplinks:** [MRTM-SYS-003](#MRTM-SYS-003)

**Downlinks:** [MRTM-LA-005](#MRTM-LA-005), [MRTM-LA-026](#MRTM-LA-026)

### {#MRTM-SAF-011}MRTM-SAF-011 — Fault tone differs from excursion tone

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**hazard**

HAZ-002

**derived**

false

**Description**

The monitor shall sound the probe fault alarm as a buzzer pattern of 1 s on and 1 s off.

**Rationale**

Risk control for HAZ-002 (alarm fatigue): staff who can tell a fault from an excursion act on each correctly and do not learn to ignore the buzzer. ISO 14971 cl. 7.1 b; IEC 60601-1-8 frame.

**Safety**

Mitigates HAZ-002: two clearly different sounds keep a probe fault from being taken for a routine excursion, which reduces nuisance-alarm fatigue.

**Verification**

Inspection and test: record the probe fault pattern with a sound level meter; pass at 1 s ± 0.1 s on and 1 s ± 0.1 s off; the excursion alarm is a continuous tone (A-19), so the two differ.

**Uplinks:** [MRTM-SYS-012](#MRTM-SYS-012)

### {#MRTM-SAF-012}MRTM-SAF-012 — Probe calibration due

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**hazard**

HAZ-004

**derived**

false

**Description**

The monitor shall show the probe calibration due message on the display 365 days after the probe calibration date.

**Rationale**

Risk control for HAZ-004 (sensor drift): drift inside the plausible range cannot be seen by the range check; a yearly calibration catches it (decision record 0012). ISO 14971 cl. 7.1 c (information for safety).

**Safety**

Mitigates HAZ-004: the monitor cannot see its own slow drift, so it tells staff when the probe is due for a check against a reference thermometer.

**Verification**

Test: set the stored calibration date 365 days before the clock time and check the message appears within 10 s of power-up.

**Uplinks:** [MRTM-SYS-001](#MRTM-SYS-001)

**Downlinks:** [MRTM-LA-011](#MRTM-LA-011)

### {#MRTM-SAF-013}MRTM-SAF-013 — Alarm on total power loss

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**hazard**

HAZ-005, HAZ-003

**derived**

false

**Description**

The backup alarm circuit shall sound the buzzer for 60 s or more after the loss of both mains and battery power.

**Rationale**

Risk control for HAZ-005 (power loss): a monitor that dies quietly is taken for a monitor that is fine; a power-fail alarm is the IEC 60601-1-8 practice. Stored energy value EE-REVIEW (decision record 0013).

**Safety**

Mitigates HAZ-005 and HAZ-003: a stored-energy capacitor keeps the backup alarm sounding after all power is gone, so a dead monitor is announced.

**Verification**

Test: remove mains and battery together and time the buzzer sound; pass at 60 s or more, 5 trials.

**Uplinks:** [MRTM-SYS-016](#MRTM-SYS-016)

**Downlinks:** [MRTM-LA-008](#MRTM-LA-008)

### {#MRTM-SAF-014}MRTM-SAF-014 — Buzzer open-circuit detection

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**hazard**

HAZ-006

**derived**

false

**Description**

The monitor shall declare the buzzer fault within 5 s of the buzzer drive current falling below 5 mA while the monitor drives the buzzer.

**Rationale**

Risk control for HAZ-006 (annunciator failure): a broken buzzer is otherwise found only at the next power-up self-test. The 5 mA threshold is EE-REVIEW.

**Safety**

Mitigates HAZ-006: the monitor checks the buzzer every time it drives it, not only at power-up.

**Verification**

Test: open the buzzer wire while an alarm sounds and measure the time to the buzzer fault declaration; pass at 5 s or less.

**Uplinks:** [MRTM-SYS-003](#MRTM-SYS-003)

### {#MRTM-SAF-015}MRTM-SAF-015 — Diverse signal for buzzer fault

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**hazard**

HAZ-006

**derived**

false

**Description**

The monitor shall flash the red indicator at 4 Hz within 5 s of the buzzer fault declaration.

**Rationale**

Risk control for HAZ-006: when the buzzer is broken a second, different channel must say so; the red indicator does not share the display bus (decision record 0010).

**Safety**

Mitigates HAZ-006: a faster red flash is a second, independent way of telling staff the monitor cannot sound.

**Verification**

Test: force the buzzer fault and measure the red indicator frequency and delay with a photodiode; pass at 4 Hz ± 0.4 Hz within 5 s.

**Uplinks:** [MRTM-SYS-004](#MRTM-SYS-004)

### {#MRTM-SAF-016}MRTM-SAF-016 — Show the band at power-up

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**hazard**

HAZ-007

**derived**

false

**Description**

The monitor shall show the allowed band limits on the display for 3 s at power-up.

**Rationale**

Risk control for HAZ-007 (wrong limits): staff can see at every start that the monitor watches 2 °C to 8 °C. ISO 14971 cl. 7.1 c.

**Safety**

Mitigates HAZ-007: wrong limits become visible to the person who starts the monitor.

**Verification**

Inspection: power up 3 times and check the band limits are shown for 3 s ± 0.5 s each time.

**Uplinks:** [MRTM-SYS-017](#MRTM-SYS-017)

**Downlinks:** [MRTM-LA-011](#MRTM-LA-011)

### {#MRTM-SAF-017}MRTM-SAF-017 — Band integrity check

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**hazard**

HAZ-007

**derived**

false

**Description**

The monitor shall sound the buzzer within 5 s of power-up when the stored allowed band fails its CRC-32 check.

**Rationale**

Risk control for HAZ-007: a corrupted limit must stop the monitor from silently watching the wrong band. ISO 14971 cl. 7.1 b.

**Safety**

Mitigates HAZ-007: the stored limits carry a checksum, and a bad checksum alarms instead of running with a wrong band.

**Verification**

Test: corrupt one byte of the stored band and power up; pass when the buzzer sounds within 5 s.

**Uplinks:** [MRTM-SYS-017](#MRTM-SYS-017)

**Downlinks:** [MRTM-LA-025](#MRTM-LA-025)

### {#MRTM-SAF-018}MRTM-SAF-018 — Two copies of every record

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**hazard**

HAZ-008

**derived**

false

**Description**

The monitor shall write the event log record to 2 separate flash sectors within 1 s of the event.

**Rationale**

Risk control for HAZ-008 (history loss): one worn or corrupted sector must not lose an excursion record (decision record 0011, R-10). ISO 14971 cl. 7.1 a.

**Safety**

Mitigates HAZ-008: a second copy in another sector survives the failure of the first, and the CRC-32 (MRTM-SYS-021) says which copy is good.

**Verification**

Test: corrupt one copy of 10 records and read the log over USB; pass when all 10 records arrive intact.

**Uplinks:** [MRTM-SYS-015](#MRTM-SYS-015)

**Downlinks:** [MRTM-LA-012](#MRTM-LA-012)

### {#MRTM-SAF-019}MRTM-SAF-019 — Stuck acknowledge button

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**hazard**

HAZ-006

**derived**

false

**Description**

The monitor shall declare the button fault when the acknowledge button input stays pressed for 60 s.

**Rationale**

Risk control for HAZ-006 found by the FMEA (FM-18): a jammed button must not keep the alarm silent. ISO 14971 cl. 7.1 b.

**Safety**

Mitigates HAZ-006: a held button is reported as a fault instead of acting as a permanent silence; the alarm re-sounds under MRTM-SYS-019.

**Verification**

Test: hold the button pressed with a clamp and measure the time to the button fault declaration; pass at 60 s ± 2 s.

**Uplinks:** [MRTM-SYS-006](#MRTM-SYS-006)

### {#MRTM-SAF-020}MRTM-SAF-020 — Probe placement in the instructions

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**hazard**

HAZ-001

**derived**

false

**Description**

The instructions for use shall state the probe position as the middle of the fridge air space, 5 cm or more from the fridge walls.

**Rationale**

Risk control for HAZ-001 found by the FMEA (FM-09): a probe against a wall or in a door rack reads the wrong air (decision record 0009, R-09). ISO 14971 cl. 7.1 c (information for safety).

**Safety**

Mitigates HAZ-001: the person installing the probe is told where the air that matters is.

**Verification**

Inspection: read the instructions for use and check the placement sentence and a picture are present.

**Uplinks:** [MRTM-SYS-001](#MRTM-SYS-001)

### {#MRTM-SAF-021}MRTM-SAF-021 — I2C bus recovery

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**hazard**

HAZ-006, HAZ-008

**derived**

false

**Description**

The monitor shall reset the I2C bus within 1 s of an I2C transaction timeout.

**Rationale**

Risk control for HAZ-006 and HAZ-008 found by the FMEA (FM-11): the display and the clock share one bus, and one hung transfer must not freeze both.

**Safety**

Mitigates HAZ-006 and HAZ-008: a stuck bus is cleared by the firmware instead of leaving a frozen screen and a stopped clock.

**Verification**

Test: hold the data line low with a test fixture for 2 s, release it, and measure the time to the next good display update; pass at 1 s or less after release.

**Uplinks:** [MRTM-SYS-005](#MRTM-SYS-005)

### {#MRTM-SAF-022}MRTM-SAF-022 — Clock stop detection

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**hazard**

HAZ-008

**derived**

false

**Description**

The monitor shall log the clock fault event within 2 s of power-up when the real-time clock reports an oscillator stop.

**Rationale**

Risk control for HAZ-008 found by the FMEA (FM-12, FM-13): time stamps after a clock stop are wrong, and the audit must say so (Q-10).

**Safety**

Mitigates HAZ-008: records written with a wrong clock are marked, so the audit does not trust them blindly.

**Verification**

Test: remove the clock coin cell, power up, and read the log; pass when the clock fault event is present within 2 s of power-up.

**Uplinks:** [MRTM-SYS-020](#MRTM-SYS-020)

**Downlinks:** [MRTM-LA-015](#MRTM-LA-015)

### {#MRTM-SAF-023}MRTM-SAF-023 — Backup alarm power-up test

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**hazard**

HAZ-003

**derived**

false

**Description**

The monitor shall test the backup alarm within 15 s of power-up.

**Rationale**

Risk control for HAZ-003 found by the FMEA (FM-23): the backup alarm is a second channel that is silent until needed, so a broken one would stay hidden (latent fault). ISO 14971 cl. 7.1 b.

**Safety**

Mitigates HAZ-003: the firmware withholds the watchdog pulses at start-up and checks, through the buzzer sense line, that the backup alarm really sounds.

**Verification**

Test: power up 5 times with the backup alarm output disconnected; pass when the monitor declares the backup alarm fault within 15 s each time, and with it connected when the buzzer sense line confirms the backup sound.

**Uplinks:** [MRTM-SYS-003](#MRTM-SYS-003)

**Downlinks:** [MRTM-LA-024](#MRTM-LA-024)

## Stakeholder Requirement (8)

### {#MRTM-STK-001}MRTM-STK-001 — Alert on excursion

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, DOGFOOD-1)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The monitor shall alert the nurse at the fridge when the fridge air temperature leaves the allowed band.

**Rationale**

US-1: a spoiled vaccine looks the same as a good one, so staff must be told.

**Verification**

Test: drive the probe outside the allowed band and confirm the alert reaches the nurse position.

**Uplinks:** none

**Downlinks:** [MRTM-SYS-003](#MRTM-SYS-003), [MRTM-SYS-004](#MRTM-SYS-004), [MRTM-SYS-005](#MRTM-SYS-005), [MRTM-SYS-017](#MRTM-SYS-017), [MRTM-SYS-024](#MRTM-SYS-024)

### {#MRTM-STK-002}MRTM-STK-002 — No alert on brief door opening

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, DOGFOOD-1)

**created**

2026-09-27

**modified**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The monitor shall raise no audible alert for the temperature departure shorter than the excursion confirmation time.

**Rationale**

US-2: false alarms teach staff to ignore the alarm (R-05).

**Verification**

Test: hold the probe outside the band for 30 s and confirm no alert.

**Uplinks:** none

**Downlinks:** [MRTM-SYS-002](#MRTM-SYS-002), [MRTM-SYS-018](#MRTM-SYS-018)

### {#MRTM-STK-003}MRTM-STK-003 — Silence the alert

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, DOGFOOD-1)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The monitor shall let the nurse silence the alert.

**Rationale**

US-3: the nurse must be able to work while fixing the fridge.

**Verification**

Demonstration: press the acknowledge button during an alert.

**Uplinks:** none

**Downlinks:** [MRTM-SYS-006](#MRTM-SYS-006), [MRTM-SYS-007](#MRTM-SYS-007), [MRTM-SYS-019](#MRTM-SYS-019)

### {#MRTM-STK-004}MRTM-STK-004 — See the temperature

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, DOGFOOD-1)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The monitor shall display the current fridge air temperature to the nurse.

**Rationale**

US-4: the state must be visible without tools.

**Verification**

Inspection: read the display during operation.

**Uplinks:** none

**Downlinks:** [MRTM-SYS-001](#MRTM-SYS-001), [MRTM-SYS-011](#MRTM-SYS-011)

### {#MRTM-STK-005}MRTM-STK-005 — Audit history

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, DOGFOOD-1)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The monitor shall give the clinic manager the excursion history for audit.

**Rationale**

US-5: the clinic must prove the stock stayed cold.

**Verification**

Demonstration: read out the history after a recorded excursion.

**Uplinks:** none

**Downlinks:** [MRTM-SYS-008](#MRTM-SYS-008), [MRTM-SYS-009](#MRTM-SYS-009), [MRTM-SYS-010](#MRTM-SYS-010), [MRTM-SYS-015](#MRTM-SYS-015), [MRTM-SYS-020](#MRTM-SYS-020), [MRTM-SYS-022](#MRTM-SYS-022)

### {#MRTM-STK-006}MRTM-STK-006 — History cannot be edited

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, DOGFOOD-1)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The monitor shall protect the excursion history from change by the user.

**Rationale**

US-6: an editable record cannot be trusted by an auditor.

**Verification**

Test: attempt to change a logged event through each user interface.

**Uplinks:** none

**Downlinks:** [MRTM-SYS-014](#MRTM-SYS-014), [MRTM-SYS-021](#MRTM-SYS-021)

### {#MRTM-STK-007}MRTM-STK-007 — Probe failure is visible

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, DOGFOOD-1)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The monitor shall tell the technician when the temperature probe fails.

**Rationale**

US-7: a failed probe misses excursions silently.

**Verification**

Test: disconnect the probe and confirm the fault indication.

**Uplinks:** none

**Downlinks:** [MRTM-SYS-012](#MRTM-SYS-012), [MRTM-SYS-013](#MRTM-SYS-013)

### {#MRTM-STK-008}MRTM-STK-008 — Monitoring through a power cut

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, DOGFOOD-1)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The monitor shall keep monitoring during a mains power loss of up to 4 h.

**Rationale**

US-8: power cuts happen at night; A-11 assumes 4 h until Q-07 is answered.

**Verification**

Test: remove mains power for 4 h and confirm samples continue.

**Uplinks:** none

**Downlinks:** [MRTM-SYS-016](#MRTM-SYS-016), [MRTM-SYS-023](#MRTM-SYS-023)

## System Requirement (24)

### {#MRTM-SYS-001}MRTM-SYS-001 — Sampling period

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The monitor shall sample the fridge air temperature at the sampling period of 2 s.

**Rationale**

Sampling Period in the data dictionary (A-04).

**Verification**

Test: time 100 consecutive samples; each interval is 2 s ± 0.1 s.

**Uplinks:** [MRTM-STK-004](#MRTM-STK-004)

**Downlinks:** [MRTM-ENV-002](#MRTM-ENV-002), [MRTM-ENV-003](#MRTM-ENV-003), [MRTM-ENV-004](#MRTM-ENV-004), [MRTM-IFC-001](#MRTM-IFC-001), [MRTM-LA-019](#MRTM-LA-019), [MRTM-MNT-003](#MRTM-MNT-003), [MRTM-PRF-001](#MRTM-PRF-001), [MRTM-SAF-003](#MRTM-SAF-003), [MRTM-SAF-004](#MRTM-SAF-004), [MRTM-SAF-012](#MRTM-SAF-012), [MRTM-SAF-020](#MRTM-SAF-020)

### {#MRTM-SYS-002}MRTM-SYS-002 — Excursion confirmation

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The monitor shall confirm the excursion when 31 consecutive samples, spanning 60 s, are outside the allowed band.

**Rationale**

Excursion Confirmation Time filters door openings (US-2).

**Verification**

Test: hold the probe out of band for 59 s and 61 s; only the second confirms.

**Uplinks:** [MRTM-STK-002](#MRTM-STK-002)

**Downlinks:** [MRTM-LA-002](#MRTM-LA-002)

### {#MRTM-SYS-003}MRTM-SYS-003 — Buzzer on excursion

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The monitor shall sound the buzzer within 5 s of excursion confirmation.

**Rationale**

The buzzer is the alert that reaches a nurse out of sight of the device.

**Verification**

Test: measure the time from confirmation to buzzer onset.

**Uplinks:** [MRTM-STK-001](#MRTM-STK-001)

**Downlinks:** [MRTM-LA-003](#MRTM-LA-003), [MRTM-LA-006](#MRTM-LA-006), [MRTM-PRF-002](#MRTM-PRF-002), [MRTM-SAF-001](#MRTM-SAF-001), [MRTM-SAF-006](#MRTM-SAF-006), [MRTM-SAF-007](#MRTM-SAF-007), [MRTM-SAF-009](#MRTM-SAF-009), [MRTM-SAF-010](#MRTM-SAF-010), [MRTM-SAF-014](#MRTM-SAF-014), [MRTM-SAF-023](#MRTM-SAF-023)

### {#MRTM-SYS-004}MRTM-SYS-004 — Red indicator on excursion

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The monitor shall flash the red indicator at 2 Hz within 5 s of excursion confirmation.

**Rationale**

A visual alert for a noisy room.

**Verification**

Test: measure the time from confirmation to the first red flash.

**Uplinks:** [MRTM-STK-001](#MRTM-STK-001)

**Downlinks:** [MRTM-SAF-015](#MRTM-SAF-015)

### {#MRTM-SYS-005}MRTM-SYS-005 — Warning on excursion

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The monitor shall show the excursion warning on the display within 5 s of excursion confirmation.

**Rationale**

The warning tells the nurse which way the temperature went and since when.

**Verification**

Test: measure the time from confirmation to the warning on the display.

**Uplinks:** [MRTM-STK-001](#MRTM-STK-001)

**Downlinks:** [MRTM-IFC-004](#MRTM-IFC-004), [MRTM-LA-009](#MRTM-LA-009), [MRTM-SAF-021](#MRTM-SAF-021)

### {#MRTM-SYS-006}MRTM-SYS-006 — Acknowledge silences buzzer

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The monitor shall stop the buzzer within 1 s of the acknowledge button press.

**Rationale**

Acknowledgement silences the alert; it does not end the excursion.

**Verification**

Test: press acknowledge during an alert and time the buzzer stop.

**Uplinks:** [MRTM-STK-003](#MRTM-STK-003)

**Downlinks:** [MRTM-IFC-002](#MRTM-IFC-002), [MRTM-LA-004](#MRTM-LA-004), [MRTM-SAF-019](#MRTM-SAF-019)

### {#MRTM-SYS-007}MRTM-SYS-007 — Warning stays while excursion is open

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The monitor shall keep the excursion warning on the display for the duration of the excursion.

**Rationale**

Silencing the buzzer must not hide the problem.

**Verification**

Test: acknowledge an alert and confirm the warning stays until the temperature returns to band.

**Uplinks:** [MRTM-STK-003](#MRTM-STK-003)

**Downlinks:** [MRTM-LA-009](#MRTM-LA-009)

### {#MRTM-SYS-008}MRTM-SYS-008 — Log excursion start

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The monitor shall log the excursion start event with the UTC time stamp at 1 s resolution.

**Rationale**

The history is built from the event log.

**Verification**

Test: confirm an excursion and read the logged start event.

**Uplinks:** [MRTM-STK-005](#MRTM-STK-005)

**Downlinks:** [MRTM-LA-012](#MRTM-LA-012), [MRTM-LA-015](#MRTM-LA-015)

### {#MRTM-SYS-009}MRTM-SYS-009 — Log excursion end

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The monitor shall log the excursion end event with the peak temperature of the excursion at 0.1 °C resolution.

**Rationale**

Auditors need the worst value to judge the stock.

**Verification**

Test: end an excursion with a known peak and read the logged end event.

**Uplinks:** [MRTM-STK-005](#MRTM-STK-005)

**Downlinks:** [MRTM-LA-012](#MRTM-LA-012)

### {#MRTM-SYS-010}MRTM-SYS-010 — Log acknowledgement

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The monitor shall log the acknowledgement event with the UTC time stamp at 1 s resolution.

**Rationale**

The history shows who reacted and when.

**Verification**

Test: acknowledge an alert and read the logged event.

**Uplinks:** [MRTM-STK-005](#MRTM-STK-005)

**Downlinks:** [MRTM-LA-012](#MRTM-LA-012)

### {#MRTM-SYS-011}MRTM-SYS-011 — Display resolution

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The monitor shall display the current temperature at 0.1 °C resolution.

**Rationale**

Staff compare the value with the 2 °C to 8 °C band.

**Verification**

Inspection: read the display at three probe temperatures.

**Uplinks:** [MRTM-STK-004](#MRTM-STK-004)

**Downlinks:** [MRTM-LA-010](#MRTM-LA-010), [MRTM-PRF-004](#MRTM-PRF-004)

### {#MRTM-SYS-012}MRTM-SYS-012 — Probe fault detection

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The monitor shall declare the probe fault when no sample with a correct CRC arrives for 30 s.

**Rationale**

Three missed samples mean the probe cannot be trusted.

**Verification**

Test: disconnect the probe and time the fault declaration.

**Uplinks:** [MRTM-STK-007](#MRTM-STK-007)

**Downlinks:** [MRTM-LA-022](#MRTM-LA-022), [MRTM-MNT-001](#MRTM-MNT-001), [MRTM-SAF-002](#MRTM-SAF-002), [MRTM-SAF-011](#MRTM-SAF-011)

### {#MRTM-SYS-013}MRTM-SYS-013 — Probe fault message

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The monitor shall show the probe fault message on the display within 5 s of the probe fault declaration.

**Rationale**

The technician must see which part failed.

**Verification**

Test: disconnect the probe and time the message.

**Uplinks:** [MRTM-STK-007](#MRTM-STK-007)

**Downlinks:** [MRTM-LA-011](#MRTM-LA-011)

### {#MRTM-SYS-014}MRTM-SYS-014 — Read-only event log

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The monitor shall restrict the user access to the event log to read-only.

**Rationale**

US-6: the record must be trustworthy.

**Verification**

Test: attempt to write, delete and rename log entries over USB.

**Uplinks:** [MRTM-STK-006](#MRTM-STK-006)

**Downlinks:** [MRTM-IFC-003](#MRTM-IFC-003), [MRTM-LA-014](#MRTM-LA-014)

### {#MRTM-SYS-015}MRTM-SYS-015 — Event log capacity

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The monitor shall retain 10000 events in the event log.

**Rationale**

Event Log Capacity in the data dictionary covers one year of heavy use.

**Verification**

Test: write 10000 events and read them all back.

**Uplinks:** [MRTM-STK-005](#MRTM-STK-005)

**Downlinks:** [MRTM-LA-013](#MRTM-LA-013), [MRTM-PRF-003](#MRTM-PRF-003), [MRTM-SAF-018](#MRTM-SAF-018)

### {#MRTM-SYS-016}MRTM-SYS-016 — Battery operation

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The monitor shall switch to the internal battery within 100 ms of mains power loss.

**Rationale**

US-8: monitoring must continue through a power cut.

**Verification**

Test: remove mains power and confirm sampling continues.

**Uplinks:** [MRTM-STK-008](#MRTM-STK-008)

**Downlinks:** [MRTM-ENV-001](#MRTM-ENV-001), [MRTM-LA-016](#MRTM-LA-016), [MRTM-MNT-002](#MRTM-MNT-002), [MRTM-SAF-005](#MRTM-SAF-005), [MRTM-SAF-008](#MRTM-SAF-008), [MRTM-SAF-013](#MRTM-SAF-013)

### {#MRTM-SYS-017}MRTM-SYS-017 — Allowed band

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The monitor shall use the allowed band from 2 °C to 8 °C.

**Rationale**

Review round 1, thread T02: the band lived only in the data dictionary and A-04, so no test could fail on a wrong band.

**Verification**

Test: step the probe to 1.9 °C, 2.0 °C, 8.0 °C and 8.1 °C and confirm only 1.9 °C and 8.1 °C count as outside the band.

**Uplinks:** [MRTM-STK-001](#MRTM-STK-001)

**Downlinks:** [MRTM-LA-025](#MRTM-LA-025), [MRTM-SAF-016](#MRTM-SAF-016), [MRTM-SAF-017](#MRTM-SAF-017)

### {#MRTM-SYS-018}MRTM-SYS-018 — Excursion end confirmation

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The monitor shall end the excursion after 31 consecutive samples, spanning 60 s, back inside the allowed band.

**Rationale**

Review round 1, thread T08: ending at the first sample back inside makes a fridge at the band edge start and end excursions every 10 s (alarm chatter).

**Verification**

Test: hold the probe at the limit with ±0.2 °C noise and confirm exactly one excursion start event and one excursion end event in the log.

**Uplinks:** [MRTM-STK-002](#MRTM-STK-002)

**Downlinks:** [MRTM-LA-007](#MRTM-LA-007)

### {#MRTM-SYS-019}MRTM-SYS-019 — Alarm comes back after silence

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The monitor shall sound the buzzer again 15 min after the acknowledge button press while the excursion continues.

**Rationale**

Review round 1, thread T09: silence is a paused alarm, not a cancelled one (IEC 60601-1-8 frame). 15 min is assumption A-13.

**Verification**

Test: acknowledge during an excursion, keep the probe warm, confirm the buzzer returns at 15 min ± 5 s.

**Uplinks:** [MRTM-STK-003](#MRTM-STK-003)

### {#MRTM-SYS-020}MRTM-SYS-020 — Clock drift

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The monitor shall keep the UTC time with a drift of 2 s per day or less.

**Rationale**

Review round 1, thread T10: every event carries a UTC time stamp; an audit trail needs a clock that keeps time. How the clock is set stays open (Q-10).

**Verification**

Test: run 7 days against a reference clock and confirm the difference is 14 s or less.

**Uplinks:** [MRTM-STK-005](#MRTM-STK-005)

**Downlinks:** [MRTM-LA-015](#MRTM-LA-015), [MRTM-SAF-022](#MRTM-SAF-022)

### {#MRTM-SYS-021}MRTM-SYS-021 — Event log integrity

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The monitor shall report a corrupted event log record within 1 s of reading it, using its CRC-32 checksum.

**Rationale**

Review round 1, thread T12: read-only access does not protect against a bit-flip or a torn write at power loss; Class C audit data must show corruption.

**Verification**

Test: flip one bit in a stored record and confirm the monitor reports the record as corrupted within 1 s.

**Uplinks:** [MRTM-STK-006](#MRTM-STK-006)

### {#MRTM-SYS-022}MRTM-SYS-022 — Log capacity warning

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The monitor shall show the log capacity warning on the display when the event log holds 9000 events.

**Rationale**

Review round 1, thread T13: staff must be told before history can be lost; what happens at 10000 is the data-retention ADR (Phase 4).

**Verification**

Test: preload 8999 events, add one, confirm the warning appears.

**Uplinks:** [MRTM-STK-005](#MRTM-STK-005)

**Downlinks:** [MRTM-LA-011](#MRTM-LA-011)

### {#MRTM-SYS-023}MRTM-SYS-023 — Power restore event

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The monitor shall log the power restore event with the UTC time stamp at 1 s resolution.

**Rationale**

Review round 1, thread T17: without the restore event an auditor cannot tell how long the fridge ran on battery.

**Verification**

Test: remove and restore mains and confirm both events with time stamps in the log.

**Uplinks:** [MRTM-STK-008](#MRTM-STK-008)

**Downlinks:** [MRTM-LA-018](#MRTM-LA-018)

### {#MRTM-SYS-024}MRTM-SYS-024 — Early excursion alarm

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The system shall raise an alarm within 5 seconds of a temperature excursion.

**Rationale**

Change request CR-001 (Phase 11): staff want to know at once that the fridge is warming, not a minute later. Two-tier design (decision record 0030): this early alarm is the low-priority visual tier; the confirmed high-priority buzzer tier keeps the 60 s confirmation (MRTM-SYS-002, MRTM-STK-002) against nuisance alarms (HAZ-002).

**Verification**

Test: step the probe out of band; measure the time from the first out-of-band probe reading to the red indicator's 1 Hz flash; pass when <= 5 s in 10 of 10 trials; the buzzer stays off until confirmation.

**Uplinks:** [MRTM-STK-001](#MRTM-STK-001)

**Downlinks:** [MRTM-LA-001](#MRTM-LA-001), [MRTM-LA-020](#MRTM-LA-020)

## Logical Requirement (LA) (26)

### {#MRTM-LA-001}MRTM-LA-001 — Alarm early signal latency

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The alarm logical component shall show the low-priority excursion alarm signal within 1 s of the first valid out-of-band sample.

**Rationale**

The alarm share of the 5 s early-alarm budget (sensing 2.75 s + alarm 1 s = 3.75 s, ADR-0030). Low priority in the sense of IEC 60601-1-8; source: IEC 60601-1-8 (edition assumed :2006+A1:2012+A2:2020, to be confirmed against the customer's edition).

**Verification**

Test: unit test of the budget sum; unit test of the early state; SP-01.11.

**Safety**

Class C (IEC 62304 §4.3): a failure of this logical component can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (hazard chain HAZ-001…HAZ-008, severity serious). Same class as the layer element above it.

**Uplinks:** [MRTM-SYS-024](#MRTM-SYS-024)

**Downlinks:** [MRTM-PH-007](#MRTM-PH-007), [MRTM-SW-001](#MRTM-SW-001), [MRTM-SW-005](#MRTM-SW-005)

### {#MRTM-LA-002}MRTM-LA-002 — Alarm excursion confirmation

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The alarm logical component shall confirm the excursion when 31 consecutive valid samples, spanning 60 s, are outside the allowed band.

**Rationale**

31 samples at 2 s span 60 s: the door-opening filter of MRTM-STK-002 (ADR-0031). 60 s is assumption A-04; source: WHO PQS E006 / CDC Vaccine Storage and Handling Toolkit (assumed sources, edition and clause to confirm).

**Verification**

Test: unit tests of limit_evaluator; integration INT-01.

**Safety**

Class C (IEC 62304 §4.3): a failure of this logical component can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (hazard chain HAZ-001…HAZ-008, severity serious). Same class as the layer element above it.

**Uplinks:** [MRTM-SYS-002](#MRTM-SYS-002)

**Downlinks:** [MRTM-SW-006](#MRTM-SW-006)

### {#MRTM-LA-003}MRTM-LA-003 — Alarm buzzer latency

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The alarm logical component shall sound the buzzer within 1 s of excursion confirmation.

**Rationale**

The software share of the 5 s confirmation-to-buzzer budget is one 1 s alarm cycle (ADR-0020); the rest is margin.

**Verification**

Test: unit test of the alarm item; integration INT-01.

**Safety**

Class C (IEC 62304 §4.3): a failure of this logical component can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (hazard chain HAZ-001…HAZ-008, severity serious). Same class as the layer element above it.

**Uplinks:** [MRTM-SYS-003](#MRTM-SYS-003), [MRTM-PRF-002](#MRTM-PRF-002)

**Downlinks:** [MRTM-PH-006](#MRTM-PH-006), [MRTM-SW-002](#MRTM-SW-002)

### {#MRTM-LA-004}MRTM-LA-004 — Alarm acknowledge

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The alarm logical component shall stop the buzzer within 1 s of a debounced acknowledge press.

**Rationale**

Carries MRTM-SYS-006 down; the 50 ms debounce of MRTM-IFC-002 sits inside the 1 s.

**Verification**

Test: unit tests of the alarm item.

**Safety**

Class C (IEC 62304 §4.3): a failure of this logical component can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (hazard chain HAZ-001…HAZ-008, severity serious). Same class as the layer element above it.

**Uplinks:** [MRTM-SYS-006](#MRTM-SYS-006), [MRTM-IFC-002](#MRTM-IFC-002)

**Downlinks:** [MRTM-PH-008](#MRTM-PH-008), [MRTM-SW-003](#MRTM-SW-003)

### {#MRTM-LA-005}MRTM-LA-005 — Alarm backup path

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The alarm logical component shall sound the buzzer from the backup alarm within 10 s of the last watchdog service pulse.

**Rationale**

Risk control of HAZ-003 (firmware hang), independent of the processor (ADR-0013).

**Verification**

Test: integration INT-02; SP-03.

**Safety**

Class C (IEC 62304 §4.3): a failure of this logical component can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (hazard chain HAZ-001…HAZ-008, severity serious). Same class as the layer element above it.

**Uplinks:** [MRTM-SAF-009](#MRTM-SAF-009), [MRTM-SAF-010](#MRTM-SAF-010)

**Downlinks:** [MRTM-PH-001](#MRTM-PH-001), [MRTM-PH-003](#MRTM-PH-003), [MRTM-PH-004](#MRTM-PH-004), [MRTM-PH-006](#MRTM-PH-006), [MRTM-SW-004](#MRTM-SW-004)

### {#MRTM-LA-006}MRTM-LA-006 — Alarm high-priority auditory pattern

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The alarm logical component shall sound the confirmed excursion alarm as bursts of 10 pulses with a burst repetition interval from 2.5 s to 15 s.

**Rationale**

Derived from the standard, not from a stakeholder: IEC 60601-1-8 high-priority auditory alarm signal (§6.3.3, table 3); source: IEC 60601-1-8 (edition assumed :2006+A1:2012+A2:2020, to be confirmed against the customer's edition). The design today sounds a continuous tone (MRTM-SYS-003 as built) — delta D-2 in 13-assessment/iec60601-1-8-check.md. NOT YET DECOMPOSED OR IMPLEMENTED: owner decision Q-20.

**Verification**

Test (planned): SP-06 with a sound recorder; pulse count and interval.

**Safety**

Class C (IEC 62304 §4.3): a failure of this logical component can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (hazard chain HAZ-001…HAZ-008, severity serious). Same class as the layer element above it.

**Uplinks:** [MRTM-SYS-003](#MRTM-SYS-003)

### {#MRTM-LA-007}MRTM-LA-007 — Alarm excursion end

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The alarm logical component shall end the excursion after 31 consecutive valid samples, spanning 60 s, inside the allowed band.

**Rationale**

Symmetric with MRTM-LA-002, so a sensor reading near the edge does not toggle the alarm (ADR-0031).

**Verification**

Test: unit tests of limit_evaluator.

**Safety**

Class C (IEC 62304 §4.3): a failure of this logical component can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (hazard chain HAZ-001…HAZ-008, severity serious). Same class as the layer element above it.

**Uplinks:** [MRTM-SYS-018](#MRTM-SYS-018)

**Downlinks:** [MRTM-SW-007](#MRTM-SW-007)

### {#MRTM-LA-008}MRTM-LA-008 — Alarm backup hold-up

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The alarm logical component shall sound the backup alarm for 60 s or more after the loss of both mains and battery power.

**Rationale**

Risk control of HAZ-005: the last warning when all power is gone (ADR-0013). 60 s is assumption A-18.

**Verification**

Test: SP-03 with both supplies removed.

**Safety**

Class C (IEC 62304 §4.3): a failure of this logical component can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (hazard chain HAZ-001…HAZ-008, severity serious). Same class as the layer element above it.

**Uplinks:** [MRTM-SAF-013](#MRTM-SAF-013)

**Downlinks:** [MRTM-PH-002](#MRTM-PH-002), [MRTM-PH-005](#MRTM-PH-005)

### {#MRTM-LA-009}MRTM-LA-009 — Display excursion warning

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The display logical component shall show the excursion warning within 1 s of excursion confirmation until the excursion ends.

**Rationale**

The display share of the 5 s of MRTM-SYS-005.

**Verification**

Test: unit tests of the display item; integration INT-01.

**Safety**

Class C (IEC 62304 §4.3): a failure of this logical component can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (hazard chain HAZ-001…HAZ-008, severity serious). Same class as the layer element above it.

**Uplinks:** [MRTM-SYS-005](#MRTM-SYS-005), [MRTM-SYS-007](#MRTM-SYS-007)

**Downlinks:** [MRTM-SW-008](#MRTM-SW-008)

### {#MRTM-LA-010}MRTM-LA-010 — Display temperature

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The display logical component shall show the current temperature at 0.1 °C resolution in digits of 5 mm or more, refreshed at a period of 10 s.

**Rationale**

Readable from the fridge door; 10 s refresh avoids flicker of the last digit.

**Verification**

Test: SP-09.

**Safety**

Class C (IEC 62304 §4.3): a failure of this logical component can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (hazard chain HAZ-001…HAZ-008, severity serious). Same class as the layer element above it.

**Uplinks:** [MRTM-SYS-011](#MRTM-SYS-011), [MRTM-PRF-004](#MRTM-PRF-004), [MRTM-IFC-004](#MRTM-IFC-004)

**Downlinks:** [MRTM-PH-009](#MRTM-PH-009), [MRTM-SW-009](#MRTM-SW-009)

### {#MRTM-LA-011}MRTM-LA-011 — Display messages

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The display logical component shall show the probe fault, calibration due, band limits and log capacity messages within 1 s of their cause.

**Rationale**

Two of these messages are risk controls with no other signal (MRTM-SAF-012 HAZ-004, MRTM-SAF-016 HAZ-007) — why this logical component stays class C (ADR-0034).

**Verification**

Test: unit tests of the display item; SP-05; SP-09.

**Safety**

Class C (IEC 62304 §4.3): a failure of this logical component can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (hazard chain HAZ-001…HAZ-008, severity serious). Same class as the layer element above it.

**Uplinks:** [MRTM-SYS-013](#MRTM-SYS-013), [MRTM-SAF-012](#MRTM-SAF-012), [MRTM-SAF-016](#MRTM-SAF-016), [MRTM-SYS-022](#MRTM-SYS-022)

**Downlinks:** [MRTM-SW-008](#MRTM-SW-008)

### {#MRTM-LA-012}MRTM-LA-012 — Logging record write

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The logging logical component shall store each event record in 2 separate flash sectors within 1 s of the event.

**Rationale**

Two copies survive one bad sector (HAZ-008).

**Verification**

Test: unit tests of the log item; SP-07.

**Safety**

Class C (IEC 62304 §4.3): a failure of this logical component can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (hazard chain HAZ-001…HAZ-008, severity serious). Same class as the layer element above it.

**Uplinks:** [MRTM-SAF-018](#MRTM-SAF-018), [MRTM-SYS-008](#MRTM-SYS-008), [MRTM-SYS-009](#MRTM-SYS-009), [MRTM-SYS-010](#MRTM-SYS-010)

**Downlinks:** [MRTM-SW-010](#MRTM-SW-010)

### {#MRTM-LA-013}MRTM-LA-013 — Logging retention

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

When the **Event Log** reaches its capacity, the logging logical component shall store the newest 10000 records in the **Event Log**.

**Rationale**

10 000 records is assumption A-04 (about 2 years of events); source: WHO PQS E006 / CDC Vaccine Storage and Handling Toolkit (assumed sources, edition and clause to confirm).

**Verification**

Test: unit tests of the log item; SP-07.

**Safety**

Class C (IEC 62304 §4.3): a failure of this logical component can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (hazard chain HAZ-001…HAZ-008, severity serious). Same class as the layer element above it.

**Uplinks:** [MRTM-SYS-015](#MRTM-SYS-015)

**Downlinks:** [MRTM-SW-011](#MRTM-SW-011)

### {#MRTM-LA-014}MRTM-LA-014 — Logging read-only export

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The logging logical component shall give the USB host read-only access to the event records within 30 s of connection.

**Rationale**

The history for audit (MRTM-STK-005) must not be changeable from outside (MRTM-STK-006).

**Verification**

Test: SP-08.

**Safety**

Class C (IEC 62304 §4.3): a failure of this logical component can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (hazard chain HAZ-001…HAZ-008, severity serious). Same class as the layer element above it.

**Uplinks:** [MRTM-SYS-014](#MRTM-SYS-014), [MRTM-IFC-003](#MRTM-IFC-003), [MRTM-PRF-003](#MRTM-PRF-003)

**Downlinks:** [MRTM-SW-012](#MRTM-SW-012), [MRTM-SW-013](#MRTM-SW-013)

### {#MRTM-LA-015}MRTM-LA-015 — Logging time stamp

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The logging logical component shall time-stamp each record with UTC at 1 s resolution with a drift of 2 s per day or less.

**Rationale**

2 s per day is assumption A-14; source: WHO PQS E006 / CDC Vaccine Storage and Handling Toolkit (assumed sources, edition and clause to confirm).

**Verification**

Test: SP-12.

**Safety**

Class C (IEC 62304 §4.3): a failure of this logical component can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (hazard chain HAZ-001…HAZ-008, severity serious). Same class as the layer element above it.

**Uplinks:** [MRTM-SYS-020](#MRTM-SYS-020), [MRTM-SYS-008](#MRTM-SYS-008), [MRTM-SAF-022](#MRTM-SAF-022)

**Downlinks:** [MRTM-PH-010](#MRTM-PH-010)

### {#MRTM-LA-016}MRTM-LA-016 — Power switch-over

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The power logical component shall switch the load to the battery within 100 ms of mains power loss.

**Rationale**

Shorter than the hold-up of the processor supply, so the firmware never resets on a mains cut.

**Verification**

Test: SP-04 oscilloscope.

**Safety**

Class C (IEC 62304 §4.3): a failure of this logical component can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (hazard chain HAZ-001…HAZ-008, severity serious). Same class as the layer element above it.

**Uplinks:** [MRTM-SYS-016](#MRTM-SYS-016)

**Downlinks:** [MRTM-PH-012](#MRTM-PH-012)

### {#MRTM-LA-017}MRTM-LA-017 — Power battery time

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The power logical component shall supply the monitor from the battery for 4 h.

**Rationale**

4 h is the mains-loss need of MRTM-STK-008 (assumption A-11).

**Verification**

Test: SP-04.

**Safety**

Class C (IEC 62304 §4.3): a failure of this logical component can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (hazard chain HAZ-001…HAZ-008, severity serious). Same class as the layer element above it.

**Uplinks:** [MRTM-ENV-001](#MRTM-ENV-001)

**Downlinks:** [MRTM-PH-011](#MRTM-PH-011)

### {#MRTM-LA-018}MRTM-LA-018 — Power events

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The power logical component shall report mains loss, mains restore and battery voltage below 3.4 V within 1 s.

**Rationale**

Feeds the log (MRTM-SAF-005) and the low-battery alarm (MRTM-SAF-008).

**Verification**

Test: unit tests of the power item; integration INT-05.

**Safety**

Class C (IEC 62304 §4.3): a failure of this logical component can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (hazard chain HAZ-001…HAZ-008, severity serious). Same class as the layer element above it.

**Uplinks:** [MRTM-SAF-005](#MRTM-SAF-005), [MRTM-SAF-008](#MRTM-SAF-008), [MRTM-SYS-023](#MRTM-SYS-023)

**Downlinks:** [MRTM-SW-014](#MRTM-SW-014), [MRTM-SW-015](#MRTM-SW-015)

### {#MRTM-LA-019}MRTM-LA-019 — Sensing sample period

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The sensing logical component shall deliver one fridge air temperature sample at a period of 2 s.

**Rationale**

Allocates the system sampling period to the logical component that owns the probe. The 2 s figure is ADR-0031; source: WHO PQS E006 / CDC Vaccine Storage and Handling Toolkit (assumed sources, edition and clause to confirm).

**Verification**

Test: SP-01 bench trace of sample time stamps; unit tests of the sensor item.

**Safety**

Class C (IEC 62304 §4.3): a failure of this logical component can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (hazard chain HAZ-001…HAZ-008, severity serious). Same class as the layer element above it.

**Uplinks:** [MRTM-SYS-001](#MRTM-SYS-001)

**Downlinks:** [MRTM-SW-016](#MRTM-SW-016)

### {#MRTM-LA-020}MRTM-LA-020 — Sensing sample latency

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The sensing logical component shall deliver each sample within 750 ms of the start of its conversion.

**Rationale**

The sensing share of the 5 s early-alarm budget: 2 s wait + 750 ms conversion; the alarm logical component holds the remaining 1 s (ADR-0030). 750 ms is the 12-bit conversion time of the chosen probe class (A-40).

**Verification**

Test: unit test of the budget sum; SP-01.11 timed trials.

**Safety**

Class C (IEC 62304 §4.3): a failure of this logical component can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (hazard chain HAZ-001…HAZ-008, severity serious). Same class as the layer element above it.

**Uplinks:** [MRTM-SYS-024](#MRTM-SYS-024)

**Downlinks:** [MRTM-PH-013](#MRTM-PH-013), [MRTM-SW-016](#MRTM-SW-016)

### {#MRTM-LA-021}MRTM-LA-021 — Sensing accuracy

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The sensing logical component shall measure the fridge air temperature with an accuracy of ±0.5 °C over the range 0 °C to 15 °C.

**Rationale**

Carries the system accuracy down unchanged: the probe is the only measuring part. source: WHO PQS E006 / CDC Vaccine Storage and Handling Toolkit (assumed sources, edition and clause to confirm).

**Verification**

Test: SP-10 at 0, 2, 5, 8, 15 °C against a reference thermometer.

**Safety**

Class C (IEC 62304 §4.3): a failure of this logical component can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (hazard chain HAZ-001…HAZ-008, severity serious). Same class as the layer element above it.

**Uplinks:** [MRTM-PRF-001](#MRTM-PRF-001), [MRTM-ENV-004](#MRTM-ENV-004)

**Downlinks:** [MRTM-PH-014](#MRTM-PH-014)

### {#MRTM-LA-022}MRTM-LA-022 — Sensing invalid sample

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The sensing logical component shall mark a sample invalid when its CRC-8 check fails or its value is outside -30 °C to 50 °C.

**Rationale**

An invalid sample must never count toward an excursion or its end (A-29); the probe fault timer counts invalid samples.

**Verification**

Test: unit tests of the sensor item; SP-02.

**Safety**

Class C (IEC 62304 §4.3): a failure of this logical component can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (hazard chain HAZ-001…HAZ-008, severity serious). Same class as the layer element above it.

**Uplinks:** [MRTM-SYS-012](#MRTM-SYS-012), [MRTM-SAF-003](#MRTM-SAF-003)

**Downlinks:** [MRTM-PH-015](#MRTM-PH-015), [MRTM-SW-017](#MRTM-SW-017)

### {#MRTM-LA-023}MRTM-LA-023 — Supervision restart

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The supervision logical component shall restart the monitoring software within 2 s of a software watchdog timeout.

**Rationale**

Risk control of HAZ-003 (firmware hang).

**Verification**

Test: SP-03.

**Safety**

Class C (IEC 62304 §4.3): a failure of this logical component can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (hazard chain HAZ-001…HAZ-008, severity serious). Same class as the layer element above it.

**Uplinks:** [MRTM-SAF-004](#MRTM-SAF-004), [MRTM-SAF-006](#MRTM-SAF-006)

**Downlinks:** [MRTM-PH-016](#MRTM-PH-016), [MRTM-SW-018](#MRTM-SW-018)

### {#MRTM-LA-024}MRTM-LA-024 — Supervision power-up tests

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The supervision logical component shall test the buzzer within 5 s and the backup alarm within 15 s of power-up.

**Rationale**

A silent alarm path must be found at power-up, not at the next excursion (HAZ-006).

**Verification**

Test: unit tests of the supervisor item; SP-05.

**Safety**

Class C (IEC 62304 §4.3): a failure of this logical component can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (hazard chain HAZ-001…HAZ-008, severity serious). Same class as the layer element above it.

**Uplinks:** [MRTM-SAF-007](#MRTM-SAF-007), [MRTM-SAF-023](#MRTM-SAF-023)

**Downlinks:** [MRTM-SW-019](#MRTM-SW-019)

### {#MRTM-LA-025}MRTM-LA-025 — Supervision band check

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

When a stored allowed band fails its CRC-32 check, the supervision logical component shall disable that **Allowed Band**.

**Rationale**

No band is better than a wrong band: the monitor goes fail-safe and sounds (HAZ-007).

**Verification**

Test: integration INT-03.

**Safety**

Class C (IEC 62304 §4.3): a failure of this logical component can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (hazard chain HAZ-001…HAZ-008, severity serious). Same class as the layer element above it.

**Uplinks:** [MRTM-SAF-017](#MRTM-SAF-017), [MRTM-SYS-017](#MRTM-SYS-017)

**Downlinks:** [MRTM-SW-020](#MRTM-SW-020)

### {#MRTM-LA-026}MRTM-LA-026 — Supervision pulse stop

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The supervision logical component shall stop the watchdog service pulses within 2 s of the alarm item missing its 1 s cycle.

**Rationale**

Hands a stuck alarm item to the backup alarm (MRTM-LA-005).

**Verification**

Test: integration INT-02.

**Safety**

Class C (IEC 62304 §4.3): a failure of this logical component can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (hazard chain HAZ-001…HAZ-008, severity serious). Same class as the layer element above it.

**Uplinks:** [MRTM-SAF-010](#MRTM-SAF-010)

**Downlinks:** [MRTM-SW-018](#MRTM-SW-018)

## Physical Requirement (PA hardware) (16)

### {#MRTM-PH-001}MRTM-PH-001 — Backup alarm timeout

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The backup alarm shall drive the buzzer within 10 s of the last watchdog service pulse.

**Rationale**

The alarm subsystem's backup path, owned by one assembly that needs no processor (ADR-0013).

**Verification**

Test: SP-03.

**Safety**

Class C (IEC 62304 §4.3): a failure of this assembly can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (hazard chain HAZ-001…HAZ-008, severity serious). Same class as the layer element above it.

**Uplinks:** [MRTM-LA-005](#MRTM-LA-005)

**Downlinks:** [MRTM-CI-005](#MRTM-CI-005)

### {#MRTM-PH-002}MRTM-PH-002 — Backup alarm hold-up

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The backup alarm shall drive the buzzer for 60 s or more after the loss of both mains and battery power.

**Rationale**

Its own stored energy; nothing else in the monitor is powered then.

**Verification**

Test: SP-03.

**Safety**

Class C (IEC 62304 §4.3): a failure of this assembly can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (hazard chain HAZ-001…HAZ-008, severity serious). Same class as the layer element above it.

**Uplinks:** [MRTM-LA-008](#MRTM-LA-008)

**Downlinks:** [MRTM-CI-005](#MRTM-CI-005)

### {#MRTM-PH-003}MRTM-PH-003 — Backup driver response

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The backup driver shall drive the buzzer backup input within 100 ms of the timeout output.

**Rationale**

A transistor stage; 100 ms keeps the sum under 10 s with the timer's 9.9 s.

**Verification**

Test: SP-03 oscilloscope.

**Safety**

Hardware part: IEC 62304 classes software only. `C` here means the part carries a class-C risk control (ISO 14971); it keeps Sanad's rigour at 4 for its requirements.

**Uplinks:** [MRTM-LA-005](#MRTM-LA-005)

**Downlinks:** [MRTM-CI-005](#MRTM-CI-005)

### {#MRTM-PH-004}MRTM-PH-004 — Backup timer period

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The backup timer shall assert its timeout output 9 s ± 0.9 s after the last service pulse.

**Rationale**

9.9 s worst case stays inside the 10 s of MRTM-PH-001; the tolerance is a synthetic part-class figure (A-40).

**Verification**

Test: SP-03 with the pulses stopped.

**Safety**

Hardware part: IEC 62304 classes software only. `C` here means the part carries a class-C risk control (ISO 14971); it keeps Sanad's rigour at 4 for its requirements.

**Uplinks:** [MRTM-LA-005](#MRTM-LA-005)

**Downlinks:** [MRTM-CI-005](#MRTM-CI-005)

### {#MRTM-PH-005}MRTM-PH-005 — Hold-up energy

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The hold-up store shall supply the backup timer and the backup driver for 60 s or more after all power is lost.

**Rationale**

Sized in 09-hardware/power-budget.md (133 s computed).

**Verification**

Test: SP-03 with both supplies removed.

**Safety**

Hardware part: IEC 62304 classes software only. `C` here means the part carries a class-C risk control (ISO 14971); it keeps Sanad's rigour at 4 for its requirements.

**Uplinks:** [MRTM-LA-008](#MRTM-LA-008)

**Downlinks:** [MRTM-CI-005](#MRTM-CI-005)

### {#MRTM-PH-006}MRTM-PH-006 — Buzzer loudness

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The buzzer shall produce a sound pressure level of 65 dB(A) or more at 1 m when either drive input is active.

**Rationale**

One sounder, two OR-ed drive inputs: the firmware and the backup alarm (ADR-0017). 65 dB(A) is a synthetic figure (A-40).

**Verification**

Test: SP-06 sound level meter at 1 m.

**Safety**

Hardware part: IEC 62304 classes software only. `C` here means the part carries a class-C risk control (ISO 14971); it keeps Sanad's rigour at 4 for its requirements.

**Uplinks:** [MRTM-LA-003](#MRTM-LA-003), [MRTM-LA-005](#MRTM-LA-005)

**Downlinks:** [MRTM-CI-002](#MRTM-CI-002)

### {#MRTM-PH-007}MRTM-PH-007 — Red indicator response

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The red indicator shall follow its drive input within 10 ms.

**Rationale**

A flash pattern is only as good as the lamp that shows it; 10 ms is small against a 250 ms half-period.

**Verification**

Test: SP-01 oscilloscope on the drive and a light sensor.

**Safety**

Hardware part: IEC 62304 classes software only. `C` here means the part carries a class-C risk control (ISO 14971); it keeps Sanad's rigour at 4 for its requirements.

**Uplinks:** [MRTM-LA-001](#MRTM-LA-001)

**Downlinks:** [MRTM-CI-002](#MRTM-CI-002)

### {#MRTM-PH-008}MRTM-PH-008 — Acknowledge button contact

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

While a clinic staff member presses the acknowledge button, the button shall close the contact that signals an **Acknowledgement**.

**Rationale**

A momentary contact; the alarm item debounces it (MRTM-SW-003).

**Verification**

Inspection of the part; SP-01 acknowledge step.

**Safety**

Hardware part: IEC 62304 classes software only. `C` here means the part carries a class-C risk control (ISO 14971); it keeps Sanad's rigour at 4 for its requirements.

**Uplinks:** [MRTM-LA-004](#MRTM-LA-004)

**Downlinks:** [MRTM-CI-002](#MRTM-CI-002)

### {#MRTM-PH-009}MRTM-PH-009 — Panel digit height

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The display panel shall draw the temperature digits at a character height of 5 mm or more.

**Rationale**

Panel size and font chosen in ADR-0016.

**Verification**

Inspection: SP-09 ruler on the panel.

**Safety**

Hardware part: IEC 62304 classes software only. `C` here means the part carries a class-C risk control (ISO 14971); it keeps Sanad's rigour at 4 for its requirements.

**Uplinks:** [MRTM-LA-010](#MRTM-LA-010)

**Downlinks:** [MRTM-CI-004](#MRTM-CI-004)

### {#MRTM-PH-010}MRTM-PH-010 — Clock drift

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The real-time clock shall keep time with a drift of 2 s per day or less from 10 °C to 35 °C.

**Rationale**

A temperature-compensated clock part (ADR-0016); synthetic figure (A-40).

**Verification**

Test: SP-12.

**Safety**

Hardware part: IEC 62304 classes software only. `C` here means the part carries a class-C risk control (ISO 14971); it keeps Sanad's rigour at 4 for its requirements.

**Uplinks:** [MRTM-LA-015](#MRTM-LA-015)

**Downlinks:** [MRTM-CI-002](#MRTM-CI-002)

### {#MRTM-PH-011}MRTM-PH-011 — Battery capacity

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The battery shall store 2000 mAh or more at 3.7 V nominal.

**Rationale**

Gives 49 h computed against the 4 h need (09-hardware/power-budget.md); synthetic part (A-40).

**Verification**

Inspection of the part; SP-04.

**Safety**

Hardware part: IEC 62304 classes software only. `C` here means the part carries a class-C risk control (ISO 14971); it keeps Sanad's rigour at 4 for its requirements.

**Uplinks:** [MRTM-LA-017](#MRTM-LA-017)

**Downlinks:** [MRTM-CI-006](#MRTM-CI-006)

### {#MRTM-PH-012}MRTM-PH-012 — Power path switch

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The power path shall switch the load from mains to battery within 100 ms.

**Rationale**

A diode-OR power path; no firmware in the loop.

**Verification**

Test: SP-04.

**Safety**

Hardware part: IEC 62304 classes software only. `C` here means the part carries a class-C risk control (ISO 14971); it keeps Sanad's rigour at 4 for its requirements.

**Uplinks:** [MRTM-LA-016](#MRTM-LA-016)

**Downlinks:** [MRTM-CI-002](#MRTM-CI-002)

### {#MRTM-PH-013}MRTM-PH-013 — Probe conversion time

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The probe shall complete a 12-bit temperature conversion within 750 ms.

**Rationale**

Chosen part class: 1-Wire digital probe (ADR-0009, ADR-0015). Figure from the part class, synthetic (A-40).

**Verification**

Inspection of the part data; SP-10 bus capture.

**Safety**

Hardware part: IEC 62304 classes software only. `C` here means the part carries a class-C risk control (ISO 14971); it keeps Sanad's rigour at 4 for its requirements.

**Uplinks:** [MRTM-LA-020](#MRTM-LA-020)

**Downlinks:** [MRTM-CI-003](#MRTM-CI-003)

### {#MRTM-PH-014}MRTM-PH-014 — Probe accuracy

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The probe shall read the air temperature with an accuracy of ±0.5 °C from -10 °C to 50 °C.

**Rationale**

The sensing accuracy is all probe: the firmware only converts units (A-40).

**Verification**

Test: SP-10.

**Safety**

Hardware part: IEC 62304 classes software only. `C` here means the part carries a class-C risk control (ISO 14971); it keeps Sanad's rigour at 4 for its requirements.

**Uplinks:** [MRTM-LA-021](#MRTM-LA-021)

**Downlinks:** [MRTM-CI-003](#MRTM-CI-003)

### {#MRTM-PH-015}MRTM-PH-015 — Probe scratchpad check

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

When the sensor item reads the scratchpad, the probe shall send a CRC-8 value with the **Sample** data.

**Rationale**

The CRC-8 is what lets the sensor item tell a bad read from a real temperature (ADR-0009).

**Verification**

Inspection of a bus capture in SP-10.

**Safety**

Hardware part: IEC 62304 classes software only. `C` here means the part carries a class-C risk control (ISO 14971); it keeps Sanad's rigour at 4 for its requirements.

**Uplinks:** [MRTM-LA-022](#MRTM-LA-022)

**Downlinks:** [MRTM-CI-003](#MRTM-CI-003)

### {#MRTM-PH-016}MRTM-PH-016 — Processor watchdog reset

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The microcontroller shall reset within 1 s of its hardware watchdog expiry.

**Rationale**

The processor's own watchdog is the last software-independent restart (ADR-0018).

**Verification**

Test: SP-03.

**Safety**

Hardware part: IEC 62304 classes software only. `C` here means the part carries a class-C risk control (ISO 14971); it keeps Sanad's rigour at 4 for its requirements.

**Uplinks:** [MRTM-LA-023](#MRTM-LA-023)

**Downlinks:** [MRTM-CI-002](#MRTM-CI-002)

## Software Requirement (PA software) (20)

### {#MRTM-SW-001}MRTM-SW-001 — Alarm item early light

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The alarm item shall flash the red indicator at 1 Hz within one 1 s alarm cycle of the early excursion report.

**Rationale**

The visual half of the early tier (ADR-0030). Colour and rate differ from IEC 60601-1-8 low priority (delta D-1; assumption A-42).

**Verification**

Test: unit tests of alarm_mgr.

**Safety**

Class C (IEC 62304 §4.3): a failure of this software item can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (hazard chain HAZ-001…HAZ-008, severity serious). Same class as the layer element above it.

**Uplinks:** [MRTM-LA-001](#MRTM-LA-001)

**Downlinks:** [MRTM-CI-001](#MRTM-CI-001)

### {#MRTM-SW-002}MRTM-SW-002 — Alarm item buzzer on

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The alarm item shall switch the buzzer drive on within one 1 s alarm cycle of the confirmed excursion report.

**Rationale**

The software share of MRTM-LA-003; the alarm task runs every 1 s (ADR-0019).

**Verification**

Test: unit tests of alarm_mgr.

**Safety**

Class C (IEC 62304 §4.3): a failure of this software item can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (hazard chain HAZ-001…HAZ-008, severity serious). Same class as the layer element above it.

**Uplinks:** [MRTM-LA-003](#MRTM-LA-003)

**Downlinks:** [MRTM-CI-001](#MRTM-CI-001)

### {#MRTM-SW-003}MRTM-SW-003 — Alarm item buzzer off

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The alarm item shall switch the buzzer drive off within one 1 s alarm cycle of a debounced acknowledge press.

**Rationale**

The button is read with a 50 ms debounce inside the alarm item (MRTM-IFC-002).

**Verification**

Test: unit tests of alarm_mgr.

**Safety**

Class C (IEC 62304 §4.3): a failure of this software item can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (hazard chain HAZ-001…HAZ-008, severity serious). Same class as the layer element above it.

**Uplinks:** [MRTM-LA-004](#MRTM-LA-004)

**Downlinks:** [MRTM-CI-001](#MRTM-CI-001)

### {#MRTM-SW-004}MRTM-SW-004 — Alarm item heartbeat

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The alarm item shall advance its heartbeat counter once per 1 s alarm cycle.

**Rationale**

The supervisor item stops the watchdog pulses when this counter stops (MRTM-SW-018), which lets the backup alarm sound.

**Verification**

Test: unit tests of alarm_mgr.

**Safety**

Class C (IEC 62304 §4.3): a failure of this software item can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (hazard chain HAZ-001…HAZ-008, severity serious). Same class as the layer element above it.

**Uplinks:** [MRTM-LA-005](#MRTM-LA-005)

**Downlinks:** [MRTM-CI-001](#MRTM-CI-001)

### {#MRTM-SW-005}MRTM-SW-005 — Excursion item early report

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The excursion item shall report the early excursion within the 2 s sample period of the first valid sample outside the allowed band.

**Rationale**

Starts the low-priority signal without waiting for confirmation (ADR-0030). A compile-time check holds sample + conversion + alarm cycle ≤ 5 s.

**Verification**

Test: unit tests of limit_evaluator, including the budget test.

**Safety**

Class C (IEC 62304 §4.3): a failure of this software item can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (hazard chain HAZ-001…HAZ-008, severity serious). Same class as the layer element above it.

**Uplinks:** [MRTM-LA-001](#MRTM-LA-001)

**Downlinks:** [MRTM-CI-001](#MRTM-CI-001)

### {#MRTM-SW-006}MRTM-SW-006 — Excursion item confirmation

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The excursion item shall report the confirmed excursion at the 31st consecutive valid sample outside the allowed band, 60 s after the first of them.

**Rationale**

The 31-sample count is a constant (MRTM_CONFIRM_SAMPLES) that the budget test ties to the 60 s span.

**Verification**

Test: unit tests of limit_evaluator, including the budget test.

**Safety**

Class C (IEC 62304 §4.3): a failure of this software item can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (hazard chain HAZ-001…HAZ-008, severity serious). Same class as the layer element above it.

**Uplinks:** [MRTM-LA-002](#MRTM-LA-002)

**Downlinks:** [MRTM-CI-001](#MRTM-CI-001)

### {#MRTM-SW-007}MRTM-SW-007 — Excursion item end

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The excursion item shall report the excursion end at the 31st consecutive valid sample inside the allowed band, 60 s after the first of them.

**Rationale**

Same count as confirmation, so an excursion needs 60 s of good air to end.

**Verification**

Test: unit tests of limit_evaluator.

**Safety**

Class C (IEC 62304 §4.3): a failure of this software item can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (hazard chain HAZ-001…HAZ-008, severity serious). Same class as the layer element above it.

**Uplinks:** [MRTM-LA-007](#MRTM-LA-007)

**Downlinks:** [MRTM-CI-001](#MRTM-CI-001)

### {#MRTM-SW-008}MRTM-SW-008 — Display item redraw

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The display item shall redraw the frame within 1 s of a state change message.

**Rationale**

The display task runs every 1 s (ADR-0019).

**Verification**

Test: unit tests of display_mgr.

**Safety**

Stays class C (IEC 62304 §4.3): it carries two risk controls that have no other signal — calibration due (SAF-012, HAZ-004) and band limits at power-up (SAF-016, HAZ-007). Segregating it would not lower its class (ADR-0034).

**Uplinks:** [MRTM-LA-009](#MRTM-LA-009), [MRTM-LA-011](#MRTM-LA-011)

**Downlinks:** [MRTM-CI-001](#MRTM-CI-001)

### {#MRTM-SW-009}MRTM-SW-009 — Display item number rate

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The display item shall change the displayed temperature at most once per 10 s, at 0.1 °C resolution.

**Rationale**

Carries MRTM-LA-010's refresh down to the software.

**Verification**

Test: unit tests of display_mgr.

**Safety**

Stays class C (IEC 62304 §4.3): it carries two risk controls that have no other signal — calibration due (SAF-012, HAZ-004) and band limits at power-up (SAF-016, HAZ-007). Segregating it would not lower its class (ADR-0034).

**Uplinks:** [MRTM-LA-010](#MRTM-LA-010)

**Downlinks:** [MRTM-CI-001](#MRTM-CI-001)

### {#MRTM-SW-010}MRTM-SW-010 — Log item two copies

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The log item shall write each record with its CRC-32 to 2 separate flash sectors within 1 s of the event.

**Rationale**

The log task runs every 1 s (ADR-0019).

**Verification**

Test: unit tests of event_log and history_ring.

**Safety**

Class C (IEC 62304 §4.3): a failure of this software item can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (hazard chain HAZ-001…HAZ-008, severity serious). Same class as the layer element above it.

**Uplinks:** [MRTM-LA-012](#MRTM-LA-012)

**Downlinks:** [MRTM-CI-001](#MRTM-CI-001)

### {#MRTM-SW-011}MRTM-SW-011 — Log item ring

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

When the **Event Log** holds 10000 records, the log item shall write each new **Event Record** over the oldest one.

**Rationale**

A ring: the log never stops accepting events (HAZ-008).

**Verification**

Test: unit tests of history_ring.

**Safety**

Class C (IEC 62304 §4.3): a failure of this software item can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (hazard chain HAZ-001…HAZ-008, severity serious). Same class as the layer element above it.

**Uplinks:** [MRTM-LA-013](#MRTM-LA-013)

**Downlinks:** [MRTM-CI-001](#MRTM-CI-001)

### {#MRTM-SW-012}MRTM-SW-012 — USB item volume

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

B

**derived**

false

**Description**

The USB item shall present the event log as a read-only mass-storage volume within 30 s of connection.

**Rationale**

Any computer can read it without a driver (ADR-0011).

**Verification**

Test: unit tests of usb_export; SP-08.

**Safety**

Class B (IEC 62304 §4.3), one below its parent logging (C). Its failure can only lose or garble an exported COPY of the history: the log itself, the alarm and the screen do not depend on it. Segregation (IEC 62304 §5.3.5): (1) it reads the ring only through the log item's read-only accessor and refuses every host write (MRTM-SW-013); (2) it runs in its own lowest-priority task on core 0, apart from the safety tasks on core 1; (3) it owns no data another item reads; (4) the supervisor's task watchdog catches a hang; (5) every record read carries a CRC-32. Weakness, said plainly: FreeRTOS on this processor gives no memory protection between tasks, so (1)–(3) rest on design and static analysis (assumption A-43, risk R-19). ADR-0034.

**Uplinks:** [MRTM-LA-014](#MRTM-LA-014)

**Downlinks:** [MRTM-CI-001](#MRTM-CI-001)

### {#MRTM-SW-013}MRTM-SW-013 — USB item read-only access

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

B

**derived**

false

**Description**

When the USB host sends a write request, the USB item shall inhibit the write to the **Event Log**.

**Rationale**

The segregation argument of this class B item rests on it (ADR-0034): the USB item cannot change the log.

**Verification**

Test: unit tests of usb_export.

**Safety**

Class B (IEC 62304 §4.3), one below its parent logging (C). Its failure can only lose or garble an exported COPY of the history: the log itself, the alarm and the screen do not depend on it. Segregation (IEC 62304 §5.3.5): (1) it reads the ring only through the log item's read-only accessor and refuses every host write (MRTM-SW-013); (2) it runs in its own lowest-priority task on core 0, apart from the safety tasks on core 1; (3) it owns no data another item reads; (4) the supervisor's task watchdog catches a hang; (5) every record read carries a CRC-32. Weakness, said plainly: FreeRTOS on this processor gives no memory protection between tasks, so (1)–(3) rest on design and static analysis (assumption A-43, risk R-19). ADR-0034.

**Uplinks:** [MRTM-LA-014](#MRTM-LA-014)

**Downlinks:** [MRTM-CI-001](#MRTM-CI-001)

### {#MRTM-SW-014}MRTM-SW-014 — Power item mains events

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The power item shall post the mains-lost and mains-restored signals within 1 s of the mains sense edge.

**Rationale**

The power item reads the sense input every 1 s cycle.

**Verification**

Test: unit tests of power_mon.

**Safety**

Class C (IEC 62304 §4.3): a failure of this software item can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (hazard chain HAZ-001…HAZ-008, severity serious). Same class as the layer element above it.

**Uplinks:** [MRTM-LA-018](#MRTM-LA-018)

**Downlinks:** [MRTM-CI-001](#MRTM-CI-001)

### {#MRTM-SW-015}MRTM-SW-015 — Power item battery low

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The power item shall post the battery-low signal after 2 consecutive battery readings below 3.4 V.

**Rationale**

Two readings filter one noisy conversion; 2 s stays inside the 5 s of MRTM-SAF-008.

**Verification**

Test: unit tests of power_mon.

**Safety**

Class C (IEC 62304 §4.3): a failure of this software item can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (hazard chain HAZ-001…HAZ-008, severity serious). Same class as the layer element above it.

**Uplinks:** [MRTM-LA-018](#MRTM-LA-018)

**Downlinks:** [MRTM-CI-001](#MRTM-CI-001)

### {#MRTM-SW-016}MRTM-SW-016 — Sensor item conversion start

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The sensor item shall start one probe conversion at a period of 2 s and read the scratchpad 750 ms after the start.

**Rationale**

The software half of the sensing period and latency; runs in the sensor task (ADR-0019).

**Verification**

Test: unit tests of sensor_sampler.

**Safety**

Class C (IEC 62304 §4.3): a failure of this software item can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (hazard chain HAZ-001…HAZ-008, severity serious). Same class as the layer element above it.

**Uplinks:** [MRTM-LA-019](#MRTM-LA-019), [MRTM-LA-020](#MRTM-LA-020)

**Downlinks:** [MRTM-CI-001](#MRTM-CI-001)

### {#MRTM-SW-017}MRTM-SW-017 — Sensor item invalid sample

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The sensor item shall mark the sample invalid when the scratchpad CRC-8 fails or the value is outside -30 °C to 50 °C.

**Rationale**

Detects the probe faults of HAZ-001 and HAZ-004 at the first bad read.

**Verification**

Test: unit tests of sensor_sampler.

**Safety**

Class C (IEC 62304 §4.3): a failure of this software item can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (hazard chain HAZ-001…HAZ-008, severity serious). Same class as the layer element above it.

**Uplinks:** [MRTM-LA-022](#MRTM-LA-022)

**Downlinks:** [MRTM-CI-001](#MRTM-CI-001)

### {#MRTM-SW-018}MRTM-SW-018 — Supervisor item pulses

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The supervisor item shall stop the watchdog service pulses within 2 s of a missed alarm heartbeat.

**Rationale**

The software half of the backup chain (MRTM-SAF-010).

**Verification**

Test: unit tests of wdt_kicker.

**Safety**

Class C (IEC 62304 §4.3): a failure of this software item can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (hazard chain HAZ-001…HAZ-008, severity serious). Same class as the layer element above it.

**Uplinks:** [MRTM-LA-026](#MRTM-LA-026), [MRTM-LA-023](#MRTM-LA-023)

**Downlinks:** [MRTM-CI-001](#MRTM-CI-001)

### {#MRTM-SW-019}MRTM-SW-019 — Supervisor item self-tests

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The supervisor item shall run the buzzer test within 5 s and the backup alarm test within 15 s of power-up.

**Rationale**

Both windows counted from t = 0 (ADR-0014).

**Verification**

Test: unit tests of diagnostics.

**Safety**

Class C (IEC 62304 §4.3): a failure of this software item can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (hazard chain HAZ-001…HAZ-008, severity serious). Same class as the layer element above it.

**Uplinks:** [MRTM-LA-024](#MRTM-LA-024)

**Downlinks:** [MRTM-CI-001](#MRTM-CI-001)

### {#MRTM-SW-020}MRTM-SW-020 — Supervisor item band load

_Last changed by Masood on 2026-09-27 · `b25ff3b04205755c284aebfdf7771e94cbabe242` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

When the stored band passes its CRC-32 check, and only then, the supervisor item shall set the **Allowed Band** from it.

**Rationale**

No default band exists in firmware (ADR-0024).

**Verification**

Test: unit tests of config_mgr.

**Safety**

Class C (IEC 62304 §4.3): a failure of this software item can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (hazard chain HAZ-001…HAZ-008, severity serious). Same class as the layer element above it.

**Uplinks:** [MRTM-LA-025](#MRTM-LA-025)

**Downlinks:** [MRTM-CI-001](#MRTM-CI-001)

## Configuration Item (EPBS) (6)

### {#MRTM-CI-001}MRTM-CI-001 — Firmware image

_Last changed by Masood on 2026-09-27 · `f380564c6815a32a0c740595861784f597dd2e3e` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**modified**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The firmware configuration item shall carry 1 version number, identical in its release record and on the power-up screen.

**Rationale**

IEC 62304 §8.1.1 (identify each configuration item and its version) and §5.8.4 (release). One image holds all eight software items, so one version names the whole software system; the power-up display lets a technician confirm the running version (MRTM-MNT-003).

**Verification**

Inspection: compare the release record with the power-up screen of a unit running the image; recompute the image checksum.

**Safety**

Class C: it contains parts that carry class-C risk controls (ISO 14971; hazard chain HAZ-001…HAZ-008). A wrong revision in the field is found by the label check.

**Uplinks:** [MRTM-SW-001](#MRTM-SW-001), [MRTM-SW-002](#MRTM-SW-002), [MRTM-SW-003](#MRTM-SW-003), [MRTM-SW-004](#MRTM-SW-004), [MRTM-SW-005](#MRTM-SW-005), [MRTM-SW-006](#MRTM-SW-006), [MRTM-SW-007](#MRTM-SW-007), [MRTM-SW-008](#MRTM-SW-008), [MRTM-SW-009](#MRTM-SW-009), [MRTM-SW-010](#MRTM-SW-010), [MRTM-SW-011](#MRTM-SW-011), [MRTM-SW-012](#MRTM-SW-012), [MRTM-SW-013](#MRTM-SW-013), [MRTM-SW-014](#MRTM-SW-014), [MRTM-SW-015](#MRTM-SW-015), [MRTM-SW-016](#MRTM-SW-016), [MRTM-SW-017](#MRTM-SW-017), [MRTM-SW-018](#MRTM-SW-018), [MRTM-SW-019](#MRTM-SW-019), [MRTM-SW-020](#MRTM-SW-020)

### {#MRTM-CI-002}MRTM-CI-002 — Main board assembly

_Last changed by Masood on 2026-09-27 · `f380564c6815a32a0c740595861784f597dd2e3e` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**modified**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The main board configuration item shall carry a label with 1 part number and 1 revision that match its bill of materials entry.

**Rationale**

IEC 62304 §8.1.2 asks the software's SOUP and platform to be identified; the board is the platform the firmware runs on. The BOM (09-hardware) is the content list. Part classes are synthetic (A-40).

**Verification**

Inspection of the label against the BOM and the configuration record.

**Safety**

Class C: it contains parts that carry class-C risk controls (ISO 14971; hazard chain HAZ-001…HAZ-008). A wrong revision in the field is found by the label check.

**Uplinks:** [MRTM-PH-006](#MRTM-PH-006), [MRTM-PH-007](#MRTM-PH-007), [MRTM-PH-008](#MRTM-PH-008), [MRTM-PH-010](#MRTM-PH-010), [MRTM-PH-012](#MRTM-PH-012), [MRTM-PH-016](#MRTM-PH-016)

### {#MRTM-CI-003}MRTM-CI-003 — Probe assembly

_Last changed by Masood on 2026-09-27 · `f380564c6815a32a0c740595861784f597dd2e3e` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**modified**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The probe configuration item shall carry a cable label with 1 part number and 1 revision that match its bill of materials entry.

**Rationale**

The probe is the field-replaceable part (MRTM-MNT-001); interchangeability is the part's factory accuracy (A-40).

**Verification**

Inspection of the cable label against the BOM and the configuration record.

**Safety**

Class C: it contains parts that carry class-C risk controls (ISO 14971; hazard chain HAZ-001…HAZ-008). A wrong revision in the field is found by the label check.

**Uplinks:** [MRTM-PH-013](#MRTM-PH-013), [MRTM-PH-014](#MRTM-PH-014), [MRTM-PH-015](#MRTM-PH-015)

### {#MRTM-CI-004}MRTM-CI-004 — Display module

_Last changed by Masood on 2026-09-27 · `f380564c6815a32a0c740595861784f597dd2e3e` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**modified**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The display configuration item shall carry a label with 1 part number and 1 revision that match its bill of materials entry.

**Rationale**

A bought module; its identity and the one figure the requirements depend on are recorded (MRTM-IFC-004).

**Verification**

Inspection of the module label against the BOM and the configuration record.

**Safety**

Class C: it contains parts that carry class-C risk controls (ISO 14971; hazard chain HAZ-001…HAZ-008). A wrong revision in the field is found by the label check.

**Uplinks:** [MRTM-PH-009](#MRTM-PH-009)

### {#MRTM-CI-005}MRTM-CI-005 — Backup alarm board

_Last changed by Masood on 2026-09-27 · `f380564c6815a32a0c740595861784f597dd2e3e` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**modified**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The backup alarm configuration item shall carry a label with 1 part number and 1 revision that match its bill of materials entry.

**Rationale**

The independent alarm path (decision record 0013) is its own board so it can be revised and tested apart from the main board (IEC 60601-1 cl. 14 single-fault view).

**Verification**

Inspection of the label against the BOM and the configuration record.

**Safety**

Class C: it contains parts that carry class-C risk controls (ISO 14971; hazard chain HAZ-001…HAZ-008). A wrong revision in the field is found by the label check.

**Uplinks:** [MRTM-PH-001](#MRTM-PH-001), [MRTM-PH-002](#MRTM-PH-002), [MRTM-PH-003](#MRTM-PH-003), [MRTM-PH-004](#MRTM-PH-004), [MRTM-PH-005](#MRTM-PH-005)

### {#MRTM-CI-006}MRTM-CI-006 — Battery pack

_Last changed by Masood on 2026-09-27 · `f380564c6815a32a0c740595861784f597dd2e3e` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-03-ARCADIA)

**created**

2026-09-27

**modified**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The battery configuration item shall carry a label with 1 part number, 1 revision and 1 date code that match its bill of materials entry.

**Rationale**

The only part with a shelf life; the date code lets service replace it on time (MRTM-MNT-002). Synthetic part class (A-40).

**Verification**

Inspection of the label against the BOM and the configuration record.

**Safety**

Class C: it contains parts that carry class-C risk controls (ISO 14971; hazard chain HAZ-001…HAZ-008). A wrong revision in the field is found by the label check.

**Uplinks:** [MRTM-PH-011](#MRTM-PH-011)
