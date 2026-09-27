# Requirements Export

**Export schema:** `sanad/requirements-export/2`

**Mode:** Engineering — generated on a workstation, outside the certification recipe; this report carries no certification credit.

**Generated from commit:** `8f9af20c1dd8c3f25937c53e78ac1362a930a045`

**Commit date:** `2026-09-26T23:25:08+05:30`

**Tool version:** `sanad 0.6.3`

**Configuration hash:** `efdf8bd48cbf7e729e728490f81be809ff693712e6d5a2864ac0544a4bb09e81`

**Input hash:** `0e3a6aaf42bee8f2a02b1fe5732034a24c8e2c190d362eb56b0804f1780c7c92`

**Inputs:** `54 requirements`, `glossary`, `data dictionary`

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
- [Safety Requirement (8)](#safety-requirement-8)
  - [MRTM-SAF-001 — Buzzer loudness](#mrtm-saf-001--buzzer-loudness)
  - [MRTM-SAF-002 — Probe fault raises alert](#mrtm-saf-002--probe-fault-raises-alert)
  - [MRTM-SAF-003 — Implausible sample](#mrtm-saf-003--implausible-sample)
  - [MRTM-SAF-004 — Watchdog restart](#mrtm-saf-004--watchdog-restart)
  - [MRTM-SAF-005 — Log power loss](#mrtm-saf-005--log-power-loss)
  - [MRTM-SAF-006 — Alert survives restart](#mrtm-saf-006--alert-survives-restart)
  - [MRTM-SAF-007 — Buzzer self-test](#mrtm-saf-007--buzzer-self-test)
  - [MRTM-SAF-008 — Low battery alarm](#mrtm-saf-008--low-battery-alarm)
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

_Last changed by Masood on 2026-09-26 · `8f9af20c1dd8c3f25937c53e78ac1362a930a045` · per git_

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

## Safety Requirement (8)

### {#MRTM-SAF-001}MRTM-SAF-001 — Buzzer loudness

_Last changed by Masood on 2026-09-26 · `8f9af20c1dd8c3f25937c53e78ac1362a930a045` · per git_

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

The monitor shall sound the buzzer at a sound pressure level of 65 dB(A) or more at 1 m.

**Rationale**

Risk control for hazard 'alert not heard' (ISO 14971 cl. 7; IEC 60601-1-8 frame).

**Verification**

Test: with background noise below 45 dB(A), measure the sound pressure level on axis at 1 m with a class 2 sound level meter.

**Uplinks:** [MRTM-SYS-003](#MRTM-SYS-003)

### {#MRTM-SAF-002}MRTM-SAF-002 — Probe fault raises alert

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

The monitor shall sound the buzzer within 5 s of the probe fault declaration.

**Rationale**

Risk control for hazard 'silent loss of monitoring'.

**Verification**

Test: disconnect the probe and time the buzzer.

**Uplinks:** [MRTM-SYS-012](#MRTM-SYS-012)

### {#MRTM-SAF-003}MRTM-SAF-003 — Implausible sample

_Last changed by Masood on 2026-09-26 · `8f9af20c1dd8c3f25937c53e78ac1362a930a045` · per git_

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

The monitor shall declare the probe fault when a sample falls outside the range -30 °C to 50 °C.

**Rationale**

Risk control for hazard 'false in-band reading from a damaged probe'.

**Verification**

Test: inject samples at -41 °C and 61 °C through the probe simulator.

**Uplinks:** [MRTM-SYS-001](#MRTM-SYS-001)

### {#MRTM-SAF-004}MRTM-SAF-004 — Watchdog restart

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

The monitor shall restart the monitoring software within 2 s of a software watchdog timeout.

**Rationale**

Risk control for hazard 'firmware hang stops monitoring' (IEC 62304 cl. 5.3.6).

**Verification**

Test: force a firmware hang and time the restart.

**Uplinks:** [MRTM-SYS-001](#MRTM-SYS-001)

### {#MRTM-SAF-005}MRTM-SAF-005 — Log power loss

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

The monitor shall log the power loss event within 1 s of mains power loss.

**Rationale**

Risk control for hazard 'unexplained gap in the history'.

**Verification**

Test: remove mains power and read the logged event.

**Uplinks:** [MRTM-SYS-016](#MRTM-SYS-016)

### {#MRTM-SAF-006}MRTM-SAF-006 — Alert survives restart

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

The monitor shall restore the unacknowledged alert state within 2 s of the restart.

**Rationale**

Risk control for hazard 'a restart silences an open alert'.

**Verification**

Test: restart the monitor during an unacknowledged alert and confirm the buzzer resumes.

**Uplinks:** [MRTM-SYS-003](#MRTM-SYS-003)

### {#MRTM-SAF-007}MRTM-SAF-007 — Buzzer self-test

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

The monitor shall test the buzzer within 5 s of power-up.

**Rationale**

Risk control for hazard 'broken buzzer found only when needed'.

**Verification**

Test: power up with the buzzer disconnected and confirm the fault indication.

**Uplinks:** [MRTM-SYS-003](#MRTM-SYS-003)

### {#MRTM-SAF-008}MRTM-SAF-008 — Low battery alarm

_Last changed by Masood on 2026-09-26 · `8f9af20c1dd8c3f25937c53e78ac1362a930a045` · per git_

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

The monitor shall sound the buzzer within 5 s of the battery voltage falling below 3.4 V.

**Rationale**

Review round 1, thread T11: on battery the monitor would stop silently after about 4 h. 3.4 V is synthetic and EE-REVIEW (A-15). Risk control for hazard 'monitoring stops unnoticed' (ISO 14971 cl. 7).

**Verification**

Test: lower the battery supply through 3.4 V on a bench supply and time the buzzer.

**Uplinks:** [MRTM-SYS-016](#MRTM-SYS-016)

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

**Downlinks:** [MRTM-ENV-002](#MRTM-ENV-002), [MRTM-ENV-003](#MRTM-ENV-003), [MRTM-ENV-004](#MRTM-ENV-004), [MRTM-IFC-001](#MRTM-IFC-001), [MRTM-MNT-003](#MRTM-MNT-003), [MRTM-PRF-001](#MRTM-PRF-001), [MRTM-SAF-003](#MRTM-SAF-003), [MRTM-SAF-004](#MRTM-SAF-004)

### {#MRTM-SYS-002}MRTM-SYS-002 — Excursion confirmation

_Last changed by Masood on 2026-09-26 · `8f9af20c1dd8c3f25937c53e78ac1362a930a045` · per git_

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

**Downlinks:** [MRTM-PRF-002](#MRTM-PRF-002), [MRTM-SAF-001](#MRTM-SAF-001), [MRTM-SAF-006](#MRTM-SAF-006), [MRTM-SAF-007](#MRTM-SAF-007)

### {#MRTM-SYS-004}MRTM-SYS-004 — Red indicator on excursion

_Last changed by Masood on 2026-09-26 · `8f9af20c1dd8c3f25937c53e78ac1362a930a045` · per git_

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

**Downlinks:** [MRTM-IFC-004](#MRTM-IFC-004)

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

**Downlinks:** [MRTM-IFC-002](#MRTM-IFC-002)

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

_Last changed by Masood on 2026-09-26 · `8f9af20c1dd8c3f25937c53e78ac1362a930a045` · per git_

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

**Downlinks:** [MRTM-MNT-001](#MRTM-MNT-001), [MRTM-SAF-002](#MRTM-SAF-002)

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

**Downlinks:** [MRTM-PRF-003](#MRTM-PRF-003)

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

**Downlinks:** [MRTM-ENV-001](#MRTM-ENV-001), [MRTM-MNT-002](#MRTM-MNT-002), [MRTM-SAF-005](#MRTM-SAF-005), [MRTM-SAF-008](#MRTM-SAF-008)

### {#MRTM-SYS-017}MRTM-SYS-017 — Allowed band

_Last changed by Masood on 2026-09-26 · `8f9af20c1dd8c3f25937c53e78ac1362a930a045` · per git_

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

### {#MRTM-SYS-018}MRTM-SYS-018 — Excursion end confirmation

_Last changed by Masood on 2026-09-26 · `8f9af20c1dd8c3f25937c53e78ac1362a930a045` · per git_

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

_Last changed by Masood on 2026-09-26 · `8f9af20c1dd8c3f25937c53e78ac1362a930a045` · per git_

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

_Last changed by Masood on 2026-09-26 · `8f9af20c1dd8c3f25937c53e78ac1362a930a045` · per git_

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

### {#MRTM-SYS-021}MRTM-SYS-021 — Event log integrity

_Last changed by Masood on 2026-09-26 · `8f9af20c1dd8c3f25937c53e78ac1362a930a045` · per git_

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

_Last changed by Masood on 2026-09-26 · `8f9af20c1dd8c3f25937c53e78ac1362a930a045` · per git_

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

_Last changed by Masood on 2026-09-26 · `8f9af20c1dd8c3f25937c53e78ac1362a930a045` · per git_

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
