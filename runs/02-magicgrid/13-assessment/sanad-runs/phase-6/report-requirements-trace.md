# Requirements Export

**Export schema:** `sanad/requirements-export/2`

**Mode:** Engineering — generated on a workstation, outside the certification recipe; this report carries no certification credit.

**Generated from commit:** `e07dfe4e7459217e9fc8c9f3ae14a6ae3903d316`

**Commit date:** `2026-09-27T00:01:34+05:30`

**Tool version:** `sanad 0.6.3`

**Configuration hash:** `0ae07a3baadd546b1f2f19124c5888d21c97565f0e25aeca7b447ccfb7582e7f`

**Input hash:** `2c9742367e0e4914da64b949650aa12559cc4a12cbd486d6fa66bf31cf58601b`

**Inputs:** `69 requirements`, `glossary`, `data dictionary`

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
- [System Requirement (23)](#system-requirement-23)
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

## Environmental Requirement (4)

### {#MRTM-ENV-001}MRTM-ENV-001 — Battery endurance

_Last changed by Masood on 2026-09-26 · `1f9fd908dcd34a2894f43de40728858d50240b88` · per git_

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

The monitor shall operate from the internal battery for 4 h.

**Rationale**

A-11 assumes 4 h until Q-07 is answered.

**Verification**

Test: run on a fully charged battery at 25 °C for 4 h.

**Uplinks:** [MRTM-SYS-016](#MRTM-SYS-016)

### {#MRTM-ENV-002}MRTM-ENV-002 — Ambient temperature

_Last changed by Masood on 2026-09-26 · `1f9fd908dcd34a2894f43de40728858d50240b88` · per git_

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

The monitor shall operate at an ambient temperature from 10 °C to 35 °C.

**Rationale**

Clinic rooms; IEC 60601-1 cl. 7.9.3.1 frame.

**Verification**

Test: climatic chamber at 10 °C and 35 °C.

**Uplinks:** [MRTM-SYS-001](#MRTM-SYS-001)

### {#MRTM-ENV-003}MRTM-ENV-003 — Humidity

_Last changed by Masood on 2026-09-26 · `1f9fd908dcd34a2894f43de40728858d50240b88` · per git_

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

The monitor shall operate at a relative humidity from 15 % to 85 % non-condensing.

**Rationale**

Clinic rooms; IEC 60601-1 frame.

**Verification**

Test: climatic chamber at 15 % and 85 %.

**Uplinks:** [MRTM-SYS-001](#MRTM-SYS-001)

### {#MRTM-ENV-004}MRTM-ENV-004 — Probe environment

_Last changed by Masood on 2026-09-26 · `1f9fd908dcd34a2894f43de40728858d50240b88` · per git_

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

The temperature probe shall operate at a fridge air temperature from -30 °C to 50 °C.

**Rationale**

Covers freezer faults and defrost cycles.

**Verification**

Test: probe in a chamber at -30 °C and 50 °C.

**Uplinks:** [MRTM-SYS-001](#MRTM-SYS-001)

## Interface Requirement (4)

### {#MRTM-IFC-001}MRTM-IFC-001 — Probe bus

_Last changed by Masood on 2026-09-26 · `1f9fd908dcd34a2894f43de40728858d50240b88` · per git_

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

The monitor shall read the temperature probe over a 1-Wire bus.

**Rationale**

DS18B20-class digital probe (Phase 6 assumption).

**Verification**

Inspection: bus capture of one sample.

**Uplinks:** [MRTM-SYS-001](#MRTM-SYS-001)

### {#MRTM-IFC-002}MRTM-IFC-002 — Acknowledge input

_Last changed by Masood on 2026-09-26 · `1f9fd908dcd34a2894f43de40728858d50240b88` · per git_

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

The monitor shall debounce the acknowledge button input for 50 ms.

**Rationale**

A momentary contact bounces; one press must be one acknowledgement.

**Verification**

Test: apply a bouncing contact and count acknowledgements.

**Uplinks:** [MRTM-SYS-006](#MRTM-SYS-006)

### {#MRTM-IFC-003}MRTM-IFC-003 — USB readout

_Last changed by Masood on 2026-09-26 · `1f9fd908dcd34a2894f43de40728858d50240b88` · per git_

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

The monitor shall present the event log to the USB host as a read-only mass-storage volume.

**Rationale**

A-10: readout needs no special software.

**Verification**

Test: connect to a USB host and attempt to write.

**Uplinks:** [MRTM-SYS-014](#MRTM-SYS-014)

### {#MRTM-IFC-004}MRTM-IFC-004 — Display character height

_Last changed by Masood on 2026-09-26 · `1f9fd908dcd34a2894f43de40728858d50240b88` · per git_

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

The monitor shall draw the temperature digits at a character height of 5 mm or more.

**Rationale**

Readable from 1 m.

**Verification**

Inspection: measure the digit height on the display.

**Uplinks:** [MRTM-SYS-005](#MRTM-SYS-005)

## Maintainability Requirement (3)

### {#MRTM-MNT-001}MRTM-MNT-001 — Probe replacement

_Last changed by Masood on 2026-09-26 · `1f9fd908dcd34a2894f43de40728858d50240b88` · per git_

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

The monitor shall meet the measurement accuracy with a replacement temperature probe without recalibration.

**Rationale**

The technician must swap a failed probe on site.

**Verification**

Test: swap the probe and repeat the accuracy test.

**Uplinks:** [MRTM-SYS-012](#MRTM-SYS-012)

### {#MRTM-MNT-002}MRTM-MNT-002 — Battery level

_Last changed by Masood on 2026-09-26 · `1f9fd908dcd34a2894f43de40728858d50240b88` · per git_

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

The monitor shall show the battery charge level on the display in steps of 10 %.

**Rationale**

The technician plans the battery change.

**Verification**

Inspection: read the display at three charge levels.

**Uplinks:** [MRTM-SYS-016](#MRTM-SYS-016)

### {#MRTM-MNT-003}MRTM-MNT-003 — Firmware version

_Last changed by Masood on 2026-09-26 · `1f9fd908dcd34a2894f43de40728858d50240b88` · per git_

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

The monitor shall show the firmware version on the display for 3 s at power-up.

**Rationale**

Configuration identification in the field (IEC 62304 cl. 8.1.1).

**Verification**

Inspection: power up and read the version.

**Uplinks:** [MRTM-SYS-001](#MRTM-SYS-001)

## Performance Requirement (4)

### {#MRTM-PRF-001}MRTM-PRF-001 — Measurement accuracy

_Last changed by Masood on 2026-09-26 · `1f9fd908dcd34a2894f43de40728858d50240b88` · per git_

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

The monitor shall measure the fridge air temperature with an accuracy of ±0.5 °C over the range 0 °C to 15 °C.

**Rationale**

Measurement Accuracy in the data dictionary; the band edges must be judged correctly.

**Verification**

Test: compare with a reference thermometer at 0 °C, 5 °C and 15 °C.

**Uplinks:** [MRTM-SYS-001](#MRTM-SYS-001)

### {#MRTM-PRF-002}MRTM-PRF-002 — End-to-end alert time

_Last changed by Masood on 2026-09-26 · `1f9fd908dcd34a2894f43de40728858d50240b88` · per git_

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

The monitor shall sound the buzzer within 65 s of the first sample outside the allowed band.

**Rationale**

60 s confirmation plus 5 s alert time.

**Verification**

Test: step the probe out of band and time the buzzer.

**Uplinks:** [MRTM-SYS-003](#MRTM-SYS-003)

### {#MRTM-PRF-003}MRTM-PRF-003 — Log readout time

_Last changed by Masood on 2026-09-26 · `a00038b1c7120e11b31901a00106d1f877f56a8a` · per git_

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

The monitor shall deliver the complete event log to the USB host within 30 s.

**Rationale**

An audit readout must not keep staff waiting.

**Verification**

Test: fill the log to 10000 events and time the readout. Run with the event log holding 10000 events (review round 1, T07).

**Uplinks:** [MRTM-SYS-015](#MRTM-SYS-015)

### {#MRTM-PRF-004}MRTM-PRF-004 — Display refresh

_Last changed by Masood on 2026-09-26 · `1f9fd908dcd34a2894f43de40728858d50240b88` · per git_

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

The monitor shall refresh the displayed temperature at a period of 10 s.

**Rationale**

The display follows the sampling period.

**Verification**

Test: time 20 display updates.

**Uplinks:** [MRTM-SYS-011](#MRTM-SYS-011)

## Safety Requirement (23)

### {#MRTM-SAF-001}MRTM-SAF-001 — Buzzer loudness

_Last changed by Masood on 2026-09-26 · `3ef8c3c1acf5f4b6970f99b69f71322a26f3f90d` · per git_

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

_Last changed by Masood on 2026-09-26 · `3ef8c3c1acf5f4b6970f99b69f71322a26f3f90d` · per git_

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

_Last changed by Masood on 2026-09-26 · `3ef8c3c1acf5f4b6970f99b69f71322a26f3f90d` · per git_

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

### {#MRTM-SAF-004}MRTM-SAF-004 — Watchdog restart

_Last changed by Masood on 2026-09-26 · `3ef8c3c1acf5f4b6970f99b69f71322a26f3f90d` · per git_

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

### {#MRTM-SAF-005}MRTM-SAF-005 — Log power loss

_Last changed by Masood on 2026-09-26 · `3ef8c3c1acf5f4b6970f99b69f71322a26f3f90d` · per git_

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

### {#MRTM-SAF-006}MRTM-SAF-006 — Alert survives restart

_Last changed by Masood on 2026-09-26 · `3ef8c3c1acf5f4b6970f99b69f71322a26f3f90d` · per git_

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

### {#MRTM-SAF-007}MRTM-SAF-007 — Buzzer self-test

_Last changed by Masood on 2026-09-26 · `3ef8c3c1acf5f4b6970f99b69f71322a26f3f90d` · per git_

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

### {#MRTM-SAF-008}MRTM-SAF-008 — Low battery alarm

_Last changed by Masood on 2026-09-26 · `3ef8c3c1acf5f4b6970f99b69f71322a26f3f90d` · per git_

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

### {#MRTM-SAF-009}MRTM-SAF-009 — Backup alarm on firmware silence

_Last changed by Masood on 2026-09-26 · `3ef8c3c1acf5f4b6970f99b69f71322a26f3f90d` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, DOGFOOD-3)

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

### {#MRTM-SAF-010}MRTM-SAF-010 — Watchdog tied to the alarm service

_Last changed by Masood on 2026-09-26 · `3ef8c3c1acf5f4b6970f99b69f71322a26f3f90d` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, DOGFOOD-3)

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

### {#MRTM-SAF-011}MRTM-SAF-011 — Fault tone differs from excursion tone

_Last changed by Masood on 2026-09-26 · `3ef8c3c1acf5f4b6970f99b69f71322a26f3f90d` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, DOGFOOD-3)

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

_Last changed by Masood on 2026-09-26 · `3ef8c3c1acf5f4b6970f99b69f71322a26f3f90d` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, DOGFOOD-3)

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

### {#MRTM-SAF-013}MRTM-SAF-013 — Alarm on total power loss

_Last changed by Masood on 2026-09-26 · `3ef8c3c1acf5f4b6970f99b69f71322a26f3f90d` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, DOGFOOD-3)

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

### {#MRTM-SAF-014}MRTM-SAF-014 — Buzzer open-circuit detection

_Last changed by Masood on 2026-09-26 · `3ef8c3c1acf5f4b6970f99b69f71322a26f3f90d` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, DOGFOOD-3)

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

_Last changed by Masood on 2026-09-26 · `3ef8c3c1acf5f4b6970f99b69f71322a26f3f90d` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, DOGFOOD-3)

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

_Last changed by Masood on 2026-09-26 · `3ef8c3c1acf5f4b6970f99b69f71322a26f3f90d` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, DOGFOOD-3)

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

### {#MRTM-SAF-017}MRTM-SAF-017 — Band integrity check

_Last changed by Masood on 2026-09-26 · `3ef8c3c1acf5f4b6970f99b69f71322a26f3f90d` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, DOGFOOD-3)

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

### {#MRTM-SAF-018}MRTM-SAF-018 — Two copies of every record

_Last changed by Masood on 2026-09-26 · `3ef8c3c1acf5f4b6970f99b69f71322a26f3f90d` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, DOGFOOD-3)

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

### {#MRTM-SAF-019}MRTM-SAF-019 — Stuck acknowledge button

_Last changed by Masood on 2026-09-26 · `3ef8c3c1acf5f4b6970f99b69f71322a26f3f90d` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, DOGFOOD-3)

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

_Last changed by Masood on 2026-09-26 · `3ef8c3c1acf5f4b6970f99b69f71322a26f3f90d` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, DOGFOOD-3)

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

_Last changed by Masood on 2026-09-26 · `3ef8c3c1acf5f4b6970f99b69f71322a26f3f90d` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, DOGFOOD-3)

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

_Last changed by Masood on 2026-09-26 · `3ef8c3c1acf5f4b6970f99b69f71322a26f3f90d` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, DOGFOOD-3)

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

### {#MRTM-SAF-023}MRTM-SAF-023 — Backup alarm power-up test

_Last changed by Masood on 2026-09-26 · `3ef8c3c1acf5f4b6970f99b69f71322a26f3f90d` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, DOGFOOD-3)

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

## Stakeholder Requirement (8)

### {#MRTM-STK-001}MRTM-STK-001 — Alert on excursion

_Last changed by Masood on 2026-09-26 · `1f9fd908dcd34a2894f43de40728858d50240b88` · per git_

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

**Downlinks:** [MRTM-SYS-003](#MRTM-SYS-003), [MRTM-SYS-004](#MRTM-SYS-004), [MRTM-SYS-005](#MRTM-SYS-005), [MRTM-SYS-017](#MRTM-SYS-017)

### {#MRTM-STK-002}MRTM-STK-002 — No alert on brief door opening

_Last changed by Masood on 2026-09-26 · `1f9fd908dcd34a2894f43de40728858d50240b88` · per git_

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

The monitor shall raise no alert for the temperature departure shorter than the excursion confirmation time.

**Rationale**

US-2: false alarms teach staff to ignore the alarm (R-05).

**Verification**

Test: hold the probe outside the band for 30 s and confirm no alert.

**Uplinks:** none

**Downlinks:** [MRTM-SYS-002](#MRTM-SYS-002), [MRTM-SYS-018](#MRTM-SYS-018)

### {#MRTM-STK-003}MRTM-STK-003 — Silence the alert

_Last changed by Masood on 2026-09-26 · `1f9fd908dcd34a2894f43de40728858d50240b88` · per git_

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

_Last changed by Masood on 2026-09-26 · `1f9fd908dcd34a2894f43de40728858d50240b88` · per git_

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

_Last changed by Masood on 2026-09-26 · `1f9fd908dcd34a2894f43de40728858d50240b88` · per git_

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

_Last changed by Masood on 2026-09-26 · `1f9fd908dcd34a2894f43de40728858d50240b88` · per git_

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

_Last changed by Masood on 2026-09-26 · `1f9fd908dcd34a2894f43de40728858d50240b88` · per git_

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

_Last changed by Masood on 2026-09-26 · `1f9fd908dcd34a2894f43de40728858d50240b88` · per git_

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

## System Requirement (23)

### {#MRTM-SYS-001}MRTM-SYS-001 — Sampling period

_Last changed by Masood on 2026-09-26 · `1f9fd908dcd34a2894f43de40728858d50240b88` · per git_

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

The monitor shall sample the fridge air temperature at the sampling period of 10 s.

**Rationale**

Sampling Period in the data dictionary (A-04).

**Verification**

Test: time 100 consecutive samples; each interval is 10 s ± 0.5 s.

**Uplinks:** [MRTM-STK-004](#MRTM-STK-004)

**Downlinks:** [MRTM-ENV-002](#MRTM-ENV-002), [MRTM-ENV-003](#MRTM-ENV-003), [MRTM-ENV-004](#MRTM-ENV-004), [MRTM-IFC-001](#MRTM-IFC-001), [MRTM-MNT-003](#MRTM-MNT-003), [MRTM-PRF-001](#MRTM-PRF-001), [MRTM-SAF-003](#MRTM-SAF-003), [MRTM-SAF-004](#MRTM-SAF-004), [MRTM-SAF-012](#MRTM-SAF-012), [MRTM-SAF-020](#MRTM-SAF-020)

### {#MRTM-SYS-002}MRTM-SYS-002 — Excursion confirmation

_Last changed by Masood on 2026-09-26 · `a00038b1c7120e11b31901a00106d1f877f56a8a` · per git_

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

The monitor shall confirm the excursion when 7 consecutive samples, spanning 60 s, are outside the allowed band.

**Rationale**

Excursion Confirmation Time filters door openings (US-2).

**Verification**

Test: hold the probe out of band for 59 s and 61 s; only the second confirms.

**Uplinks:** [MRTM-STK-002](#MRTM-STK-002)

### {#MRTM-SYS-003}MRTM-SYS-003 — Buzzer on excursion

_Last changed by Masood on 2026-09-26 · `1f9fd908dcd34a2894f43de40728858d50240b88` · per git_

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

The monitor shall sound the buzzer within 5 s of excursion confirmation.

**Rationale**

The buzzer is the alert that reaches a nurse out of sight of the device.

**Verification**

Test: measure the time from confirmation to buzzer onset.

**Uplinks:** [MRTM-STK-001](#MRTM-STK-001)

**Downlinks:** [MRTM-PRF-002](#MRTM-PRF-002), [MRTM-SAF-001](#MRTM-SAF-001), [MRTM-SAF-006](#MRTM-SAF-006), [MRTM-SAF-007](#MRTM-SAF-007), [MRTM-SAF-009](#MRTM-SAF-009), [MRTM-SAF-010](#MRTM-SAF-010), [MRTM-SAF-014](#MRTM-SAF-014), [MRTM-SAF-023](#MRTM-SAF-023)

### {#MRTM-SYS-004}MRTM-SYS-004 — Red indicator on excursion

_Last changed by Masood on 2026-09-26 · `a00038b1c7120e11b31901a00106d1f877f56a8a` · per git_

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

The monitor shall flash the red indicator at 2 Hz within 5 s of excursion confirmation.

**Rationale**

A visual alert for a noisy room.

**Verification**

Test: measure the time from confirmation to the first red flash.

**Uplinks:** [MRTM-STK-001](#MRTM-STK-001)

**Downlinks:** [MRTM-SAF-015](#MRTM-SAF-015)

### {#MRTM-SYS-005}MRTM-SYS-005 — Warning on excursion

_Last changed by Masood on 2026-09-26 · `1f9fd908dcd34a2894f43de40728858d50240b88` · per git_

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

The monitor shall show the excursion warning on the display within 5 s of excursion confirmation.

**Rationale**

The warning tells the nurse which way the temperature went and since when.

**Verification**

Test: measure the time from confirmation to the warning on the display.

**Uplinks:** [MRTM-STK-001](#MRTM-STK-001)

**Downlinks:** [MRTM-IFC-004](#MRTM-IFC-004), [MRTM-SAF-021](#MRTM-SAF-021)

### {#MRTM-SYS-006}MRTM-SYS-006 — Acknowledge silences buzzer

_Last changed by Masood on 2026-09-26 · `1f9fd908dcd34a2894f43de40728858d50240b88` · per git_

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

The monitor shall stop the buzzer within 1 s of the acknowledge button press.

**Rationale**

Acknowledgement silences the alert; it does not end the excursion.

**Verification**

Test: press acknowledge during an alert and time the buzzer stop.

**Uplinks:** [MRTM-STK-003](#MRTM-STK-003)

**Downlinks:** [MRTM-IFC-002](#MRTM-IFC-002), [MRTM-SAF-019](#MRTM-SAF-019)

### {#MRTM-SYS-007}MRTM-SYS-007 — Warning stays while excursion is open

_Last changed by Masood on 2026-09-26 · `1f9fd908dcd34a2894f43de40728858d50240b88` · per git_

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

The monitor shall keep the excursion warning on the display for the duration of the excursion.

**Rationale**

Silencing the buzzer must not hide the problem.

**Verification**

Test: acknowledge an alert and confirm the warning stays until the temperature returns to band.

**Uplinks:** [MRTM-STK-003](#MRTM-STK-003)

### {#MRTM-SYS-008}MRTM-SYS-008 — Log excursion start

_Last changed by Masood on 2026-09-26 · `1f9fd908dcd34a2894f43de40728858d50240b88` · per git_

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

The monitor shall log the excursion start event with the UTC time stamp at 1 s resolution.

**Rationale**

The history is built from the event log.

**Verification**

Test: confirm an excursion and read the logged start event.

**Uplinks:** [MRTM-STK-005](#MRTM-STK-005)

### {#MRTM-SYS-009}MRTM-SYS-009 — Log excursion end

_Last changed by Masood on 2026-09-26 · `1f9fd908dcd34a2894f43de40728858d50240b88` · per git_

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

The monitor shall log the excursion end event with the peak temperature of the excursion at 0.1 °C resolution.

**Rationale**

Auditors need the worst value to judge the stock.

**Verification**

Test: end an excursion with a known peak and read the logged end event.

**Uplinks:** [MRTM-STK-005](#MRTM-STK-005)

### {#MRTM-SYS-010}MRTM-SYS-010 — Log acknowledgement

_Last changed by Masood on 2026-09-26 · `1f9fd908dcd34a2894f43de40728858d50240b88` · per git_

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

The monitor shall log the acknowledgement event with the UTC time stamp at 1 s resolution.

**Rationale**

The history shows who reacted and when.

**Verification**

Test: acknowledge an alert and read the logged event.

**Uplinks:** [MRTM-STK-005](#MRTM-STK-005)

### {#MRTM-SYS-011}MRTM-SYS-011 — Display resolution

_Last changed by Masood on 2026-09-26 · `1f9fd908dcd34a2894f43de40728858d50240b88` · per git_

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

The monitor shall display the current temperature at 0.1 °C resolution.

**Rationale**

Staff compare the value with the 2 °C to 8 °C band.

**Verification**

Inspection: read the display at three probe temperatures.

**Uplinks:** [MRTM-STK-004](#MRTM-STK-004)

**Downlinks:** [MRTM-PRF-004](#MRTM-PRF-004)

### {#MRTM-SYS-012}MRTM-SYS-012 — Probe fault detection

_Last changed by Masood on 2026-09-26 · `a00038b1c7120e11b31901a00106d1f877f56a8a` · per git_

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

The monitor shall declare the probe fault when no sample with a correct CRC arrives for 30 s.

**Rationale**

Three missed samples mean the probe cannot be trusted.

**Verification**

Test: disconnect the probe and time the fault declaration.

**Uplinks:** [MRTM-STK-007](#MRTM-STK-007)

**Downlinks:** [MRTM-MNT-001](#MRTM-MNT-001), [MRTM-SAF-002](#MRTM-SAF-002), [MRTM-SAF-011](#MRTM-SAF-011)

### {#MRTM-SYS-013}MRTM-SYS-013 — Probe fault message

_Last changed by Masood on 2026-09-26 · `1f9fd908dcd34a2894f43de40728858d50240b88` · per git_

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

The monitor shall show the probe fault message on the display within 5 s of the probe fault declaration.

**Rationale**

The technician must see which part failed.

**Verification**

Test: disconnect the probe and time the message.

**Uplinks:** [MRTM-STK-007](#MRTM-STK-007)

### {#MRTM-SYS-014}MRTM-SYS-014 — Read-only event log

_Last changed by Masood on 2026-09-26 · `1f9fd908dcd34a2894f43de40728858d50240b88` · per git_

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

The monitor shall restrict the user access to the event log to read-only.

**Rationale**

US-6: the record must be trustworthy.

**Verification**

Test: attempt to write, delete and rename log entries over USB.

**Uplinks:** [MRTM-STK-006](#MRTM-STK-006)

**Downlinks:** [MRTM-IFC-003](#MRTM-IFC-003)

### {#MRTM-SYS-015}MRTM-SYS-015 — Event log capacity

_Last changed by Masood on 2026-09-26 · `1f9fd908dcd34a2894f43de40728858d50240b88` · per git_

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

The monitor shall retain 10000 events in the event log.

**Rationale**

Event Log Capacity in the data dictionary covers one year of heavy use.

**Verification**

Test: write 10000 events and read them all back.

**Uplinks:** [MRTM-STK-005](#MRTM-STK-005)

**Downlinks:** [MRTM-PRF-003](#MRTM-PRF-003), [MRTM-SAF-018](#MRTM-SAF-018)

### {#MRTM-SYS-016}MRTM-SYS-016 — Battery operation

_Last changed by Masood on 2026-09-26 · `1f9fd908dcd34a2894f43de40728858d50240b88` · per git_

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

The monitor shall switch to the internal battery within 100 ms of mains power loss.

**Rationale**

US-8: monitoring must continue through a power cut.

**Verification**

Test: remove mains power and confirm sampling continues.

**Uplinks:** [MRTM-STK-008](#MRTM-STK-008)

**Downlinks:** [MRTM-ENV-001](#MRTM-ENV-001), [MRTM-MNT-002](#MRTM-MNT-002), [MRTM-SAF-005](#MRTM-SAF-005), [MRTM-SAF-008](#MRTM-SAF-008), [MRTM-SAF-013](#MRTM-SAF-013)

### {#MRTM-SYS-017}MRTM-SYS-017 — Allowed band

_Last changed by Masood on 2026-09-26 · `a00038b1c7120e11b31901a00106d1f877f56a8a` · per git_

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

The monitor shall use the allowed band from 2 °C to 8 °C.

**Rationale**

Review round 1, thread T02: the band lived only in the data dictionary and A-04, so no test could fail on a wrong band.

**Verification**

Test: step the probe to 1.9 °C, 2.0 °C, 8.0 °C and 8.1 °C and confirm only 1.9 °C and 8.1 °C count as outside the band.

**Uplinks:** [MRTM-STK-001](#MRTM-STK-001)

**Downlinks:** [MRTM-SAF-016](#MRTM-SAF-016), [MRTM-SAF-017](#MRTM-SAF-017)

### {#MRTM-SYS-018}MRTM-SYS-018 — Excursion end confirmation

_Last changed by Masood on 2026-09-26 · `a00038b1c7120e11b31901a00106d1f877f56a8a` · per git_

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

The monitor shall end the excursion after 7 consecutive samples, spanning 60 s, back inside the allowed band.

**Rationale**

Review round 1, thread T08: ending at the first sample back inside makes a fridge at the band edge start and end excursions every 10 s (alarm chatter).

**Verification**

Test: hold the probe at the limit with ±0.2 °C noise and confirm exactly one excursion start event and one excursion end event in the log.

**Uplinks:** [MRTM-STK-002](#MRTM-STK-002)

### {#MRTM-SYS-019}MRTM-SYS-019 — Alarm comes back after silence

_Last changed by Masood on 2026-09-26 · `a00038b1c7120e11b31901a00106d1f877f56a8a` · per git_

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

The monitor shall sound the buzzer again 15 min after the acknowledge button press while the excursion continues.

**Rationale**

Review round 1, thread T09: silence is a paused alarm, not a cancelled one (IEC 60601-1-8 frame). 15 min is assumption A-13.

**Verification**

Test: acknowledge during an excursion, keep the probe warm, confirm the buzzer returns at 15 min ± 5 s.

**Uplinks:** [MRTM-STK-003](#MRTM-STK-003)

### {#MRTM-SYS-020}MRTM-SYS-020 — Clock drift

_Last changed by Masood on 2026-09-26 · `a00038b1c7120e11b31901a00106d1f877f56a8a` · per git_

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

The monitor shall keep the UTC time with a drift of 2 s per day or less.

**Rationale**

Review round 1, thread T10: every event carries a UTC time stamp; an audit trail needs a clock that keeps time. How the clock is set stays open (Q-10).

**Verification**

Test: run 7 days against a reference clock and confirm the difference is 14 s or less.

**Uplinks:** [MRTM-STK-005](#MRTM-STK-005)

**Downlinks:** [MRTM-SAF-022](#MRTM-SAF-022)

### {#MRTM-SYS-021}MRTM-SYS-021 — Event log integrity

_Last changed by Masood on 2026-09-26 · `a00038b1c7120e11b31901a00106d1f877f56a8a` · per git_

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

The monitor shall report a corrupted event log record within 1 s of reading it, using its CRC-32 checksum.

**Rationale**

Review round 1, thread T12: read-only access does not protect against a bit-flip or a torn write at power loss; Class C audit data must show corruption.

**Verification**

Test: flip one bit in a stored record and confirm the monitor reports the record as corrupted within 1 s.

**Uplinks:** [MRTM-STK-006](#MRTM-STK-006)

### {#MRTM-SYS-022}MRTM-SYS-022 — Log capacity warning

_Last changed by Masood on 2026-09-26 · `a00038b1c7120e11b31901a00106d1f877f56a8a` · per git_

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

The monitor shall show the log capacity warning on the display when the event log holds 9000 events.

**Rationale**

Review round 1, thread T13: staff must be told before history can be lost; what happens at 10000 is the data-retention ADR (Phase 4).

**Verification**

Test: preload 8999 events, add one, confirm the warning appears.

**Uplinks:** [MRTM-STK-005](#MRTM-STK-005)

### {#MRTM-SYS-023}MRTM-SYS-023 — Power restore event

_Last changed by Masood on 2026-09-26 · `a00038b1c7120e11b31901a00106d1f877f56a8a` · per git_

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

The monitor shall log the power restore event with the UTC time stamp at 1 s resolution.

**Rationale**

Review round 1, thread T17: without the restore event an auditor cannot tell how long the fridge ran on battery.

**Verification**

Test: remove and restore mains and confirm both events with time stamps in the log.

**Uplinks:** [MRTM-STK-008](#MRTM-STK-008)
