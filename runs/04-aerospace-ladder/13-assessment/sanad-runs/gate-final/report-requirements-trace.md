# Requirements Export

**Export schema:** `sanad/requirements-export/2`

**Mode:** Engineering — generated on a workstation, outside the certification recipe; this report carries no certification credit.

**Generated from commit:** `fc3274cd4718cb8e8c74a4f760f24fe69af65c09`

**Commit date:** `2026-09-27T11:35:34+05:30`

**Tool version:** `sanad 0.6.3`

**Configuration hash:** `9041a18e3d5054badf10a2dbd9e716b12412d851d8e83e7f79ab70f50f8db21d`

**Input hash:** `bb615c09f2a9ab73e6b0f6d0f4891025c8d6ac5fd4c178bf0bf7b305b1f59581`

**Inputs:** `177 requirements`, `symbol index`, `architecture inventory`, `glossary`, `data dictionary`, `verification cases`

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
- [Product function requirement (5)](#product-function-requirement-5)
  - [MRTM-FUN-001 — Monitor the fridge air](#mrtm-fun-001--monitor-the-fridge-air)
  - [MRTM-FUN-002 — Warn of an excursion](#mrtm-fun-002--warn-of-an-excursion)
  - [MRTM-FUN-003 — Acknowledge the warning](#mrtm-fun-003--acknowledge-the-warning)
  - [MRTM-FUN-004 — Keep the history](#mrtm-fun-004--keep-the-history)
  - [MRTM-FUN-005 — Watch through a power cut](#mrtm-fun-005--watch-through-a-power-cut)
- [Safety objective (FHA) (5)](#safety-objective-fha-5)
  - [MRTM-SOB-001 — No silent loss of warning](#mrtm-sob-001--no-silent-loss-of-warning)
  - [MRTM-SOB-002 — No silent wrong band](#mrtm-sob-002--no-silent-wrong-band)
  - [MRTM-SOB-003 — Drift is bounded and shown](#mrtm-sob-003--drift-is-bounded-and-shown)
  - [MRTM-SOB-004 — Nuisance warnings are limited](#mrtm-sob-004--nuisance-warnings-are-limited)
  - [MRTM-SOB-005 — No silent loss of history](#mrtm-sob-005--no-silent-loss-of-history)
- [Hardware item requirement (14)](#hardware-item-requirement-14)
  - [MRTM-HWR-001 — Probe conversion time](#mrtm-hwr-001--probe-conversion-time)
  - [MRTM-HWR-002 — Probe accuracy](#mrtm-hwr-002--probe-accuracy)
  - [MRTM-HWR-003 — Probe scratchpad check](#mrtm-hwr-003--probe-scratchpad-check)
  - [MRTM-HWR-004 — Buzzer loudness](#mrtm-hwr-004--buzzer-loudness)
  - [MRTM-HWR-005 — Red indicator response](#mrtm-hwr-005--red-indicator-response)
  - [MRTM-HWR-006 — Acknowledge contact](#mrtm-hwr-006--acknowledge-contact)
  - [MRTM-HWR-007 — Backup timer timeout](#mrtm-hwr-007--backup-timer-timeout)
  - [MRTM-HWR-008 — Backup driver response](#mrtm-hwr-008--backup-driver-response)
  - [MRTM-HWR-009 — Backup hold-up](#mrtm-hwr-009--backup-hold-up)
  - [MRTM-HWR-010 — Controller watchdog reset](#mrtm-hwr-010--controller-watchdog-reset)
  - [MRTM-HWR-011 — Clock drift](#mrtm-hwr-011--clock-drift)
  - [MRTM-HWR-012 — Switch to battery](#mrtm-hwr-012--switch-to-battery)
  - [MRTM-HWR-013 — Battery capacity](#mrtm-hwr-013--battery-capacity)
  - [MRTM-HWR-014 — Digit height](#mrtm-hwr-014--digit-height)
- [High-level requirement (HLR) (38)](#high-level-requirement-hlr-38)
  - [MRTM-HLR-001 — Sample period and read](#mrtm-hlr-001--sample-period-and-read)
  - [MRTM-HLR-002 — Invalid sample](#mrtm-hlr-002--invalid-sample)
  - [MRTM-HLR-003 — Probe fault declaration](#mrtm-hlr-003--probe-fault-declaration)
  - [MRTM-HLR-004 — Early excursion report](#mrtm-hlr-004--early-excursion-report)
  - [MRTM-HLR-005 — Confirmed excursion report](#mrtm-hlr-005--confirmed-excursion-report)
  - [MRTM-HLR-006 — Excursion end report](#mrtm-hlr-006--excursion-end-report)
  - [MRTM-HLR-007 — Early alarm light](#mrtm-hlr-007--early-alarm-light)
  - [MRTM-HLR-008 — Buzzer on](#mrtm-hlr-008--buzzer-on)
  - [MRTM-HLR-009 — Buzzer off on acknowledge](#mrtm-hlr-009--buzzer-off-on-acknowledge)
  - [MRTM-HLR-010 — Alarm heartbeat](#mrtm-hlr-010--alarm-heartbeat)
  - [MRTM-HLR-011 — Re-sound after silence](#mrtm-hlr-011--re-sound-after-silence)
  - [MRTM-HLR-012 — Probe fault tone](#mrtm-hlr-012--probe-fault-tone)
  - [MRTM-HLR-013 — Buzzer fault](#mrtm-hlr-013--buzzer-fault)
  - [MRTM-HLR-014 — Alarm survives restart](#mrtm-hlr-014--alarm-survives-restart)
  - [MRTM-HLR-015 — Stuck button](#mrtm-hlr-015--stuck-button)
  - [MRTM-HLR-016 — Watchdog tied to the heartbeat](#mrtm-hlr-016--watchdog-tied-to-the-heartbeat)
  - [MRTM-HLR-017 — Task watchdog restart](#mrtm-hlr-017--task-watchdog-restart)
  - [MRTM-HLR-018 — Power-up tests](#mrtm-hlr-018--power-up-tests)
  - [MRTM-HLR-019 — Band integrity](#mrtm-hlr-019--band-integrity)
  - [MRTM-HLR-020 — Mains events](#mrtm-hlr-020--mains-events)
  - [MRTM-HLR-021 — Battery low](#mrtm-hlr-021--battery-low)
  - [MRTM-HLR-022 — Maintenance flags](#mrtm-hlr-022--maintenance-flags)
  - [MRTM-HLR-023 — Power-up order](#mrtm-hlr-023--power-up-order)
  - [MRTM-HLR-024 — Task priorities keep the alarm first](#mrtm-hlr-024--task-priorities-keep-the-alarm-first)
  - [MRTM-HLR-025 — Warning and fault messages](#mrtm-hlr-025--warning-and-fault-messages)
  - [MRTM-HLR-026 — Temperature on screen](#mrtm-hlr-026--temperature-on-screen)
  - [MRTM-HLR-027 — Band at power-up](#mrtm-hlr-027--band-at-power-up)
  - [MRTM-HLR-028 — Maintenance messages](#mrtm-hlr-028--maintenance-messages)
  - [MRTM-HLR-029 — Display bus recovery](#mrtm-hlr-029--display-bus-recovery)
  - [MRTM-HLR-030 — Two copies within 1 s](#mrtm-hlr-030--two-copies-within-1-s)
  - [MRTM-HLR-031 — Newest 10000 kept](#mrtm-hlr-031--newest-10000-kept)
  - [MRTM-HLR-032 — Time stamps](#mrtm-hlr-032--time-stamps)
  - [MRTM-HLR-033 — Corrupt record](#mrtm-hlr-033--corrupt-record)
  - [MRTM-HLR-034 — Capacity warning record](#mrtm-hlr-034--capacity-warning-record)
  - [MRTM-HLR-035 — Read-only volume](#mrtm-hlr-035--read-only-volume)
  - [MRTM-HLR-036 — Host writes refused](#mrtm-hlr-036--host-writes-refused)
  - [MRTM-HLR-037 — Read the log only through the accessor](#mrtm-hlr-037--read-the-log-only-through-the-accessor)
  - [MRTM-HLR-038 — Buzzer in fail-safe](#mrtm-hlr-038--buzzer-in-fail-safe)
- [Low-level requirement (LLR) (45)](#low-level-requirement-llr-45)
  - [MRTM-LLR-001 — Bus start](#mrtm-llr-001--bus-start)
  - [MRTM-LLR-002 — Unit conversion](#mrtm-llr-002--unit-conversion)
  - [MRTM-LLR-003 — Sample read](#mrtm-llr-003--sample-read)
  - [MRTM-LLR-004 — Probe fault flag](#mrtm-llr-004--probe-fault-flag)
  - [MRTM-LLR-005 — CRC-8](#mrtm-llr-005--crc-8)
  - [MRTM-LLR-006 — Sensor step](#mrtm-llr-006--sensor-step)
  - [MRTM-LLR-007 — Band set](#mrtm-llr-007--band-set)
  - [MRTM-LLR-008 — Consecutive counts](#mrtm-llr-008--consecutive-counts)
  - [MRTM-LLR-009 — Peak](#mrtm-llr-009--peak)
  - [MRTM-LLR-010 — State restore](#mrtm-llr-010--state-restore)
  - [MRTM-LLR-011 — Signal queue](#mrtm-llr-011--signal-queue)
  - [MRTM-LLR-012 — Transition table](#mrtm-llr-012--transition-table)
  - [MRTM-LLR-013 — Outputs per state](#mrtm-llr-013--outputs-per-state)
  - [MRTM-LLR-014 — Debounce timer](#mrtm-llr-014--debounce-timer)
  - [MRTM-LLR-015 — Accepted press](#mrtm-llr-015--accepted-press)
  - [MRTM-LLR-016 — Heartbeat read](#mrtm-llr-016--heartbeat-read)
  - [MRTM-LLR-017 — Task watchdog](#mrtm-llr-017--task-watchdog)
  - [MRTM-LLR-018 — Pulse gate](#mrtm-llr-018--pulse-gate)
  - [MRTM-LLR-019 — Self-tests](#mrtm-llr-019--self-tests)
  - [MRTM-LLR-020 — Band load](#mrtm-llr-020--band-load)
  - [MRTM-LLR-021 — Band store](#mrtm-llr-021--band-store)
  - [MRTM-LLR-022 — CRC-32](#mrtm-llr-022--crc-32)
  - [MRTM-LLR-023 — Mains edge](#mrtm-llr-023--mains-edge)
  - [MRTM-LLR-024 — Battery low latch](#mrtm-llr-024--battery-low-latch)
  - [MRTM-LLR-025 — Power-up sequence](#mrtm-llr-025--power-up-sequence)
  - [MRTM-LLR-026 — Supervisor step](#mrtm-llr-026--supervisor-step)
  - [MRTM-LLR-027 — Display step](#mrtm-llr-027--display-step)
  - [MRTM-LLR-028 — Digits](#mrtm-llr-028--digits)
  - [MRTM-LLR-029 — Banner](#mrtm-llr-029--banner)
  - [MRTM-LLR-030 — Battery icon](#mrtm-llr-030--battery-icon)
  - [MRTM-LLR-031 — Bus recovery](#mrtm-llr-031--bus-recovery)
  - [MRTM-LLR-032 — Frame render](#mrtm-llr-032--frame-render)
  - [MRTM-LLR-033 — Start screen](#mrtm-llr-033--start-screen)
  - [MRTM-LLR-034 — Tick](#mrtm-llr-034--tick)
  - [MRTM-LLR-035 — Post](#mrtm-llr-035--post)
  - [MRTM-LLR-036 — Store](#mrtm-llr-036--store)
  - [MRTM-LLR-037 — Find the head](#mrtm-llr-037--find-the-head)
  - [MRTM-LLR-038 — Append](#mrtm-llr-038--append)
  - [MRTM-LLR-039 — Read](#mrtm-llr-039--read)
  - [MRTM-LLR-040 — Clock start](#mrtm-llr-040--clock-start)
  - [MRTM-LLR-041 — Clock read](#mrtm-llr-041--clock-read)
  - [MRTM-LLR-042 — Clock refresh](#mrtm-llr-042--clock-refresh)
  - [MRTM-LLR-043 — Volume start](#mrtm-llr-043--volume-start)
  - [MRTM-LLR-044 — Sector read](#mrtm-llr-044--sector-read)
  - [MRTM-LLR-045 — Sector write](#mrtm-llr-045--sector-write)

## Environmental Requirement (4)

### {#MRTM-ENV-001}MRTM-ENV-001 — Battery endurance

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, DOGFOOD-1)

**created**

2026-09-27

**safetyClass**

A

**derived**

false

**Description**

The monitor shall operate from the internal battery for 4 h.

**Rationale**

A-11 assumes 4 h until Q-07 is answered.

**Verification**

Test: run on a fully charged battery at 25 °C for 4 h.

**Uplinks:** [MRTM-SYS-016](#MRTM-SYS-016)

**Downlinks:** [MRTM-HWR-013](#MRTM-HWR-013)

### {#MRTM-ENV-002}MRTM-ENV-002 — Ambient temperature

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, DOGFOOD-1)

**created**

2026-09-27

**safetyClass**

A

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

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, DOGFOOD-1)

**created**

2026-09-27

**safetyClass**

A

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

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, DOGFOOD-1)

**created**

2026-09-27

**safetyClass**

A

**derived**

false

**Description**

The temperature probe shall operate at a fridge air temperature from -30 °C to 50 °C.

**Rationale**

Covers freezer faults and defrost cycles.

**Verification**

Test: probe in a chamber at -30 °C and 50 °C.

**Uplinks:** [MRTM-SYS-001](#MRTM-SYS-001)

**Downlinks:** [MRTM-HWR-002](#MRTM-HWR-002)

## Interface Requirement (4)

### {#MRTM-IFC-001}MRTM-IFC-001 — Probe bus

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, DOGFOOD-1)

**created**

2026-09-27

**safetyClass**

A

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

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, DOGFOOD-1)

**created**

2026-09-27

**safetyClass**

A

**derived**

false

**Description**

The monitor shall debounce the acknowledge button input for 50 ms.

**Rationale**

A momentary contact bounces; one press must be one acknowledgement.

**Verification**

Test: apply a bouncing contact and count acknowledgements.

**Uplinks:** [MRTM-SYS-006](#MRTM-SYS-006)

**Downlinks:** [MRTM-HLR-009](#MRTM-HLR-009), [MRTM-HWR-006](#MRTM-HWR-006)

### {#MRTM-IFC-003}MRTM-IFC-003 — USB readout

_Last changed by Masood on 2026-09-27 · `a846cdc0a701d671a1a1334e1274adf487098e7f` · per git_

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

**Downlinks:** [MRTM-HLR-035](#MRTM-HLR-035)

### {#MRTM-IFC-004}MRTM-IFC-004 — Display character height

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, DOGFOOD-1)

**created**

2026-09-27

**safetyClass**

A

**derived**

false

**Description**

The monitor shall draw the temperature digits at a character height of 5 mm or more.

**Rationale**

Readable from 1 m.

**Verification**

Inspection: measure the digit height on the display.

**Uplinks:** [MRTM-SYS-005](#MRTM-SYS-005)

**Downlinks:** [MRTM-HWR-014](#MRTM-HWR-014)

## Maintainability Requirement (3)

### {#MRTM-MNT-001}MRTM-MNT-001 — Probe replacement

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, DOGFOOD-1)

**created**

2026-09-27

**safetyClass**

A

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

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, DOGFOOD-1)

**created**

2026-09-27

**safetyClass**

A

**derived**

false

**Description**

The monitor shall show the battery charge level on the display in steps of 10 %.

**Rationale**

The technician plans the battery change.

**Verification**

Inspection: read the display at three charge levels.

**Uplinks:** [MRTM-SYS-016](#MRTM-SYS-016)

**Downlinks:** [MRTM-HLR-022](#MRTM-HLR-022), [MRTM-HLR-028](#MRTM-HLR-028)

### {#MRTM-MNT-003}MRTM-MNT-003 — Firmware version

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

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

A

**derived**

false

**Description**

The monitor shall show the firmware version on the display for 3 s at power-up.

**Rationale**

Configuration identification in the field (IEC 62304 cl. 8.1.1).

**Verification**

Inspection: power up and read the version.

**Uplinks:** [MRTM-SYS-001](#MRTM-SYS-001)

**Downlinks:** [MRTM-HLR-023](#MRTM-HLR-023), [MRTM-HLR-027](#MRTM-HLR-027)

## Performance Requirement (4)

### {#MRTM-PRF-001}MRTM-PRF-001 — Measurement accuracy

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, DOGFOOD-1)

**created**

2026-09-27

**safetyClass**

A

**derived**

false

**Description**

The monitor shall measure the fridge air temperature with an accuracy of ±0.5 °C over the range 0 °C to 15 °C.

**Rationale**

Measurement Accuracy in the data dictionary; the band edges must be judged correctly.

**Verification**

Test: compare with a reference thermometer at 0 °C, 5 °C and 15 °C.

**Uplinks:** [MRTM-SYS-001](#MRTM-SYS-001)

**Downlinks:** [MRTM-HWR-002](#MRTM-HWR-002)

### {#MRTM-PRF-002}MRTM-PRF-002 — End-to-end alert time

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, DOGFOOD-1)

**created**

2026-09-27

**safetyClass**

A

**derived**

false

**Description**

The monitor shall sound the buzzer within 65 s of the first sample outside the allowed band.

**Rationale**

60 s confirmation plus 5 s alert time.

**Verification**

Test: step the probe out of band and time the buzzer.

**Uplinks:** [MRTM-SYS-003](#MRTM-SYS-003)

**Downlinks:** [MRTM-HLR-008](#MRTM-HLR-008)

### {#MRTM-PRF-003}MRTM-PRF-003 — Log readout time

_Last changed by Masood on 2026-09-27 · `a846cdc0a701d671a1a1334e1274adf487098e7f` · per git_

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

**Downlinks:** [MRTM-HLR-035](#MRTM-HLR-035)

### {#MRTM-PRF-004}MRTM-PRF-004 — Display refresh

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, DOGFOOD-1)

**created**

2026-09-27

**safetyClass**

A

**derived**

false

**Description**

The monitor shall refresh the displayed temperature at a period of 10 s.

**Rationale**

The display follows the sampling period.

**Verification**

Test: time 20 display updates.

**Uplinks:** [MRTM-SYS-011](#MRTM-SYS-011)

**Downlinks:** [MRTM-HLR-026](#MRTM-HLR-026)

## Safety Requirement (23)

### {#MRTM-SAF-001}MRTM-SAF-001 — Buzzer loudness

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

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

A

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

**Uplinks:** [MRTM-SYS-003](#MRTM-SYS-003), [MRTM-SOB-001](#MRTM-SOB-001)

**Downlinks:** [MRTM-HWR-004](#MRTM-HWR-004)

### {#MRTM-SAF-002}MRTM-SAF-002 — Probe fault raises alert

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, DOGFOOD-1)

**created**

2026-09-27

**safetyClass**

A

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

**Uplinks:** [MRTM-SYS-012](#MRTM-SYS-012), [MRTM-SOB-001](#MRTM-SOB-001)

**Downlinks:** [MRTM-HLR-003](#MRTM-HLR-003), [MRTM-HLR-012](#MRTM-HLR-012)

### {#MRTM-SAF-003}MRTM-SAF-003 — Implausible sample

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

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

A

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

**Uplinks:** [MRTM-SYS-001](#MRTM-SYS-001), [MRTM-SOB-001](#MRTM-SOB-001), [MRTM-SOB-003](#MRTM-SOB-003)

**Downlinks:** [MRTM-HLR-002](#MRTM-HLR-002), [MRTM-HWR-003](#MRTM-HWR-003)

### {#MRTM-SAF-004}MRTM-SAF-004 — Watchdog restart

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, DOGFOOD-1)

**created**

2026-09-27

**safetyClass**

A

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

**Uplinks:** [MRTM-SYS-001](#MRTM-SYS-001), [MRTM-SOB-001](#MRTM-SOB-001)

**Downlinks:** [MRTM-HLR-017](#MRTM-HLR-017), [MRTM-HWR-010](#MRTM-HWR-010)

### {#MRTM-SAF-005}MRTM-SAF-005 — Log power loss

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, DOGFOOD-1)

**created**

2026-09-27

**safetyClass**

A

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

**Uplinks:** [MRTM-SYS-016](#MRTM-SYS-016), [MRTM-SOB-001](#MRTM-SOB-001), [MRTM-SOB-005](#MRTM-SOB-005)

**Downlinks:** [MRTM-HLR-020](#MRTM-HLR-020)

### {#MRTM-SAF-006}MRTM-SAF-006 — Alert survives restart

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

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

A

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

**Uplinks:** [MRTM-SYS-003](#MRTM-SYS-003), [MRTM-SOB-001](#MRTM-SOB-001)

**Downlinks:** [MRTM-HLR-014](#MRTM-HLR-014), [MRTM-HLR-023](#MRTM-HLR-023)

### {#MRTM-SAF-007}MRTM-SAF-007 — Buzzer self-test

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

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

A

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

**Uplinks:** [MRTM-SYS-003](#MRTM-SYS-003), [MRTM-SOB-001](#MRTM-SOB-001)

**Downlinks:** [MRTM-HLR-018](#MRTM-HLR-018)

### {#MRTM-SAF-008}MRTM-SAF-008 — Low battery alarm

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, DOGFOOD-1)

**created**

2026-09-27

**safetyClass**

A

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

**Uplinks:** [MRTM-SYS-016](#MRTM-SYS-016), [MRTM-SOB-001](#MRTM-SOB-001)

**Downlinks:** [MRTM-HLR-021](#MRTM-HLR-021), [MRTM-HLR-038](#MRTM-HLR-038)

### {#MRTM-SAF-009}MRTM-SAF-009 — Backup alarm on firmware silence

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, DOGFOOD-3)

**created**

2026-09-27

**safetyClass**

A

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

**Uplinks:** [MRTM-SYS-003](#MRTM-SYS-003), [MRTM-SOB-001](#MRTM-SOB-001)

**Downlinks:** [MRTM-HLR-016](#MRTM-HLR-016), [MRTM-HWR-007](#MRTM-HWR-007), [MRTM-HWR-008](#MRTM-HWR-008)

### {#MRTM-SAF-010}MRTM-SAF-010 — Watchdog tied to the alarm service

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, DOGFOOD-3)

**created**

2026-09-27

**safetyClass**

A

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

**Uplinks:** [MRTM-SYS-003](#MRTM-SYS-003), [MRTM-SOB-001](#MRTM-SOB-001)

**Downlinks:** [MRTM-HLR-010](#MRTM-HLR-010), [MRTM-HLR-016](#MRTM-HLR-016), [MRTM-HWR-007](#MRTM-HWR-007)

### {#MRTM-SAF-011}MRTM-SAF-011 — Fault tone differs from excursion tone

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

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

**Uplinks:** [MRTM-SYS-012](#MRTM-SYS-012), [MRTM-SOB-004](#MRTM-SOB-004)

**Downlinks:** [MRTM-HLR-012](#MRTM-HLR-012)

### {#MRTM-SAF-012}MRTM-SAF-012 — Probe calibration due

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, DOGFOOD-3)

**created**

2026-09-27

**safetyClass**

B

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

**Uplinks:** [MRTM-SYS-001](#MRTM-SYS-001), [MRTM-SOB-003](#MRTM-SOB-003)

**Downlinks:** [MRTM-HLR-022](#MRTM-HLR-022), [MRTM-HLR-028](#MRTM-HLR-028)

### {#MRTM-SAF-013}MRTM-SAF-013 — Alarm on total power loss

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, DOGFOOD-3)

**created**

2026-09-27

**safetyClass**

A

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

**Uplinks:** [MRTM-SYS-016](#MRTM-SYS-016), [MRTM-SOB-001](#MRTM-SOB-001)

**Downlinks:** [MRTM-HWR-009](#MRTM-HWR-009)

### {#MRTM-SAF-014}MRTM-SAF-014 — Buzzer open-circuit detection

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, DOGFOOD-3)

**created**

2026-09-27

**safetyClass**

A

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

**Uplinks:** [MRTM-SYS-003](#MRTM-SYS-003), [MRTM-SOB-001](#MRTM-SOB-001)

**Downlinks:** [MRTM-HLR-013](#MRTM-HLR-013)

### {#MRTM-SAF-015}MRTM-SAF-015 — Diverse signal for buzzer fault

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, DOGFOOD-3)

**created**

2026-09-27

**safetyClass**

A

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

**Uplinks:** [MRTM-SYS-004](#MRTM-SYS-004), [MRTM-SOB-001](#MRTM-SOB-001)

**Downlinks:** [MRTM-HLR-013](#MRTM-HLR-013)

### {#MRTM-SAF-016}MRTM-SAF-016 — Show the band at power-up

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, DOGFOOD-3)

**created**

2026-09-27

**safetyClass**

B

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

**Uplinks:** [MRTM-SYS-017](#MRTM-SYS-017), [MRTM-SOB-002](#MRTM-SOB-002)

**Downlinks:** [MRTM-HLR-023](#MRTM-HLR-023), [MRTM-HLR-027](#MRTM-HLR-027)

### {#MRTM-SAF-017}MRTM-SAF-017 — Band integrity check

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, DOGFOOD-3)

**created**

2026-09-27

**safetyClass**

A

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

**Uplinks:** [MRTM-SYS-017](#MRTM-SYS-017), [MRTM-SOB-002](#MRTM-SOB-002)

**Downlinks:** [MRTM-HLR-019](#MRTM-HLR-019), [MRTM-HLR-038](#MRTM-HLR-038)

### {#MRTM-SAF-018}MRTM-SAF-018 — Two copies of every record

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

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

**Uplinks:** [MRTM-SYS-015](#MRTM-SYS-015), [MRTM-SOB-005](#MRTM-SOB-005)

**Downlinks:** [MRTM-HLR-030](#MRTM-HLR-030)

### {#MRTM-SAF-019}MRTM-SAF-019 — Stuck acknowledge button

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, DOGFOOD-3)

**created**

2026-09-27

**safetyClass**

A

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

**Uplinks:** [MRTM-SYS-006](#MRTM-SYS-006), [MRTM-SOB-001](#MRTM-SOB-001)

**Downlinks:** [MRTM-HLR-015](#MRTM-HLR-015)

### {#MRTM-SAF-020}MRTM-SAF-020 — Probe placement in the instructions

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, DOGFOOD-3)

**created**

2026-09-27

**safetyClass**

A

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

**Uplinks:** [MRTM-SYS-001](#MRTM-SYS-001), [MRTM-SOB-001](#MRTM-SOB-001)

### {#MRTM-SAF-021}MRTM-SAF-021 — I2C bus recovery

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, DOGFOOD-3)

**created**

2026-09-27

**safetyClass**

B

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

**Uplinks:** [MRTM-SYS-005](#MRTM-SYS-005), [MRTM-SOB-001](#MRTM-SOB-001), [MRTM-SOB-005](#MRTM-SOB-005)

**Downlinks:** [MRTM-HLR-029](#MRTM-HLR-029)

### {#MRTM-SAF-022}MRTM-SAF-022 — Clock stop detection

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

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

**Uplinks:** [MRTM-SYS-020](#MRTM-SYS-020), [MRTM-SOB-005](#MRTM-SOB-005)

**Downlinks:** [MRTM-HLR-032](#MRTM-HLR-032), [MRTM-HWR-011](#MRTM-HWR-011)

### {#MRTM-SAF-023}MRTM-SAF-023 — Backup alarm power-up test

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, DOGFOOD-3)

**created**

2026-09-27

**safetyClass**

A

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

**Uplinks:** [MRTM-SYS-003](#MRTM-SYS-003), [MRTM-SOB-001](#MRTM-SOB-001)

**Downlinks:** [MRTM-HLR-018](#MRTM-HLR-018)

## Stakeholder Requirement (8)

### {#MRTM-STK-001}MRTM-STK-001 — Alert on excursion

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, DOGFOOD-1)

**created**

2026-09-27

**safetyClass**

A

**derived**

false

**Description**

The monitor shall alert the nurse at the fridge when the fridge air temperature leaves the allowed band.

**Rationale**

US-1: a spoiled vaccine looks the same as a good one, so staff must be told.

**Verification**

Test: drive the probe outside the allowed band and confirm the alert reaches the nurse position.

**Uplinks:** none

**Downlinks:** [MRTM-FUN-002](#MRTM-FUN-002)

### {#MRTM-STK-002}MRTM-STK-002 — No alert on brief door opening

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

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

A

**derived**

false

**Description**

The monitor shall raise no audible alert for the temperature departure shorter than the excursion confirmation time.

**Rationale**

US-2: false alarms teach staff to ignore the alarm (R-05).

**Verification**

Test: hold the probe outside the band for 30 s and confirm no alert.

**Uplinks:** none

**Downlinks:** [MRTM-FUN-002](#MRTM-FUN-002)

### {#MRTM-STK-003}MRTM-STK-003 — Silence the alert

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, DOGFOOD-1)

**created**

2026-09-27

**safetyClass**

A

**derived**

false

**Description**

The monitor shall let the nurse silence the alert.

**Rationale**

US-3: the nurse must be able to work while fixing the fridge.

**Verification**

Demonstration: press the acknowledge button during an alert.

**Uplinks:** none

**Downlinks:** [MRTM-FUN-003](#MRTM-FUN-003)

### {#MRTM-STK-004}MRTM-STK-004 — See the temperature

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, DOGFOOD-1)

**created**

2026-09-27

**safetyClass**

A

**derived**

false

**Description**

The monitor shall display the current fridge air temperature to the nurse.

**Rationale**

US-4: the state must be visible without tools.

**Verification**

Inspection: read the display during operation.

**Uplinks:** none

**Downlinks:** [MRTM-FUN-001](#MRTM-FUN-001)

### {#MRTM-STK-005}MRTM-STK-005 — Audit history

_Last changed by Masood on 2026-09-27 · `a846cdc0a701d671a1a1334e1274adf487098e7f` · per git_

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

**Downlinks:** [MRTM-FUN-004](#MRTM-FUN-004)

### {#MRTM-STK-006}MRTM-STK-006 — History cannot be edited

_Last changed by Masood on 2026-09-27 · `a846cdc0a701d671a1a1334e1274adf487098e7f` · per git_

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

**Downlinks:** [MRTM-FUN-004](#MRTM-FUN-004)

### {#MRTM-STK-007}MRTM-STK-007 — Probe failure is visible

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, DOGFOOD-1)

**created**

2026-09-27

**safetyClass**

A

**derived**

false

**Description**

The monitor shall tell the technician when the temperature probe fails.

**Rationale**

US-7: a failed probe misses excursions silently.

**Verification**

Test: disconnect the probe and confirm the fault indication.

**Uplinks:** none

**Downlinks:** [MRTM-FUN-001](#MRTM-FUN-001)

### {#MRTM-STK-008}MRTM-STK-008 — Monitoring through a power cut

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, DOGFOOD-1)

**created**

2026-09-27

**safetyClass**

A

**derived**

false

**Description**

The monitor shall keep monitoring during a mains power loss of up to 4 h.

**Rationale**

US-8: power cuts happen at night; A-11 assumes 4 h until Q-07 is answered.

**Verification**

Test: remove mains power for 4 h and confirm samples continue.

**Uplinks:** none

**Downlinks:** [MRTM-FUN-005](#MRTM-FUN-005)

## System Requirement (24)

### {#MRTM-SYS-001}MRTM-SYS-001 — Sampling period

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

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

A

**derived**

false

**Description**

The monitor shall sample the fridge air temperature at the sampling period of 2 s.

**Rationale**

Sampling Period in the data dictionary (A-04).

**Verification**

Test: time 100 consecutive samples; each interval is 2 s ± 0.1 s.

**Uplinks:** [MRTM-FUN-001](#MRTM-FUN-001)

**Downlinks:** [MRTM-ENV-002](#MRTM-ENV-002), [MRTM-ENV-003](#MRTM-ENV-003), [MRTM-ENV-004](#MRTM-ENV-004), [MRTM-HLR-001](#MRTM-HLR-001), [MRTM-HWR-001](#MRTM-HWR-001), [MRTM-IFC-001](#MRTM-IFC-001), [MRTM-MNT-003](#MRTM-MNT-003), [MRTM-PRF-001](#MRTM-PRF-001), [MRTM-SAF-003](#MRTM-SAF-003), [MRTM-SAF-004](#MRTM-SAF-004), [MRTM-SAF-012](#MRTM-SAF-012), [MRTM-SAF-020](#MRTM-SAF-020)

### {#MRTM-SYS-002}MRTM-SYS-002 — Excursion confirmation

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

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

A

**derived**

false

**Description**

The monitor shall confirm the excursion when 31 consecutive samples, spanning 60 s, are outside the allowed band.

**Rationale**

Excursion Confirmation Time filters door openings (US-2).

**Verification**

Test: hold the probe out of band for 59 s and 61 s; only the second confirms.

**Uplinks:** [MRTM-FUN-002](#MRTM-FUN-002)

**Downlinks:** [MRTM-HLR-005](#MRTM-HLR-005)

### {#MRTM-SYS-003}MRTM-SYS-003 — Buzzer on excursion

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, DOGFOOD-1)

**created**

2026-09-27

**safetyClass**

A

**derived**

false

**Description**

The monitor shall sound the buzzer within 5 s of excursion confirmation.

**Rationale**

The buzzer is the alert that reaches a nurse out of sight of the device.

**Verification**

Test: measure the time from confirmation to buzzer onset.

**Uplinks:** [MRTM-FUN-002](#MRTM-FUN-002)

**Downlinks:** [MRTM-HLR-008](#MRTM-HLR-008), [MRTM-HWR-004](#MRTM-HWR-004), [MRTM-PRF-002](#MRTM-PRF-002), [MRTM-SAF-001](#MRTM-SAF-001), [MRTM-SAF-006](#MRTM-SAF-006), [MRTM-SAF-007](#MRTM-SAF-007), [MRTM-SAF-009](#MRTM-SAF-009), [MRTM-SAF-010](#MRTM-SAF-010), [MRTM-SAF-014](#MRTM-SAF-014), [MRTM-SAF-023](#MRTM-SAF-023)

### {#MRTM-SYS-004}MRTM-SYS-004 — Red indicator on excursion

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

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

A

**derived**

false

**Description**

The monitor shall flash the red indicator at 2 Hz within 5 s of excursion confirmation.

**Rationale**

A visual alert for a noisy room.

**Verification**

Test: measure the time from confirmation to the first red flash.

**Uplinks:** [MRTM-FUN-002](#MRTM-FUN-002)

**Downlinks:** [MRTM-HLR-007](#MRTM-HLR-007), [MRTM-HWR-005](#MRTM-HWR-005), [MRTM-SAF-015](#MRTM-SAF-015)

### {#MRTM-SYS-005}MRTM-SYS-005 — Warning on excursion

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, DOGFOOD-1)

**created**

2026-09-27

**safetyClass**

A

**derived**

false

**Description**

The monitor shall show the excursion warning on the display within 5 s of excursion confirmation.

**Rationale**

The warning tells the nurse which way the temperature went and since when.

**Verification**

Test: measure the time from confirmation to the warning on the display.

**Uplinks:** [MRTM-FUN-002](#MRTM-FUN-002)

**Downlinks:** [MRTM-HLR-025](#MRTM-HLR-025), [MRTM-IFC-004](#MRTM-IFC-004), [MRTM-SAF-021](#MRTM-SAF-021)

### {#MRTM-SYS-006}MRTM-SYS-006 — Acknowledge silences buzzer

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, DOGFOOD-1)

**created**

2026-09-27

**safetyClass**

A

**derived**

false

**Description**

The monitor shall stop the buzzer within 1 s of the acknowledge button press.

**Rationale**

Acknowledgement silences the alert; it does not end the excursion.

**Verification**

Test: press acknowledge during an alert and time the buzzer stop.

**Uplinks:** [MRTM-FUN-003](#MRTM-FUN-003)

**Downlinks:** [MRTM-HLR-009](#MRTM-HLR-009), [MRTM-HWR-006](#MRTM-HWR-006), [MRTM-IFC-002](#MRTM-IFC-002), [MRTM-SAF-019](#MRTM-SAF-019)

### {#MRTM-SYS-007}MRTM-SYS-007 — Warning stays while excursion is open

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

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

A

**derived**

false

**Description**

The monitor shall keep the excursion warning on the display for the duration of the excursion.

**Rationale**

Silencing the buzzer must not hide the problem.

**Verification**

Test: acknowledge an alert and confirm the warning stays until the temperature returns to band.

**Uplinks:** [MRTM-FUN-003](#MRTM-FUN-003)

**Downlinks:** [MRTM-HLR-025](#MRTM-HLR-025)

### {#MRTM-SYS-008}MRTM-SYS-008 — Log excursion start

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

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

**Uplinks:** [MRTM-FUN-004](#MRTM-FUN-004)

**Downlinks:** [MRTM-HLR-030](#MRTM-HLR-030)

### {#MRTM-SYS-009}MRTM-SYS-009 — Log excursion end

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

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

**Uplinks:** [MRTM-FUN-004](#MRTM-FUN-004)

**Downlinks:** [MRTM-HLR-006](#MRTM-HLR-006)

### {#MRTM-SYS-010}MRTM-SYS-010 — Log acknowledgement

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

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

**Uplinks:** [MRTM-FUN-004](#MRTM-FUN-004)

**Downlinks:** [MRTM-HLR-030](#MRTM-HLR-030)

### {#MRTM-SYS-011}MRTM-SYS-011 — Display resolution

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

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

A

**derived**

false

**Description**

The monitor shall display the current temperature at 0.1 °C resolution.

**Rationale**

Staff compare the value with the 2 °C to 8 °C band.

**Verification**

Inspection: read the display at three probe temperatures.

**Uplinks:** [MRTM-FUN-001](#MRTM-FUN-001)

**Downlinks:** [MRTM-HLR-026](#MRTM-HLR-026), [MRTM-HWR-014](#MRTM-HWR-014), [MRTM-PRF-004](#MRTM-PRF-004)

### {#MRTM-SYS-012}MRTM-SYS-012 — Probe fault detection

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

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

A

**derived**

false

**Description**

The monitor shall declare the probe fault when no sample with a correct CRC arrives for 30 s.

**Rationale**

Three missed samples mean the probe cannot be trusted.

**Verification**

Test: disconnect the probe and time the fault declaration.

**Uplinks:** [MRTM-FUN-001](#MRTM-FUN-001)

**Downlinks:** [MRTM-HLR-002](#MRTM-HLR-002), [MRTM-HLR-003](#MRTM-HLR-003), [MRTM-HWR-003](#MRTM-HWR-003), [MRTM-MNT-001](#MRTM-MNT-001), [MRTM-SAF-002](#MRTM-SAF-002), [MRTM-SAF-011](#MRTM-SAF-011)

### {#MRTM-SYS-013}MRTM-SYS-013 — Probe fault message

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, DOGFOOD-1)

**created**

2026-09-27

**safetyClass**

A

**derived**

false

**Description**

The monitor shall show the probe fault message on the display within 5 s of the probe fault declaration.

**Rationale**

The technician must see which part failed.

**Verification**

Test: disconnect the probe and time the message.

**Uplinks:** [MRTM-FUN-001](#MRTM-FUN-001)

**Downlinks:** [MRTM-HLR-025](#MRTM-HLR-025)

### {#MRTM-SYS-014}MRTM-SYS-014 — Read-only event log

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

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

**Uplinks:** [MRTM-FUN-004](#MRTM-FUN-004)

**Downlinks:** [MRTM-HLR-035](#MRTM-HLR-035), [MRTM-HLR-036](#MRTM-HLR-036), [MRTM-IFC-003](#MRTM-IFC-003)

### {#MRTM-SYS-015}MRTM-SYS-015 — Event log capacity

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

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

**Uplinks:** [MRTM-FUN-004](#MRTM-FUN-004)

**Downlinks:** [MRTM-HLR-031](#MRTM-HLR-031), [MRTM-PRF-003](#MRTM-PRF-003), [MRTM-SAF-018](#MRTM-SAF-018)

### {#MRTM-SYS-016}MRTM-SYS-016 — Battery operation

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

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

A

**derived**

false

**Description**

The monitor shall switch to the internal battery within 100 ms of mains power loss.

**Rationale**

US-8: monitoring must continue through a power cut.

**Verification**

Test: remove mains power and confirm sampling continues.

**Uplinks:** [MRTM-FUN-005](#MRTM-FUN-005)

**Downlinks:** [MRTM-ENV-001](#MRTM-ENV-001), [MRTM-HWR-012](#MRTM-HWR-012), [MRTM-MNT-002](#MRTM-MNT-002), [MRTM-SAF-005](#MRTM-SAF-005), [MRTM-SAF-008](#MRTM-SAF-008), [MRTM-SAF-013](#MRTM-SAF-013)

### {#MRTM-SYS-017}MRTM-SYS-017 — Allowed band

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, DOGFOOD-1)

**created**

2026-09-27

**safetyClass**

A

**derived**

false

**Description**

The monitor shall use the allowed band from 2 °C to 8 °C.

**Rationale**

Review round 1, thread T02: the band lived only in the data dictionary and A-04, so no test could fail on a wrong band.

**Verification**

Test: step the probe to 1.9 °C, 2.0 °C, 8.0 °C and 8.1 °C and confirm only 1.9 °C and 8.1 °C count as outside the band.

**Uplinks:** [MRTM-FUN-002](#MRTM-FUN-002)

**Downlinks:** [MRTM-HLR-019](#MRTM-HLR-019), [MRTM-SAF-016](#MRTM-SAF-016), [MRTM-SAF-017](#MRTM-SAF-017)

### {#MRTM-SYS-018}MRTM-SYS-018 — Excursion end confirmation

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

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

A

**derived**

false

**Description**

The monitor shall end the excursion after 31 consecutive samples, spanning 60 s, back inside the allowed band.

**Rationale**

Review round 1, thread T08: ending at the first sample back inside makes a fridge at the band edge start and end excursions every 10 s (alarm chatter).

**Verification**

Test: hold the probe at the limit with ±0.2 °C noise and confirm exactly one excursion start event and one excursion end event in the log.

**Uplinks:** [MRTM-FUN-002](#MRTM-FUN-002)

**Downlinks:** [MRTM-HLR-006](#MRTM-HLR-006)

### {#MRTM-SYS-019}MRTM-SYS-019 — Alarm comes back after silence

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, DOGFOOD-1)

**created**

2026-09-27

**safetyClass**

A

**derived**

false

**Description**

The monitor shall sound the buzzer again 15 min after the acknowledge button press while the excursion continues.

**Rationale**

Review round 1, thread T09: silence is a paused alarm, not a cancelled one (IEC 60601-1-8 frame). 15 min is assumption A-13.

**Verification**

Test: acknowledge during an excursion, keep the probe warm, confirm the buzzer returns at 15 min ± 5 s.

**Uplinks:** [MRTM-FUN-003](#MRTM-FUN-003)

**Downlinks:** [MRTM-HLR-011](#MRTM-HLR-011)

### {#MRTM-SYS-020}MRTM-SYS-020 — Clock drift

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

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

**Uplinks:** [MRTM-FUN-004](#MRTM-FUN-004)

**Downlinks:** [MRTM-HLR-032](#MRTM-HLR-032), [MRTM-HWR-011](#MRTM-HWR-011), [MRTM-SAF-022](#MRTM-SAF-022)

### {#MRTM-SYS-021}MRTM-SYS-021 — Event log integrity

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

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

**Uplinks:** [MRTM-FUN-004](#MRTM-FUN-004)

**Downlinks:** [MRTM-HLR-033](#MRTM-HLR-033)

### {#MRTM-SYS-022}MRTM-SYS-022 — Log capacity warning

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

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

**Uplinks:** [MRTM-FUN-004](#MRTM-FUN-004)

**Downlinks:** [MRTM-HLR-022](#MRTM-HLR-022), [MRTM-HLR-028](#MRTM-HLR-028), [MRTM-HLR-034](#MRTM-HLR-034)

### {#MRTM-SYS-023}MRTM-SYS-023 — Power restore event

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, DOGFOOD-1)

**created**

2026-09-27

**safetyClass**

A

**derived**

false

**Description**

The monitor shall log the power restore event with the UTC time stamp at 1 s resolution.

**Rationale**

Review round 1, thread T17: without the restore event an auditor cannot tell how long the fridge ran on battery.

**Verification**

Test: remove and restore mains and confirm both events with time stamps in the log.

**Uplinks:** [MRTM-FUN-005](#MRTM-FUN-005)

**Downlinks:** [MRTM-HLR-020](#MRTM-HLR-020), [MRTM-HLR-032](#MRTM-HLR-032)

### {#MRTM-SYS-024}MRTM-SYS-024 — Early excursion alarm

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, DOGFOOD-6)

**created**

2026-09-27

**safetyClass**

A

**derived**

false

**Description**

The system shall raise an alarm within 5 seconds of a temperature excursion.

**Rationale**

Change request CR-001 (Phase 11): staff want to know at once that the fridge is warming, not a minute later. Two-tier design (decision record 0030): this early alarm is the low-priority visual tier; the confirmed high-priority buzzer tier keeps the 60 s confirmation (MRTM-SYS-002, MRTM-STK-002) against nuisance alarms (HAZ-002).

**Verification**

Test: step the probe out of band; measure the time from the first out-of-band probe reading to the red indicator's 1 Hz flash; pass when <= 5 s in 10 of 10 trials; the buzzer stays off until confirmation.

**Uplinks:** [MRTM-FUN-002](#MRTM-FUN-002)

**Downlinks:** [MRTM-HLR-001](#MRTM-HLR-001), [MRTM-HLR-004](#MRTM-HLR-004), [MRTM-HLR-007](#MRTM-HLR-007), [MRTM-HWR-001](#MRTM-HWR-001), [MRTM-HWR-005](#MRTM-HWR-005)

## Product function requirement (5)

### {#MRTM-FUN-001}MRTM-FUN-001 — Monitor the fridge air

_Last changed by Masood on 2026-09-27 · `c1d70db73ebde2cce7a3f7e0b0e45d946abd43fe` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**modified**

2026-09-27

**safetyClass**

A

**derived**

false

**Description**

The monitor shall measure the fridge air temperature and show when the measurement is not valid.

**Rationale**

The monitor plays the aircraft of ARP4754A: its functions are the top of the ladder (A-4-02). Serves the needs to see the temperature and to see a probe failure.

**Verification**

Analysis: the system requirements derived from this function are all verified.

**Safety**

DAL A (catastrophic failure condition), assigned to `aircraft` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-STK-004](#MRTM-STK-004), [MRTM-STK-007](#MRTM-STK-007)

**Downlinks:** [MRTM-SOB-003](#MRTM-SOB-003), [MRTM-SYS-001](#MRTM-SYS-001), [MRTM-SYS-011](#MRTM-SYS-011), [MRTM-SYS-012](#MRTM-SYS-012), [MRTM-SYS-013](#MRTM-SYS-013)

### {#MRTM-FUN-002}MRTM-FUN-002 — Warn of an excursion

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

A

**derived**

false

**Description**

The monitor shall warn clinic staff when the fridge air stays outside the allowed band longer than the confirmation time.

**Rationale**

The monitor plays the aircraft of ARP4754A: its functions are the top of the ladder (A-4-02). Serves the needs to be alerted and not to be alerted for a brief door opening.

**Verification**

Analysis: the system requirements derived from this function are all verified.

**Safety**

DAL A (catastrophic failure condition), assigned to `aircraft` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-STK-001](#MRTM-STK-001), [MRTM-STK-002](#MRTM-STK-002)

**Downlinks:** [MRTM-SOB-001](#MRTM-SOB-001), [MRTM-SOB-002](#MRTM-SOB-002), [MRTM-SOB-004](#MRTM-SOB-004), [MRTM-SYS-002](#MRTM-SYS-002), [MRTM-SYS-003](#MRTM-SYS-003), [MRTM-SYS-004](#MRTM-SYS-004), [MRTM-SYS-005](#MRTM-SYS-005), [MRTM-SYS-017](#MRTM-SYS-017), [MRTM-SYS-018](#MRTM-SYS-018), [MRTM-SYS-024](#MRTM-SYS-024)

### {#MRTM-FUN-003}MRTM-FUN-003 — Acknowledge the warning

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

A

**derived**

false

**Description**

The monitor shall let clinic staff silence an excursion warning without ending the watch on the excursion.

**Rationale**

The monitor plays the aircraft of ARP4754A: its functions are the top of the ladder (A-4-02). Serves the need to silence the alert.

**Verification**

Analysis: the system requirements derived from this function are all verified.

**Safety**

DAL A (catastrophic failure condition), assigned to `aircraft` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-STK-003](#MRTM-STK-003)

**Downlinks:** [MRTM-SYS-006](#MRTM-SYS-006), [MRTM-SYS-007](#MRTM-SYS-007), [MRTM-SYS-019](#MRTM-SYS-019)

### {#MRTM-FUN-004}MRTM-FUN-004 — Keep the history

_Last changed by Masood on 2026-09-27 · `c1d70db73ebde2cce7a3f7e0b0e45d946abd43fe` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**modified**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The monitor shall keep an unchangeable record of every excursion and alarm event.

**Rationale**

The monitor plays the aircraft of ARP4754A: its functions are the top of the ladder (A-4-02). Serves the audit needs.

**Verification**

Analysis: the system requirements derived from this function are all verified.

**Safety**

DAL C (major failure condition), assigned to `aircraft` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-STK-005](#MRTM-STK-005), [MRTM-STK-006](#MRTM-STK-006)

**Downlinks:** [MRTM-SOB-005](#MRTM-SOB-005), [MRTM-SYS-008](#MRTM-SYS-008), [MRTM-SYS-009](#MRTM-SYS-009), [MRTM-SYS-010](#MRTM-SYS-010), [MRTM-SYS-014](#MRTM-SYS-014), [MRTM-SYS-015](#MRTM-SYS-015), [MRTM-SYS-020](#MRTM-SYS-020), [MRTM-SYS-021](#MRTM-SYS-021), [MRTM-SYS-022](#MRTM-SYS-022)

### {#MRTM-FUN-005}MRTM-FUN-005 — Watch through a power cut

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

A

**derived**

false

**Description**

The monitor shall keep watching and warning while the mains power is lost.

**Rationale**

The monitor plays the aircraft of ARP4754A: its functions are the top of the ladder (A-4-02). Serves the need to monitor through a power cut.

**Verification**

Analysis: the system requirements derived from this function are all verified.

**Safety**

DAL A (catastrophic failure condition), assigned to `aircraft` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-STK-008](#MRTM-STK-008)

**Downlinks:** [MRTM-SOB-001](#MRTM-SOB-001), [MRTM-SYS-016](#MRTM-SYS-016), [MRTM-SYS-023](#MRTM-SYS-023)

## Safety objective (FHA) (5)

### {#MRTM-SOB-001}MRTM-SOB-001 — No silent loss of warning

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

A

**hazard**

HAZ-001, HAZ-003, HAZ-005, HAZ-006

**derived**

false

**Description**

No single failure shall cause the loss of the excursion warning without an alarm signal to clinic staff.

**Rationale**

FHA, 08-safety/01-fha.md. Severity names are the aerospace scale used as an analogue (A-4-04). Failure condition FC-1 'loss of warning, not annunciated' — catastrophic analogue: a patient may receive a vaccine that lost its potency and nobody knows. Hazards HAZ-001, HAZ-003, HAZ-005, HAZ-006.

**Verification**

Analysis: the PSSA fault tree shows a second, independent signal for every single failure.

**Safety**

DAL A (catastrophic failure condition), assigned to `aircraft` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-FUN-002](#MRTM-FUN-002), [MRTM-FUN-005](#MRTM-FUN-005)

**Downlinks:** [MRTM-SAF-001](#MRTM-SAF-001), [MRTM-SAF-002](#MRTM-SAF-002), [MRTM-SAF-003](#MRTM-SAF-003), [MRTM-SAF-004](#MRTM-SAF-004), [MRTM-SAF-005](#MRTM-SAF-005), [MRTM-SAF-006](#MRTM-SAF-006), [MRTM-SAF-007](#MRTM-SAF-007), [MRTM-SAF-008](#MRTM-SAF-008), [MRTM-SAF-009](#MRTM-SAF-009), [MRTM-SAF-010](#MRTM-SAF-010), [MRTM-SAF-013](#MRTM-SAF-013), [MRTM-SAF-014](#MRTM-SAF-014), [MRTM-SAF-015](#MRTM-SAF-015), [MRTM-SAF-019](#MRTM-SAF-019), [MRTM-SAF-020](#MRTM-SAF-020), [MRTM-SAF-021](#MRTM-SAF-021), [MRTM-SAF-023](#MRTM-SAF-023)

### {#MRTM-SOB-002}MRTM-SOB-002 — No silent wrong band

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

A

**hazard**

HAZ-007

**derived**

false

**Description**

No single failure shall make the monitor judge the air against a band other than the stored band without an alarm signal.

**Rationale**

FHA, 08-safety/01-fha.md. Severity names are the aerospace scale used as an analogue (A-4-04). Failure condition FC-2 'misleading warning: wrong limits' — catastrophic analogue. Hazard HAZ-007.

**Verification**

Analysis: the PSSA shows the band check refuses a corrupted band and forces the alarm.

**Safety**

DAL A (catastrophic failure condition), assigned to `aircraft` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-FUN-002](#MRTM-FUN-002)

**Downlinks:** [MRTM-SAF-016](#MRTM-SAF-016), [MRTM-SAF-017](#MRTM-SAF-017)

### {#MRTM-SOB-003}MRTM-SOB-003 — Drift is bounded and shown

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

B

**hazard**

HAZ-004

**derived**

false

**Description**

The monitor shall bound probe drift by a calibration interval of 365 days and show staff when it has passed.

**Rationale**

FHA, 08-safety/01-fha.md. Severity names are the aerospace scale used as an analogue (A-4-04). Failure condition FC-3 'misleading temperature: drift' — hazardous analogue: an excursion near the band edge is missed. Hazard HAZ-004.

**Verification**

Analysis: the calibration-due signal is traced to a verified requirement.

**Safety**

DAL B (hazardous failure condition), assigned to `aircraft` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-FUN-001](#MRTM-FUN-001)

**Downlinks:** [MRTM-SAF-003](#MRTM-SAF-003), [MRTM-SAF-012](#MRTM-SAF-012)

### {#MRTM-SOB-004}MRTM-SOB-004 — Nuisance warnings are limited

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

C

**hazard**

HAZ-002

**derived**

false

**Description**

The monitor shall not sound the buzzer for an out-of-band period shorter than the 60 s confirmation time.

**Rationale**

FHA, 08-safety/01-fha.md. Severity names are the aerospace scale used as an analogue (A-4-04). Failure condition FC-4 'nuisance warning' — major analogue: staff learn to ignore the alarm. Hazard HAZ-002.

**Verification**

Test: the confirmation tests of the alarm software item.

**Safety**

DAL C (major failure condition), assigned to `aircraft` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-FUN-002](#MRTM-FUN-002)

**Downlinks:** [MRTM-SAF-011](#MRTM-SAF-011)

### {#MRTM-SOB-005}MRTM-SOB-005 — No silent loss of history

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

C

**hazard**

HAZ-008

**derived**

false

**Description**

No single failure shall lose an excursion record without an event that shows the loss.

**Rationale**

FHA, 08-safety/01-fha.md. Severity names are the aerospace scale used as an analogue (A-4-04). Failure condition FC-5 'loss of history' — major analogue: an audit cannot show the exposure. Hazard HAZ-008.

**Verification**

Analysis: two copies of every record and a corrupt-record event.

**Safety**

DAL C (major failure condition), assigned to `aircraft` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-FUN-004](#MRTM-FUN-004)

**Downlinks:** [MRTM-SAF-005](#MRTM-SAF-005), [MRTM-SAF-018](#MRTM-SAF-018), [MRTM-SAF-021](#MRTM-SAF-021), [MRTM-SAF-022](#MRTM-SAF-022)

## Hardware item requirement (14)

### {#MRTM-HWR-001}MRTM-HWR-001 — Probe conversion time

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

A

**derived**

false

**Description**

The sensor hardware item shall complete a 12-bit temperature conversion within 750 ms.

**Rationale**

PSSA 08-safety/02-pssa.md. Re-homed from run 2 MRTM-PRB-001. The sensing share of the 5 s early-alarm budget (ADR-0030). Figure from the part class, synthetic (A-40).

**Verification**

Inspection of the part data; SP-10 bus capture.

**Safety**

DAL A (catastrophic failure condition), assigned to `sensor-hw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-SYS-024](#MRTM-SYS-024), [MRTM-SYS-001](#MRTM-SYS-001)

### {#MRTM-HWR-002}MRTM-HWR-002 — Probe accuracy

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

A

**derived**

false

**Description**

The sensor hardware item shall read the air temperature with an accuracy of ±0.5 °C from -10 °C to 50 °C.

**Rationale**

PSSA 08-safety/02-pssa.md. Re-homed from run 2 MRTM-PRB-002. The accuracy is all probe; the firmware only converts units (A-40).

**Verification**

Test: SP-10 at 0, 2, 5, 8, 15 °C against a reference thermometer.

**Safety**

DAL A (catastrophic failure condition), assigned to `sensor-hw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-PRF-001](#MRTM-PRF-001), [MRTM-ENV-004](#MRTM-ENV-004)

### {#MRTM-HWR-003}MRTM-HWR-003 — Probe scratchpad check

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

A

**derived**

false

**Description**

The sensor hardware item shall send a CRC-8 value with every scratchpad read.

**Rationale**

PSSA 08-safety/02-pssa.md. Re-homed from run 2 MRTM-PRB-003. The CRC-8 lets the alarm software item tell a bad read from a real temperature (ADR-0009).

**Verification**

Inspection of a bus capture in SP-10.

**Safety**

DAL A (catastrophic failure condition), assigned to `sensor-hw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-SYS-012](#MRTM-SYS-012), [MRTM-SAF-003](#MRTM-SAF-003)

### {#MRTM-HWR-004}MRTM-HWR-004 — Buzzer loudness

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

A

**derived**

false

**Description**

The alarm hardware item shall produce a sound pressure level of 65 dB(A) or more at 1 m when either buzzer drive input is active.

**Rationale**

PSSA 08-safety/02-pssa.md. Re-homed from run 2 MRTM-BZR-001. Two drive inputs: the controller and the backup driver.

**Verification**

Test: SP-03 sound level meter at 1 m.

**Safety**

DAL A (catastrophic failure condition), assigned to `alarm-hw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-SAF-001](#MRTM-SAF-001), [MRTM-SYS-003](#MRTM-SYS-003)

### {#MRTM-HWR-005}MRTM-HWR-005 — Red indicator response

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

A

**derived**

false

**Description**

The alarm hardware item shall switch the red indicator within 10 ms of a change of its drive input.

**Rationale**

PSSA 08-safety/02-pssa.md. Re-homed from run 2 MRTM-IND-001.

**Verification**

Test: SP-01 oscilloscope on the drive and the LED.

**Safety**

DAL A (catastrophic failure condition), assigned to `alarm-hw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-SYS-004](#MRTM-SYS-004), [MRTM-SYS-024](#MRTM-SYS-024)

### {#MRTM-HWR-006}MRTM-HWR-006 — Acknowledge contact

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

A

**derived**

false

**Description**

While a clinic staff member presses the acknowledge button, the alarm hardware item shall close the acknowledge contact.

**Rationale**

PSSA 08-safety/02-pssa.md. Re-homed from run 2 MRTM-IND-002.

**Verification**

Test: SP-04 continuity while pressed.

**Safety**

DAL A (catastrophic failure condition), assigned to `alarm-hw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-IFC-002](#MRTM-IFC-002), [MRTM-SYS-006](#MRTM-SYS-006)

### {#MRTM-HWR-007}MRTM-HWR-007 — Backup timer timeout

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

A

**derived**

false

**Description**

The alarm hardware item shall assert the backup timeout 9 s ± 0.9 s after the last watchdog service pulse.

**Rationale**

PSSA 08-safety/02-pssa.md. Re-homed from run 2 MRTM-BKT-001 and MRTM-BKA-001: in this ladder the backup alarm is part of the alarm hardware item, not a node of its own (depth pinned).

**Verification**

Test: SP-05 stop the pulses and time the timeout.

**Safety**

DAL A (catastrophic failure condition), assigned to `alarm-hw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-SAF-009](#MRTM-SAF-009), [MRTM-SAF-010](#MRTM-SAF-010)

### {#MRTM-HWR-008}MRTM-HWR-008 — Backup driver response

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

A

**derived**

false

**Description**

The alarm hardware item shall drive the buzzer backup input within 100 ms of the backup timeout.

**Rationale**

PSSA 08-safety/02-pssa.md. Re-homed from run 2 MRTM-BKD-001.

**Verification**

Test: SP-05.

**Safety**

DAL A (catastrophic failure condition), assigned to `alarm-hw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-SAF-009](#MRTM-SAF-009)

### {#MRTM-HWR-009}MRTM-HWR-009 — Backup hold-up

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

A

**derived**

false

**Description**

The alarm hardware item shall supply the backup timer and the backup driver for 60 s or more after all power is lost.

**Rationale**

PSSA 08-safety/02-pssa.md. Re-homed from run 2 MRTM-BKH-001 and MRTM-BKA-002.

**Verification**

Test: SP-07 remove mains and battery, time the sound.

**Safety**

DAL A (catastrophic failure condition), assigned to `alarm-hw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-SAF-013](#MRTM-SAF-013)

### {#MRTM-HWR-010}MRTM-HWR-010 — Controller watchdog reset

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

A

**derived**

false

**Description**

The controller hardware item shall reset the processor within 1 s of its hardware watchdog expiry.

**Rationale**

PSSA 08-safety/02-pssa.md. Re-homed from run 2 MRTM-MCU-001.

**Verification**

Test: SP-06.

**Safety**

DAL A (catastrophic failure condition), assigned to `controller-hw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-SAF-004](#MRTM-SAF-004)

### {#MRTM-HWR-011}MRTM-HWR-011 — Clock drift

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

A

**derived**

false

**Description**

The controller hardware item shall keep UTC time with a drift of 2 s per day or less from 10 °C to 35 °C.

**Rationale**

PSSA 08-safety/02-pssa.md. Re-homed from run 2 MRTM-RTC-001. The real-time clock sits on the controller board in this ladder.

**Verification**

Test: SP-12 24 h against a reference.

**Safety**

DAL A (catastrophic failure condition), assigned to `controller-hw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-SYS-020](#MRTM-SYS-020), [MRTM-SAF-022](#MRTM-SAF-022)

### {#MRTM-HWR-012}MRTM-HWR-012 — Switch to battery

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

B

**derived**

false

**Description**

The power hardware item shall switch the load from mains to battery within 100 ms of mains loss.

**Rationale**

PSSA 08-safety/02-pssa.md. Re-homed from run 2 MRTM-PPT-001 and MRTM-PWR-001.

**Verification**

Test: SP-08.

**Safety**

DAL B (hazardous failure condition), assigned to `power-hw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-SYS-016](#MRTM-SYS-016)

### {#MRTM-HWR-013}MRTM-HWR-013 — Battery capacity

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

B

**derived**

false

**Description**

The power hardware item shall store 2000 mAh or more at 3.7 V nominal.

**Rationale**

PSSA 08-safety/02-pssa.md. Re-homed from run 2 MRTM-BAT-001 and MRTM-PWR-002.

**Verification**

Inspection of the cell data; SP-09 4 h run.

**Safety**

DAL B (hazardous failure condition), assigned to `power-hw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-ENV-001](#MRTM-ENV-001)

### {#MRTM-HWR-014}MRTM-HWR-014 — Digit height

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

B

**derived**

false

**Description**

The display hardware item shall draw the temperature digits at a character height of 5 mm or more.

**Rationale**

PSSA 08-safety/02-pssa.md. Re-homed from run 2 MRTM-OLD-001 and MRTM-DSP-002.

**Verification**

Inspection with a ruler (SP-11).

**Safety**

DAL B (hazardous failure condition), assigned to `display-hw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-IFC-004](#MRTM-IFC-004), [MRTM-SYS-011](#MRTM-SYS-011)

## High-level requirement (HLR) (38)

### {#MRTM-HLR-001}MRTM-HLR-001 — Sample period and read

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

A

**derived**

false

**Description**

The alarm software item shall start one probe conversion at a period of 2 s and read the scratchpad 750 ms after the start.

**Rationale**

DO-178C §5.1 HLR. Re-homed from run 2 MRTM-SNI-001 (ADR-0019, ADR-0031).

**Verification**

Test: unit tests of sensor_sampler.

**Safety**

DAL A (catastrophic failure condition), assigned to `alarm-sw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-SYS-001](#MRTM-SYS-001), [MRTM-SYS-024](#MRTM-SYS-024)

**Downlinks:** [MRTM-LLR-001](#MRTM-LLR-001), [MRTM-LLR-002](#MRTM-LLR-002), [MRTM-LLR-003](#MRTM-LLR-003)

### {#MRTM-HLR-002}MRTM-HLR-002 — Invalid sample

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

A

**derived**

false

**Description**

The alarm software item shall mark a sample invalid when its CRC-8 check fails or its value is outside -30 °C to 50 °C.

**Rationale**

DO-178C §5.1 HLR. Re-homed from run 2 MRTM-SNI-002. An invalid sample never counts toward an excursion or its end (A-29).

**Verification**

Test: unit tests of sensor_sampler.

**Safety**

DAL A (catastrophic failure condition), assigned to `alarm-sw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-SYS-012](#MRTM-SYS-012), [MRTM-SAF-003](#MRTM-SAF-003)

**Downlinks:** [MRTM-LLR-003](#MRTM-LLR-003), [MRTM-LLR-005](#MRTM-LLR-005)

### {#MRTM-HLR-003}MRTM-HLR-003 — Probe fault declaration

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

A

**derived**

false

**Description**

The alarm software item shall declare a probe fault at once for an out-of-range sample and after 30 s without a valid sample.

**Rationale**

DO-178C §5.1 HLR. New in this ladder: run 2 held it only at system level (MRTM-SYS-012).

**Verification**

Test: unit tests of sensor_sampler.

**Safety**

DAL A (catastrophic failure condition), assigned to `alarm-sw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-SYS-012](#MRTM-SYS-012), [MRTM-SAF-002](#MRTM-SAF-002)

**Downlinks:** [MRTM-LLR-004](#MRTM-LLR-004), [MRTM-LLR-006](#MRTM-LLR-006)

### {#MRTM-HLR-004}MRTM-HLR-004 — Early excursion report

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

A

**derived**

false

**Description**

The alarm software item shall report the early excursion at the first valid sample outside the allowed band.

**Rationale**

DO-178C §5.1 HLR. Re-homed from run 2 MRTM-EXI-001 (ADR-0030).

**Verification**

Test: unit tests of limit_evaluator.

**Safety**

DAL A (catastrophic failure condition), assigned to `alarm-sw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-SYS-024](#MRTM-SYS-024)

**Downlinks:** [MRTM-LLR-006](#MRTM-LLR-006), [MRTM-LLR-008](#MRTM-LLR-008)

### {#MRTM-HLR-005}MRTM-HLR-005 — Confirmed excursion report

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

A

**derived**

false

**Description**

The alarm software item shall report the confirmed excursion at the 31st consecutive valid sample outside the allowed band, 60 s after the first of them.

**Rationale**

DO-178C §5.1 HLR. Re-homed from run 2 MRTM-EXI-002 and MRTM-ALM-002 (ADR-0031).

**Verification**

Test: unit tests of limit_evaluator; integration INT-01.

**Safety**

DAL A (catastrophic failure condition), assigned to `alarm-sw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-SYS-002](#MRTM-SYS-002)

**Downlinks:** [MRTM-LLR-006](#MRTM-LLR-006), [MRTM-LLR-007](#MRTM-LLR-007), [MRTM-LLR-008](#MRTM-LLR-008)

### {#MRTM-HLR-006}MRTM-HLR-006 — Excursion end report

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

A

**derived**

false

**Description**

The alarm software item shall report the excursion end, with its peak, at the 31st consecutive valid sample inside the allowed band.

**Rationale**

DO-178C §5.1 HLR. Re-homed from run 2 MRTM-EXI-003 and MRTM-ALM-007.

**Verification**

Test: unit tests of limit_evaluator.

**Safety**

DAL A (catastrophic failure condition), assigned to `alarm-sw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-SYS-018](#MRTM-SYS-018), [MRTM-SYS-009](#MRTM-SYS-009)

**Downlinks:** [MRTM-LLR-006](#MRTM-LLR-006), [MRTM-LLR-008](#MRTM-LLR-008), [MRTM-LLR-009](#MRTM-LLR-009)

### {#MRTM-HLR-007}MRTM-HLR-007 — Early alarm light

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

A

**derived**

false

**Description**

The alarm software item shall flash the red indicator at 1 Hz, without the buzzer, within one 1 s alarm cycle of the early excursion report.

**Rationale**

DO-178C §5.1 HLR. Re-homed from run 2 MRTM-ALI-001 and MRTM-ALM-001 (low priority, IEC 60601-1-8 as the alarm-signal source).

**Verification**

Test: unit tests of alarm_mgr.

**Safety**

DAL A (catastrophic failure condition), assigned to `alarm-sw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-SYS-024](#MRTM-SYS-024), [MRTM-SYS-004](#MRTM-SYS-004)

**Downlinks:** [MRTM-LLR-012](#MRTM-LLR-012), [MRTM-LLR-013](#MRTM-LLR-013)

### {#MRTM-HLR-008}MRTM-HLR-008 — Buzzer on

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

A

**derived**

false

**Description**

The alarm software item shall switch the buzzer drive on, and the red indicator to 2 Hz, within one 1 s alarm cycle of the confirmed excursion report.

**Rationale**

DO-178C §5.1 HLR. Re-homed from run 2 MRTM-ALI-002 and MRTM-ALM-003.

**Verification**

Test: unit tests of alarm_mgr; integration INT-01.

**Safety**

DAL A (catastrophic failure condition), assigned to `alarm-sw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-SYS-003](#MRTM-SYS-003), [MRTM-PRF-002](#MRTM-PRF-002)

**Downlinks:** [MRTM-LLR-011](#MRTM-LLR-011), [MRTM-LLR-012](#MRTM-LLR-012), [MRTM-LLR-013](#MRTM-LLR-013)

### {#MRTM-HLR-009}MRTM-HLR-009 — Buzzer off on acknowledge

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

A

**derived**

false

**Description**

The alarm software item shall switch the buzzer drive off within one 1 s alarm cycle of an acknowledge press stable for 50 ms.

**Rationale**

DO-178C §5.1 HLR. Re-homed from run 2 MRTM-ALI-003 and MRTM-ALM-004.

**Verification**

Test: unit tests of alarm_mgr.

**Safety**

DAL A (catastrophic failure condition), assigned to `alarm-sw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-SYS-006](#MRTM-SYS-006), [MRTM-IFC-002](#MRTM-IFC-002)

**Downlinks:** [MRTM-LLR-011](#MRTM-LLR-011), [MRTM-LLR-012](#MRTM-LLR-012), [MRTM-LLR-014](#MRTM-LLR-014), [MRTM-LLR-015](#MRTM-LLR-015)

### {#MRTM-HLR-010}MRTM-HLR-010 — Alarm heartbeat

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

A

**derived**

false

**Description**

The alarm software item shall advance its heartbeat counter once per 1 s alarm cycle.

**Rationale**

DO-178C §5.1 HLR. Re-homed from run 2 MRTM-ALI-004. The platform software item stops the watchdog pulses when it stops (HLR P1).

**Verification**

Test: unit tests of alarm_mgr.

**Safety**

DAL A (catastrophic failure condition), assigned to `alarm-sw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-SAF-010](#MRTM-SAF-010)

**Downlinks:** [MRTM-LLR-016](#MRTM-LLR-016)

### {#MRTM-HLR-011}MRTM-HLR-011 — Re-sound after silence

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

A

**derived**

false

**Description**

The alarm software item shall switch the buzzer drive on again 15 min after an acknowledge while the excursion is still open.

**Rationale**

DO-178C §5.1 HLR. New in this ladder: run 2 held it at system level only.

**Verification**

Test: unit tests of alarm_mgr.

**Safety**

DAL A (catastrophic failure condition), assigned to `alarm-sw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-SYS-019](#MRTM-SYS-019)

**Downlinks:** [MRTM-LLR-013](#MRTM-LLR-013)

### {#MRTM-HLR-012}MRTM-HLR-012 — Probe fault tone

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

A

**derived**

false

**Description**

While a probe fault is declared, the alarm software item shall drive the buzzer 1 s on and 1 s off.

**Rationale**

DO-178C §5.1 HLR. The fault tone differs from the excursion tone (HAZ-002).

**Verification**

Test: unit tests of alarm_mgr.

**Safety**

DAL A (catastrophic failure condition), assigned to `alarm-sw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-SAF-002](#MRTM-SAF-002), [MRTM-SAF-011](#MRTM-SAF-011)

**Downlinks:** [MRTM-LLR-013](#MRTM-LLR-013)

### {#MRTM-HLR-013}MRTM-HLR-013 — Buzzer fault

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

A

**derived**

false

**Description**

When the buzzer draws no current for 5 consecutive alarm cycles while driven, the alarm software item shall flash the red indicator at 4 Hz and log a buzzer fault.

**Rationale**

DO-178C §5.1 HLR. Diverse signal for a failed buzzer.

**Verification**

Test: unit tests of alarm_mgr.

**Safety**

DAL A (catastrophic failure condition), assigned to `alarm-sw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-SAF-014](#MRTM-SAF-014), [MRTM-SAF-015](#MRTM-SAF-015)

**Downlinks:** [MRTM-LLR-013](#MRTM-LLR-013)

### {#MRTM-HLR-014}MRTM-HLR-014 — Alarm survives restart

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

A

**derived**

false

**Description**

The alarm software item shall sound an unacknowledged excursion alarm again within 2 s of a restart.

**Rationale**

DO-178C §5.1 HLR.

**Verification**

Test: unit tests of alarm_mgr; integration INT-04.

**Safety**

DAL A (catastrophic failure condition), assigned to `alarm-sw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-SAF-006](#MRTM-SAF-006)

**Downlinks:** [MRTM-LLR-010](#MRTM-LLR-010)

### {#MRTM-HLR-015}MRTM-HLR-015 — Stuck button

_Last changed by Masood on 2026-09-27 · `c1d70db73ebde2cce7a3f7e0b0e45d946abd43fe` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**modified**

2026-09-27

**safetyClass**

A

**derived**

false

**Description**

The alarm software item shall ignore an acknowledge press held for 60 s until the button is released.

**Rationale**

DO-178C §5.1 HLR. Gate round 1 split the fail-safe half into A16 (atomicity).

**Verification**

Test: unit tests of alarm_mgr.

**Safety**

DAL A (catastrophic failure condition), assigned to `alarm-sw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-SAF-019](#MRTM-SAF-019)

**Downlinks:** [MRTM-LLR-013](#MRTM-LLR-013), [MRTM-LLR-015](#MRTM-LLR-015)

### {#MRTM-HLR-016}MRTM-HLR-016 — Watchdog tied to the heartbeat

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

A

**derived**

false

**Description**

The platform software item shall stop the watchdog service pulses within 2 s of the alarm heartbeat stopping.

**Rationale**

DO-178C §5.1 HLR. Re-homed from run 2 MRTM-SVI-001 and MRTM-SUP-004.

**Verification**

Test: unit tests of wdt_kicker; integration INT-02.

**Safety**

DAL A (catastrophic failure condition), assigned to `platform-sw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-SAF-010](#MRTM-SAF-010), [MRTM-SAF-009](#MRTM-SAF-009)

**Downlinks:** [MRTM-LLR-018](#MRTM-LLR-018), [MRTM-LLR-026](#MRTM-LLR-026)

### {#MRTM-HLR-017}MRTM-HLR-017 — Task watchdog restart

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

A

**derived**

false

**Description**

The platform software item shall restart the monitoring software within 2 s of a task watchdog timeout.

**Rationale**

DO-178C §5.1 HLR. Re-homed from run 2 MRTM-SUP-001.

**Verification**

Test: unit tests of wdt_kicker; SP-06.

**Safety**

DAL A (catastrophic failure condition), assigned to `platform-sw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-SAF-004](#MRTM-SAF-004)

**Downlinks:** [MRTM-LLR-017](#MRTM-LLR-017)

### {#MRTM-HLR-018}MRTM-HLR-018 — Power-up tests

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

A

**derived**

false

**Description**

The platform software item shall test the buzzer within 5 s and the backup alarm within 15 s of power-up.

**Rationale**

DO-178C §5.1 HLR. Re-homed from run 2 MRTM-SVI-002 and MRTM-SUP-002.

**Verification**

Test: unit tests of diagnostics.

**Safety**

DAL A (catastrophic failure condition), assigned to `platform-sw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-SAF-007](#MRTM-SAF-007), [MRTM-SAF-023](#MRTM-SAF-023)

**Downlinks:** [MRTM-LLR-019](#MRTM-LLR-019)

### {#MRTM-HLR-019}MRTM-HLR-019 — Band integrity

_Last changed by Masood on 2026-09-27 · `c1d70db73ebde2cce7a3f7e0b0e45d946abd43fe` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**modified**

2026-09-27

**safetyClass**

A

**derived**

false

**Description**

The platform software item shall enter fail-safe, instead of monitoring, when the stored band fails its CRC-32 check.

**Rationale**

DO-178C §5.1 HLR. Re-homed from run 2 MRTM-SVI-003 and MRTM-SUP-003. There is no default band on purpose.

**Verification**

Test: unit tests of config_mgr; integration INT-03.

**Safety**

DAL A (catastrophic failure condition), assigned to `platform-sw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-SAF-017](#MRTM-SAF-017), [MRTM-SYS-017](#MRTM-SYS-017)

**Downlinks:** [MRTM-LLR-020](#MRTM-LLR-020), [MRTM-LLR-021](#MRTM-LLR-021), [MRTM-LLR-022](#MRTM-LLR-022), [MRTM-LLR-025](#MRTM-LLR-025)

### {#MRTM-HLR-020}MRTM-HLR-020 — Mains events

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

A

**derived**

false

**Description**

The platform software item shall post the mains-lost and mains-restored events within 1 s of the mains sense edge.

**Rationale**

DO-178C §5.1 HLR. Re-homed from run 2 MRTM-PWI-001 and MRTM-PWR-003.

**Verification**

Test: unit tests of power_mon; integration INT-05.

**Safety**

DAL A (catastrophic failure condition), assigned to `platform-sw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-SAF-005](#MRTM-SAF-005), [MRTM-SYS-023](#MRTM-SYS-023)

**Downlinks:** [MRTM-LLR-023](#MRTM-LLR-023)

### {#MRTM-HLR-021}MRTM-HLR-021 — Battery low

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

A

**derived**

false

**Description**

The platform software item shall post the battery-low signal after 2 consecutive battery readings below 3.4 V.

**Rationale**

DO-178C §5.1 HLR. Re-homed from run 2 MRTM-PWI-002.

**Verification**

Test: unit tests of power_mon.

**Safety**

DAL A (catastrophic failure condition), assigned to `platform-sw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-SAF-008](#MRTM-SAF-008)

**Downlinks:** [MRTM-LLR-024](#MRTM-LLR-024)

### {#MRTM-HLR-022}MRTM-HLR-022 — Maintenance flags

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

A

**derived**

false

**Description**

The platform software item shall set the calibration-due flag 365 days after the stored calibration date and the log-capacity flag at 9000 records.

**Rationale**

DO-178C §5.1 HLR. The display software item shows the flags (HLR D4).

**Verification**

Test: unit tests of display_mgr through the view.

**Safety**

DAL A (catastrophic failure condition), assigned to `platform-sw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-SAF-012](#MRTM-SAF-012), [MRTM-SYS-022](#MRTM-SYS-022), [MRTM-MNT-002](#MRTM-MNT-002)

**Downlinks:** [MRTM-LLR-026](#MRTM-LLR-026)

### {#MRTM-HLR-023}MRTM-HLR-023 — Power-up order

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

A

**derived**

false

**Description**

At power-up the platform software item shall restore the alarm state, read the clock and the band, and start monitoring only after the power-up tests pass.

**Rationale**

DO-178C §5.1 HLR.

**Verification**

Test: integration INT-03, INT-04.

**Safety**

DAL A (catastrophic failure condition), assigned to `platform-sw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-SAF-016](#MRTM-SAF-016), [MRTM-MNT-003](#MRTM-MNT-003), [MRTM-SAF-006](#MRTM-SAF-006)

**Downlinks:** [MRTM-LLR-025](#MRTM-LLR-025)

### {#MRTM-HLR-024}MRTM-HLR-024 — Task priorities keep the alarm first

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

A

**derived**

true

**Description**

The platform software item shall run the alarm, supervisor and sensor tasks on core 1 at priorities 18 to 22, above every task of the display, record and export software items.

**Rationale**

DO-178C §5.1.2 DERIVED requirement: no parent. It comes from the PSSA's partitioning decision (08-safety/02-pssa.md §4): lower-DAL items share the processor, so their tasks must not delay the DAL A items. Fed back to the safety assessment there.

**Verification**

Inspection of the task table in MrtmSoftware and mrtm_config.h; analysis of worst-case response.

**Safety**

DAL A (catastrophic failure condition), assigned to `platform-sw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** none

### {#MRTM-HLR-025}MRTM-HLR-025 — Warning and fault messages

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

B

**derived**

false

**Description**

The display software item shall show the excursion warning for the whole excursion and the probe fault message within 1 s of the state change.

**Rationale**

DO-178C §5.1 HLR. Re-homed from run 2 MRTM-DSI-001 and MRTM-DSP-001, MRTM-DSP-003.

**Verification**

Test: unit tests of display_mgr.

**Safety**

DAL B (hazardous failure condition), assigned to `display-sw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-SYS-005](#MRTM-SYS-005), [MRTM-SYS-007](#MRTM-SYS-007), [MRTM-SYS-013](#MRTM-SYS-013)

**Downlinks:** [MRTM-LLR-027](#MRTM-LLR-027), [MRTM-LLR-029](#MRTM-LLR-029), [MRTM-LLR-032](#MRTM-LLR-032)

### {#MRTM-HLR-026}MRTM-HLR-026 — Temperature on screen

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

B

**derived**

false

**Description**

The display software item shall show the temperature at 0.1 °C resolution in digits 32 pixels tall and change it at most once per 10 s.

**Rationale**

DO-178C §5.1 HLR. Re-homed from run 2 MRTM-DSI-002.

**Verification**

Test: unit tests of display_mgr.

**Safety**

DAL B (hazardous failure condition), assigned to `display-sw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-SYS-011](#MRTM-SYS-011), [MRTM-PRF-004](#MRTM-PRF-004)

**Downlinks:** [MRTM-LLR-028](#MRTM-LLR-028), [MRTM-LLR-032](#MRTM-LLR-032), [MRTM-LLR-034](#MRTM-LLR-034)

### {#MRTM-HLR-027}MRTM-HLR-027 — Band at power-up

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

B

**derived**

false

**Description**

The display software item shall show the allowed band and the firmware version for the first 3 s after power-up.

**Rationale**

DO-178C §5.1 HLR.

**Verification**

Test: unit tests of display_mgr.

**Safety**

DAL B (hazardous failure condition), assigned to `display-sw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-SAF-016](#MRTM-SAF-016), [MRTM-MNT-003](#MRTM-MNT-003)

**Downlinks:** [MRTM-LLR-029](#MRTM-LLR-029), [MRTM-LLR-032](#MRTM-LLR-032), [MRTM-LLR-033](#MRTM-LLR-033)

### {#MRTM-HLR-028}MRTM-HLR-028 — Maintenance messages

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

B

**derived**

false

**Description**

The display software item shall show the calibration-due and log-capacity messages when their flags are set, and the battery level in steps of 10 %.

**Rationale**

DO-178C §5.1 HLR. The calibration-due message is the only signal of FC-3, which is why this item is DAL B (PSSA).

**Verification**

Test: unit tests of display_mgr.

**Safety**

DAL B (hazardous failure condition), assigned to `display-sw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-SAF-012](#MRTM-SAF-012), [MRTM-SYS-022](#MRTM-SYS-022), [MRTM-MNT-002](#MRTM-MNT-002)

**Downlinks:** [MRTM-LLR-029](#MRTM-LLR-029), [MRTM-LLR-030](#MRTM-LLR-030)

### {#MRTM-HLR-029}MRTM-HLR-029 — Display bus recovery

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

B

**derived**

false

**Description**

The display software item shall recover the display bus within 1 s of a 100 ms bus timeout.

**Rationale**

DO-178C §5.1 HLR.

**Verification**

Test: unit tests of display_mgr.

**Safety**

DAL B (hazardous failure condition), assigned to `display-sw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-SAF-021](#MRTM-SAF-021)

**Downlinks:** [MRTM-LLR-031](#MRTM-LLR-031)

### {#MRTM-HLR-030}MRTM-HLR-030 — Two copies within 1 s

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The record software item shall write each event record with its CRC-32 to 2 separate flash sectors within 1 s of the event.

**Rationale**

DO-178C §5.1 HLR. Re-homed from run 2 MRTM-LGI-001 and MRTM-LOG-001.

**Verification**

Test: unit tests of event_log and history_ring.

**Safety**

DAL C (major failure condition), assigned to `record-sw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-SAF-018](#MRTM-SAF-018), [MRTM-SYS-008](#MRTM-SYS-008), [MRTM-SYS-010](#MRTM-SYS-010)

**Downlinks:** [MRTM-LLR-035](#MRTM-LLR-035), [MRTM-LLR-036](#MRTM-LLR-036), [MRTM-LLR-038](#MRTM-LLR-038)

### {#MRTM-HLR-031}MRTM-HLR-031 — Newest 10000 kept

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

When the event log holds 10000 records, the record software item shall write each new record over the oldest one.

**Rationale**

DO-178C §5.1 HLR. Re-homed from run 2 MRTM-LGI-002 and MRTM-LOG-002.

**Verification**

Test: unit tests of history_ring.

**Safety**

DAL C (major failure condition), assigned to `record-sw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-SYS-015](#MRTM-SYS-015)

**Downlinks:** [MRTM-LLR-037](#MRTM-LLR-037), [MRTM-LLR-038](#MRTM-LLR-038)

### {#MRTM-HLR-032}MRTM-HLR-032 — Time stamps

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The record software item shall time-stamp each record with UTC at 1 s resolution and log a clock fault when the clock oscillator has stopped.

**Rationale**

DO-178C §5.1 HLR. Re-homed from run 2 MRTM-LOG-004.

**Verification**

Test: unit tests of event_log and rtc_clock.

**Safety**

DAL C (major failure condition), assigned to `record-sw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-SYS-020](#MRTM-SYS-020), [MRTM-SAF-022](#MRTM-SAF-022), [MRTM-SYS-023](#MRTM-SYS-023)

**Downlinks:** [MRTM-LLR-035](#MRTM-LLR-035), [MRTM-LLR-040](#MRTM-LLR-040), [MRTM-LLR-041](#MRTM-LLR-041), [MRTM-LLR-042](#MRTM-LLR-042)

### {#MRTM-HLR-033}MRTM-HLR-033 — Corrupt record

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The record software item shall read a record from whichever copy passes its CRC-32 check and log a corrupt-record event when neither does.

**Rationale**

DO-178C §5.1 HLR.

**Verification**

Test: unit tests of history_ring.

**Safety**

DAL C (major failure condition), assigned to `record-sw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-SYS-021](#MRTM-SYS-021)

**Downlinks:** [MRTM-LLR-039](#MRTM-LLR-039)

### {#MRTM-HLR-034}MRTM-HLR-034 — Capacity warning record

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The record software item shall log one capacity-warning event when the event log reaches 9000 records.

**Rationale**

DO-178C §5.1 HLR.

**Verification**

Test: unit tests of history_ring.

**Safety**

DAL C (major failure condition), assigned to `record-sw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-SYS-022](#MRTM-SYS-022)

**Downlinks:** [MRTM-LLR-038](#MRTM-LLR-038)

### {#MRTM-HLR-035}MRTM-HLR-035 — Read-only volume

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

D

**derived**

false

**Description**

The export software item shall present the event log as a read-only mass-storage volume within 30 s of connection.

**Rationale**

DO-178C §5.1 HLR. Re-homed from run 2 MRTM-USI-001 and MRTM-LOG-003.

**Verification**

Test: unit tests of usb_export.

**Safety**

DAL D (minor failure condition), assigned to `export-sw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-SYS-014](#MRTM-SYS-014), [MRTM-IFC-003](#MRTM-IFC-003), [MRTM-PRF-003](#MRTM-PRF-003)

**Downlinks:** [MRTM-LLR-043](#MRTM-LLR-043), [MRTM-LLR-044](#MRTM-LLR-044)

### {#MRTM-HLR-036}MRTM-HLR-036 — Host writes refused

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

D

**derived**

false

**Description**

When the USB host sends a write request, the export software item shall refuse the write.

**Rationale**

DO-178C §5.1 HLR. Re-homed from run 2 MRTM-USI-002.

**Verification**

Test: unit tests of usb_export.

**Safety**

DAL D (minor failure condition), assigned to `export-sw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-SYS-014](#MRTM-SYS-014)

**Downlinks:** [MRTM-LLR-045](#MRTM-LLR-045)

### {#MRTM-HLR-037}MRTM-HLR-037 — Read the log only through the accessor

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

D

**derived**

true

**Description**

The export software item shall read the event log only through the record software item's read accessor.

**Rationale**

DO-178C §5.1.2 DERIVED requirement: no parent. It comes from the PSSA's partitioning decision (08-safety/02-pssa.md §4): a DAL D item must not write DAL C data. Fed back to the safety assessment there.

**Verification**

Inspection of usb_export.c includes and calls.

**Safety**

DAL D (minor failure condition), assigned to `export-sw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** none

**Downlinks:** [MRTM-LLR-043](#MRTM-LLR-043)

### {#MRTM-HLR-038}MRTM-HLR-038 — Buzzer in fail-safe

_Last changed by Masood on 2026-09-27 · `c1d70db73ebde2cce7a3f7e0b0e45d946abd43fe` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

A

**derived**

false

**Description**

While a fail-safe or battery-low signal is set, the alarm software item shall drive the buzzer.

**Rationale**

DO-178C §5.1 HLR. Split from A15 in gate round 1 (atomicity).

**Verification**

Test: unit tests of alarm_mgr.

**Safety**

DAL A (catastrophic failure condition), assigned to `alarm-sw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-SAF-008](#MRTM-SAF-008), [MRTM-SAF-017](#MRTM-SAF-017)

**Downlinks:** [MRTM-LLR-013](#MRTM-LLR-013)

## Low-level requirement (LLR) (45)

### {#MRTM-LLR-001}MRTM-LLR-001 — Bus start

_Last changed by Masood on 2026-09-27 · `c1d70db73ebde2cce7a3f7e0b0e45d946abd43fe` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**modified**

2026-09-27

**safetyClass**

A

**derived**

false

**Description**

sensor_sampler_init shall return MRTM_ERR_BUS when the 1-Wire bus reset or the first conversion start fails.

**Rationale**

DO-178C §5.2 LLR: enough detail to code from. Code: sensor_sampler.c line 16.

**Verification**

Test: the unit tests of this function.

**Safety**

DAL A (catastrophic failure condition), assigned to `alarm-sw-design` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-HLR-001](#MRTM-HLR-001)

### {#MRTM-LLR-002}MRTM-LLR-002 — Unit conversion

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

A

**derived**

false

**Description**

sensor_sampler_to_tenths shall convert the raw 12-bit value in 1/16 °C to tenths of a degree, rounding half away from zero, and add the calibrated offset.

**Rationale**

DO-178C §5.2 LLR: enough detail to code from. Code: sensor_sampler.c line 29.

**Verification**

Test: the unit tests of this function.

**Safety**

DAL A (catastrophic failure condition), assigned to `alarm-sw-design` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-HLR-001](#MRTM-HLR-001)

### {#MRTM-LLR-003}MRTM-LLR-003 — Sample read

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

A

**derived**

false

**Description**

sensor_sampler_read shall read the scratchpad, start the next conversion, and return the sample invalid when the CRC-8 differs or the value is outside -300 to 500 tenths.

**Rationale**

DO-178C §5.2 LLR: enough detail to code from. Code: sensor_sampler.c line 37.

**Verification**

Test: the unit tests of this function.

**Safety**

DAL A (catastrophic failure condition), assigned to `alarm-sw-design` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-HLR-001](#MRTM-HLR-001), [MRTM-HLR-002](#MRTM-HLR-002)

### {#MRTM-LLR-004}MRTM-LLR-004 — Probe fault flag

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

A

**derived**

false

**Description**

sensor_sampler_probe_fault shall return true when the last sample was out of range or when 30 s have passed since the last valid sample.

**Rationale**

DO-178C §5.2 LLR: enough detail to code from. Code: sensor_sampler.c line 62.

**Verification**

Test: the unit tests of this function.

**Safety**

DAL A (catastrophic failure condition), assigned to `alarm-sw-design` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-HLR-003](#MRTM-HLR-003)

### {#MRTM-LLR-005}MRTM-LLR-005 — CRC-8

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

A

**derived**

false

**Description**

mrtm_crc8_maxim shall compute the Dallas/Maxim CRC-8 (reflected polynomial 0x8C, initial value 0) over the bytes given.

**Rationale**

DO-178C §5.2 LLR: enough detail to code from. Code: mrtm_crc.c line 5.

**Verification**

Test: the unit tests of this function.

**Safety**

DAL A (catastrophic failure condition), assigned to `alarm-sw-design` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-HLR-002](#MRTM-HLR-002)

### {#MRTM-LLR-006}MRTM-LLR-006 — Sensor step

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

A

**derived**

false

**Description**

In monitoring mode, app_sensor_step shall read one sample, post probe fault or recovered on a change, and post the limit event of that sample to the alarm manager in the same step.

**Rationale**

DO-178C §5.2 LLR: enough detail to code from. Code: mrtm_app.c line 71.

**Verification**

Test: the unit tests of this function.

**Safety**

DAL A (catastrophic failure condition), assigned to `alarm-sw-design` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-HLR-003](#MRTM-HLR-003), [MRTM-HLR-004](#MRTM-HLR-004), [MRTM-HLR-005](#MRTM-HLR-005), [MRTM-HLR-006](#MRTM-HLR-006)

### {#MRTM-LLR-007}MRTM-LLR-007 — Band set

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

A

**derived**

false

**Description**

limit_evaluator_init shall set the low and high band limits from the loaded band and the hysteresis to 0.

**Rationale**

DO-178C §5.2 LLR: enough detail to code from. Code: limit_evaluator.c line 12.

**Verification**

Test: the unit tests of this function.

**Safety**

DAL A (catastrophic failure condition), assigned to `alarm-sw-design` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-HLR-005](#MRTM-HLR-005)

### {#MRTM-LLR-008}MRTM-LLR-008 — Consecutive counts

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

A

**derived**

false

**Description**

limit_evaluator_step shall ignore an invalid sample, return EARLY at the first valid out-of-band sample, CONFIRMED at the 31st consecutive one, and ENDED at the 31st consecutive in-band sample of an excursion.

**Rationale**

DO-178C §5.2 LLR: enough detail to code from. Code: limit_evaluator.c line 24.

**Verification**

Test: the unit tests of this function.

**Safety**

DAL A (catastrophic failure condition), assigned to `alarm-sw-design` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-HLR-004](#MRTM-HLR-004), [MRTM-HLR-005](#MRTM-HLR-005), [MRTM-HLR-006](#MRTM-HLR-006)

### {#MRTM-LLR-009}MRTM-LLR-009 — Peak

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

A

**derived**

false

**Description**

limit_evaluator_peak shall return the sample of the excursion farthest outside the band.

**Rationale**

DO-178C §5.2 LLR: enough detail to code from. Code: limit_evaluator.c line 55.

**Verification**

Test: the unit tests of this function.

**Safety**

DAL A (catastrophic failure condition), assigned to `alarm-sw-design` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-HLR-006](#MRTM-HLR-006)

### {#MRTM-LLR-010}MRTM-LLR-010 — State restore

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

A

**derived**

false

**Description**

alarm_mgr_init shall restore state SOUNDING when NVS key 'alarm' holds SOUNDING, and QUIET otherwise.

**Rationale**

DO-178C §5.2 LLR: enough detail to code from. Code: alarm_mgr.c line 30.

**Verification**

Test: the unit tests of this function.

**Safety**

DAL A (catastrophic failure condition), assigned to `alarm-sw-design` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-HLR-014](#MRTM-HLR-014)

### {#MRTM-LLR-011}MRTM-LLR-011 — Signal queue

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

A

**derived**

false

**Description**

alarm_mgr_post shall queue the signal (depth 8, MRTM_ERR_FULL when full) and wake the alarm task at once.

**Rationale**

DO-178C §5.2 LLR: enough detail to code from. Code: alarm_mgr.c line 41.

**Verification**

Test: the unit tests of this function.

**Safety**

DAL A (catastrophic failure condition), assigned to `alarm-sw-design` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-HLR-008](#MRTM-HLR-008), [MRTM-HLR-009](#MRTM-HLR-009)

### {#MRTM-LLR-012}MRTM-LLR-012 — Transition table

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

A

**derived**

false

**Description**

take shall apply one AlarmStates transition per signal: early from quiet, early cleared, confirm from quiet or early, ack from sounding, end from sounding or silenced, probe fault from any monitoring state, probe recovered.

**Rationale**

DO-178C §5.2 LLR: enough detail to code from. Code: alarm_mgr.c line 77.

**Verification**

Test: the unit tests of this function.

**Safety**

DAL A (catastrophic failure condition), assigned to `alarm-sw-design` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-HLR-007](#MRTM-HLR-007), [MRTM-HLR-008](#MRTM-HLR-008), [MRTM-HLR-009](#MRTM-HLR-009)

### {#MRTM-LLR-013}MRTM-LLR-013 — Outputs per state

_Last changed by Masood on 2026-09-27 · `c1d70db73ebde2cce7a3f7e0b0e45d946abd43fe` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

A

**derived**

false

**Description**

alarm_mgr_step shall drive the outputs of the current state (early: red 1 Hz; sounding: buzzer and red 2 Hz; probe fault: buzzer 1 s on 1 s off; buzzer fault: red 4 Hz), re-sound 15 min after an ack, and declare a buzzer fault after 5 steps with no buzzer current.

**Rationale**

DO-178C §5.2 LLR: enough detail to code from. Code: alarm_mgr.c line 113.

**Verification**

Test: the unit tests of this function.

**Safety**

DAL A (catastrophic failure condition), assigned to `alarm-sw-design` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-HLR-007](#MRTM-HLR-007), [MRTM-HLR-008](#MRTM-HLR-008), [MRTM-HLR-011](#MRTM-HLR-011), [MRTM-HLR-012](#MRTM-HLR-012), [MRTM-HLR-013](#MRTM-HLR-013), [MRTM-HLR-015](#MRTM-HLR-015), [MRTM-HLR-038](#MRTM-HLR-038)

### {#MRTM-LLR-014}MRTM-LLR-014 — Debounce timer

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

A

**derived**

false

**Description**

alarm_mgr_button_isr shall re-arm a 50 ms one-shot timer on every button edge.

**Rationale**

DO-178C §5.2 LLR: enough detail to code from. Code: alarm_mgr.c line 155.

**Verification**

Test: the unit tests of this function.

**Safety**

DAL A (catastrophic failure condition), assigned to `alarm-sw-design` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-HLR-009](#MRTM-HLR-009)

### {#MRTM-LLR-015}MRTM-LLR-015 — Accepted press

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

A

**derived**

false

**Description**

alarm_mgr_button_debounced shall post ACK once for a press still stable after 50 ms, and nothing while the button is declared stuck.

**Rationale**

DO-178C §5.2 LLR: enough detail to code from. Code: alarm_mgr.c line 163.

**Verification**

Test: the unit tests of this function.

**Safety**

DAL A (catastrophic failure condition), assigned to `alarm-sw-design` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-HLR-009](#MRTM-HLR-009), [MRTM-HLR-015](#MRTM-HLR-015)

### {#MRTM-LLR-016}MRTM-LLR-016 — Heartbeat read

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

A

**derived**

false

**Description**

alarm_mgr_heartbeat shall return the step counter that alarm_mgr_step advances by one at the end of every step.

**Rationale**

DO-178C §5.2 LLR: enough detail to code from. Code: alarm_mgr.c line 174.

**Verification**

Test: the unit tests of this function.

**Safety**

DAL A (catastrophic failure condition), assigned to `alarm-sw-design` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-HLR-010](#MRTM-HLR-010)

### {#MRTM-LLR-017}MRTM-LLR-017 — Task watchdog

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

A

**derived**

false

**Description**

wdt_kicker_init shall arm the task watchdog at 5 s with a panic restart.

**Rationale**

DO-178C §5.2 LLR: enough detail to code from. Code: wdt_kicker.c line 10.

**Verification**

Test: the unit tests of this function.

**Safety**

DAL A (catastrophic failure condition), assigned to `platform-sw-design` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-HLR-017](#MRTM-HLR-017)

### {#MRTM-LLR-018}MRTM-LLR-018 — Pulse gate

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

A

**derived**

false

**Description**

wdt_kicker_step shall pulse the external watchdog only while the heartbeat changed within the last 2000 ms and the pulses are not held.

**Rationale**

DO-178C §5.2 LLR: enough detail to code from. Code: wdt_kicker.c line 18.

**Verification**

Test: the unit tests of this function.

**Safety**

DAL A (catastrophic failure condition), assigned to `platform-sw-design` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-HLR-016](#MRTM-HLR-016)

### {#MRTM-LLR-019}MRTM-LLR-019 — Self-tests

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

A

**derived**

false

**Description**

diagnostics_power_up shall drive the buzzer 200 ms and check its current (unless an alarm is sounding), hold the watchdog pulses up to 12 s until the backup alarm is sensed, and log the result.

**Rationale**

DO-178C §5.2 LLR: enough detail to code from. Code: diagnostics.c line 13.

**Verification**

Test: the unit tests of this function.

**Safety**

DAL A (catastrophic failure condition), assigned to `platform-sw-design` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-HLR-018](#MRTM-HLR-018)

### {#MRTM-LLR-020}MRTM-LLR-020 — Band load

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

A

**derived**

false

**Description**

config_mgr_load shall return the stored band only when its CRC-32 matches and 2.0 °C ≤ low < high ≤ 8.0 °C, and an error otherwise.

**Rationale**

DO-178C §5.2 LLR: enough detail to code from. Code: config_mgr.c line 19.

**Verification**

Test: the unit tests of this function.

**Safety**

DAL A (catastrophic failure condition), assigned to `platform-sw-design` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-HLR-019](#MRTM-HLR-019)

### {#MRTM-LLR-021}MRTM-LLR-021 — Band store

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

A

**derived**

false

**Description**

config_mgr_store shall refuse a band outside the limits, store a valid band with a fresh CRC-32 and log the change.

**Rationale**

DO-178C §5.2 LLR: enough detail to code from. Code: config_mgr.c line 31.

**Verification**

Test: the unit tests of this function.

**Safety**

DAL A (catastrophic failure condition), assigned to `platform-sw-design` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-HLR-019](#MRTM-HLR-019)

### {#MRTM-LLR-022}MRTM-LLR-022 — CRC-32

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

A

**derived**

false

**Description**

mrtm_crc32 shall compute the IEEE CRC-32 (reflected polynomial 0xEDB88320, initial and final XOR 0xFFFFFFFF).

**Rationale**

DO-178C §5.2 LLR: enough detail to code from. Code: mrtm_crc.c line 16.

**Verification**

Test: the unit tests of this function.

**Safety**

DAL A (catastrophic failure condition), assigned to `platform-sw-design` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-HLR-019](#MRTM-HLR-019)

### {#MRTM-LLR-023}MRTM-LLR-023 — Mains edge

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

A

**derived**

false

**Description**

power_mon_isr shall post a power-loss or power-restore event on each change of the mains sense line.

**Rationale**

DO-178C §5.2 LLR: enough detail to code from. Code: power_mon.c line 21.

**Verification**

Test: the unit tests of this function.

**Safety**

DAL A (catastrophic failure condition), assigned to `platform-sw-design` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-HLR-020](#MRTM-HLR-020)

### {#MRTM-LLR-024}MRTM-LLR-024 — Battery low latch

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

A

**derived**

false

**Description**

power_mon_step shall post the battery-low signal once after 2 consecutive readings below 3400 mV.

**Rationale**

DO-178C §5.2 LLR: enough detail to code from. Code: power_mon.c line 31.

**Verification**

Test: the unit tests of this function.

**Safety**

DAL A (catastrophic failure condition), assigned to `platform-sw-design` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-HLR-021](#MRTM-HLR-021)

### {#MRTM-LLR-025}MRTM-LLR-025 — Power-up sequence

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

A

**derived**

false

**Description**

app_power_up shall restore the alarm, read the clock and the band, enter fail-safe with the buzzer on when the band load fails, and enter monitoring only when the power-up tests pass.

**Rationale**

DO-178C §5.2 LLR: enough detail to code from. Code: mrtm_app.c line 36.

**Verification**

Test: the unit tests of this function.

**Safety**

DAL A (catastrophic failure condition), assigned to `platform-sw-design` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-HLR-023](#MRTM-HLR-023), [MRTM-HLR-019](#MRTM-HLR-019)

### {#MRTM-LLR-026}MRTM-LLR-026 — Supervisor step

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

A

**derived**

false

**Description**

app_supervisor_step shall refresh the clock, gate the watchdog pulse on the alarm heartbeat, and set the calibration-due and log-capacity flags.

**Rationale**

DO-178C §5.2 LLR: enough detail to code from. Code: mrtm_app.c line 119.

**Verification**

Test: the unit tests of this function.

**Safety**

DAL A (catastrophic failure condition), assigned to `platform-sw-design` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-HLR-016](#MRTM-HLR-016), [MRTM-HLR-022](#MRTM-HLR-022)

### {#MRTM-LLR-027}MRTM-LLR-027 — Display step

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

B

**derived**

false

**Description**

app_display_step shall copy the alarm state into the view and redraw the frame.

**Rationale**

DO-178C §5.2 LLR: enough detail to code from. Code: mrtm_app.c line 138.

**Verification**

Test: the unit tests of this function.

**Safety**

DAL B (hazardous failure condition), assigned to `display-sw-design` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-HLR-025](#MRTM-HLR-025)

### {#MRTM-LLR-028}MRTM-LLR-028 — Digits

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

B

**derived**

false

**Description**

The temperature widget shall draw three 7-segment digits 32 pixels tall with a decimal point, and '---' for an invalid sample.

**Rationale**

DO-178C §5.2 LLR: enough detail to code from. Code: display_mgr.cpp line 65.

**Verification**

Test: the unit tests of this function.

**Safety**

DAL B (hazardous failure condition), assigned to `display-sw-design` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-HLR-026](#MRTM-HLR-026)

### {#MRTM-LLR-029}MRTM-LLR-029 — Banner

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

B

**derived**

false

**Description**

The banner widget shall draw the most urgent message as an inverted bar 16 pixels high.

**Rationale**

DO-178C §5.2 LLR: enough detail to code from. Code: display_mgr.cpp line 99.

**Verification**

Test: the unit tests of this function.

**Safety**

DAL B (hazardous failure condition), assigned to `display-sw-design` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-HLR-025](#MRTM-HLR-025), [MRTM-HLR-027](#MRTM-HLR-027), [MRTM-HLR-028](#MRTM-HLR-028)

### {#MRTM-LLR-030}MRTM-LLR-030 — Battery icon

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

B

**derived**

false

**Description**

The battery widget shall show the level in steps of 10 %.

**Rationale**

DO-178C §5.2 LLR: enough detail to code from. Code: display_mgr.cpp line 120.

**Verification**

Test: the unit tests of this function.

**Safety**

DAL B (hazardous failure condition), assigned to `display-sw-design` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-HLR-028](#MRTM-HLR-028)

### {#MRTM-LLR-031}MRTM-LLR-031 — Bus recovery

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

B

**derived**

false

**Description**

After a 100 ms bus timeout the display driver shall send 9 clock pulses and re-initialise the panel.

**Rationale**

DO-178C §5.2 LLR: enough detail to code from. Code: display_mgr.cpp line 157.

**Verification**

Test: the unit tests of this function.

**Safety**

DAL B (hazardous failure condition), assigned to `display-sw-design` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-HLR-029](#MRTM-HLR-029)

### {#MRTM-LLR-032}MRTM-LLR-032 — Frame render

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

B

**derived**

false

**Description**

renderFrame shall refresh the temperature at most once per 10 s and choose the banner most urgent first.

**Rationale**

DO-178C §5.2 LLR: enough detail to code from. Code: display_mgr.cpp line 169.

**Verification**

Test: the unit tests of this function.

**Safety**

DAL B (hazardous failure condition), assigned to `display-sw-design` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-HLR-026](#MRTM-HLR-026), [MRTM-HLR-025](#MRTM-HLR-025), [MRTM-HLR-027](#MRTM-HLR-027)

### {#MRTM-LLR-033}MRTM-LLR-033 — Start screen

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

B

**derived**

false

**Description**

display_mgr_init shall start the screen with the band and version shown for 3 s.

**Rationale**

DO-178C §5.2 LLR: enough detail to code from. Code: display_mgr.cpp line 218.

**Verification**

Test: the unit tests of this function.

**Safety**

DAL B (hazardous failure condition), assigned to `display-sw-design` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-HLR-027](#MRTM-HLR-027)

### {#MRTM-LLR-034}MRTM-LLR-034 — Tick

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

B

**derived**

false

**Description**

display_mgr_tick shall render one frame at the current time.

**Rationale**

DO-178C §5.2 LLR: enough detail to code from. Code: display_mgr.cpp line 230.

**Verification**

Test: the unit tests of this function.

**Safety**

DAL B (hazardous failure condition), assigned to `display-sw-design` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-HLR-026](#MRTM-HLR-026)

### {#MRTM-LLR-035}MRTM-LLR-035 — Post

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

event_log_post shall stamp the record with the current UTC second, kind and temperatures, and queue it (depth 32, MRTM_ERR_FULL when full).

**Rationale**

DO-178C §5.2 LLR: enough detail to code from. Code: event_log.c line 22.

**Verification**

Test: the unit tests of this function.

**Safety**

DAL C (major failure condition), assigned to `record-sw-design` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-HLR-030](#MRTM-HLR-030), [MRTM-HLR-032](#MRTM-HLR-032)

### {#MRTM-LLR-036}MRTM-LLR-036 — Store

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

event_log_step shall number, checksum and append every queued record, retry a failed append once, and log a flash failure without looping.

**Rationale**

DO-178C §5.2 LLR: enough detail to code from. Code: event_log.c line 45.

**Verification**

Test: the unit tests of this function.

**Safety**

DAL C (major failure condition), assigned to `record-sw-design` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-HLR-030](#MRTM-HLR-030)

### {#MRTM-LLR-037}MRTM-LLR-037 — Find the head

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

history_ring_init shall find the newest valid record in either copy and set the count from it.

**Rationale**

DO-178C §5.2 LLR: enough detail to code from. Code: history_ring.c line 23.

**Verification**

Test: the unit tests of this function.

**Safety**

DAL C (major failure condition), assigned to `record-sw-design` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-HLR-031](#MRTM-HLR-031)

### {#MRTM-LLR-038}MRTM-LLR-038 — Append

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

history_ring_append shall write copy A then copy B, erasing a sector at its first slot, and log the capacity warning once at 9000 records.

**Rationale**

DO-178C §5.2 LLR: enough detail to code from. Code: history_ring.c line 47.

**Verification**

Test: the unit tests of this function.

**Safety**

DAL C (major failure condition), assigned to `record-sw-design` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-HLR-030](#MRTM-HLR-030), [MRTM-HLR-034](#MRTM-HLR-034), [MRTM-HLR-031](#MRTM-HLR-031)

### {#MRTM-LLR-039}MRTM-LLR-039 — Read

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

history_ring_read shall return the first copy whose sequence and CRC-32 match, and log a corrupt record when none does.

**Rationale**

DO-178C §5.2 LLR: enough detail to code from. Code: history_ring.c line 66.

**Verification**

Test: the unit tests of this function.

**Safety**

DAL C (major failure condition), assigned to `record-sw-design` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-HLR-033](#MRTM-HLR-033)

### {#MRTM-LLR-040}MRTM-LLR-040 — Clock start

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

rtc_clock_init shall read the clock and log a clock fault when the oscillator-stop flag is set.

**Rationale**

DO-178C §5.2 LLR: enough detail to code from. Code: rtc_clock.c line 10.

**Verification**

Test: the unit tests of this function.

**Safety**

DAL C (major failure condition), assigned to `record-sw-design` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-HLR-032](#MRTM-HLR-032)

### {#MRTM-LLR-041}MRTM-LLR-041 — Clock read

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

rtc_clock_now shall return the last UTC copy read from the clock.

**Rationale**

DO-178C §5.2 LLR: enough detail to code from. Code: rtc_clock.c line 23.

**Verification**

Test: the unit tests of this function.

**Safety**

DAL C (major failure condition), assigned to `record-sw-design` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-HLR-032](#MRTM-HLR-032)

### {#MRTM-LLR-042}MRTM-LLR-042 — Clock refresh

_Last changed by Masood on 2026-09-27 · `c1d70db73ebde2cce7a3f7e0b0e45d946abd43fe` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**modified**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

rtc_clock_tick shall keep the last UTC copy when a clock read fails.

**Rationale**

DO-178C §5.2 LLR: enough detail to code from. Code: rtc_clock.c line 29.

**Verification**

Test: the unit tests of this function.

**Safety**

DAL C (major failure condition), assigned to `record-sw-design` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-HLR-032](#MRTM-HLR-032)

### {#MRTM-LLR-043}MRTM-LLR-043 — Volume start

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

D

**derived**

false

**Description**

usb_export_init shall keep the ring's read accessor and start the mass-storage device.

**Rationale**

DO-178C §5.2 LLR: enough detail to code from. Code: usb_export.c line 77.

**Verification**

Test: the unit tests of this function.

**Safety**

DAL D (minor failure condition), assigned to `export-sw-design` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-HLR-035](#MRTM-HLR-035), [MRTM-HLR-037](#MRTM-HLR-037)

### {#MRTM-LLR-044}MRTM-LLR-044 — Sector read

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

D

**derived**

false

**Description**

usb_export_read10 shall render the requested sector of the FAT12 volume from the ring.

**Rationale**

DO-178C §5.2 LLR: enough detail to code from. Code: usb_export.c line 86.

**Verification**

Test: the unit tests of this function.

**Safety**

DAL D (minor failure condition), assigned to `export-sw-design` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-HLR-035](#MRTM-HLR-035)

### {#MRTM-LLR-045}MRTM-LLR-045 — Sector write

_Last changed by Masood on 2026-09-27 · `c3f7986d41e351a87bf9ad9d7469d949295018de` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-04)

**created**

2026-09-27

**safetyClass**

D

**derived**

false

**Description**

usb_export_write10 shall return -1 for every write request.

**Rationale**

DO-178C §5.2 LLR: enough detail to code from. Code: usb_export.c line 96.

**Verification**

Test: the unit tests of this function.

**Safety**

DAL D (minor failure condition), assigned to `export-sw-design` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).

**Uplinks:** [MRTM-HLR-036](#MRTM-HLR-036)
