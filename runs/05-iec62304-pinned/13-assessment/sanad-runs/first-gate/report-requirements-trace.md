# Requirements Export

**Export schema:** `sanad/requirements-export/2`

**Mode:** Engineering — generated on a workstation, outside the certification recipe; this report carries no certification credit.

**Generated from commit:** `f87cc4bcbbd672a5b2c48dffac638885761404be`

**Commit date:** `2026-09-27T11:24:39+05:30`

**Tool version:** `sanad 0.6.3`

**Configuration hash:** `f5af1c4f3c69de2044f041708594ce8b71d6c96567a9f3b22483c45ae408b3e8`

**Input hash:** `76a671232621de80826005588fdd78a00704a4ad53241ebe129109a196d1bb72`

**Inputs:** `146 requirements`, `symbol index`, `architecture inventory`

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
- [Hardware item requirement (13)](#hardware-item-requirement-13)
  - [MRTM-HWI-001 — Probe conversion time](#mrtm-hwi-001--probe-conversion-time)
  - [MRTM-HWI-002 — Probe accuracy](#mrtm-hwi-002--probe-accuracy)
  - [MRTM-HWI-003 — Probe scratchpad check](#mrtm-hwi-003--probe-scratchpad-check)
  - [MRTM-HWI-004 — Buzzer loudness](#mrtm-hwi-004--buzzer-loudness)
  - [MRTM-HWI-005 — Red indicator response](#mrtm-hwi-005--red-indicator-response)
  - [MRTM-HWI-006 — Acknowledge contact](#mrtm-hwi-006--acknowledge-contact)
  - [MRTM-HWI-007 — Backup alarm timeout](#mrtm-hwi-007--backup-alarm-timeout)
  - [MRTM-HWI-008 — Backup alarm hold-up](#mrtm-hwi-008--backup-alarm-hold-up)
  - [MRTM-HWI-009 — Display digit height](#mrtm-hwi-009--display-digit-height)
  - [MRTM-HWI-010 — Clock drift](#mrtm-hwi-010--clock-drift)
  - [MRTM-HWI-011 — Power path switch-over](#mrtm-hwi-011--power-path-switch-over)
  - [MRTM-HWI-012 — Battery endurance](#mrtm-hwi-012--battery-endurance)
  - [MRTM-HWI-013 — Processor watchdog reset](#mrtm-hwi-013--processor-watchdog-reset)
- [Software system requirement (19)](#software-system-requirement-19)
  - [MRTM-SRS-001 — SRS sample period](#mrtm-srs-001--srs-sample-period)
  - [MRTM-SRS-002 — SRS early alarm signal](#mrtm-srs-002--srs-early-alarm-signal)
  - [MRTM-SRS-003 — SRS excursion confirmation](#mrtm-srs-003--srs-excursion-confirmation)
  - [MRTM-SRS-004 — SRS excursion end](#mrtm-srs-004--srs-excursion-end)
  - [MRTM-SRS-005 — SRS invalid sample](#mrtm-srs-005--srs-invalid-sample)
  - [MRTM-SRS-006 — SRS buzzer on](#mrtm-srs-006--srs-buzzer-on)
  - [MRTM-SRS-007 — SRS buzzer off on acknowledge](#mrtm-srs-007--srs-buzzer-off-on-acknowledge)
  - [MRTM-SRS-008 — SRS alarm burst pattern](#mrtm-srs-008--srs-alarm-burst-pattern)
  - [MRTM-SRS-009 — SRS excursion warning](#mrtm-srs-009--srs-excursion-warning)
  - [MRTM-SRS-010 — SRS temperature shown](#mrtm-srs-010--srs-temperature-shown)
  - [MRTM-SRS-011 — SRS status messages](#mrtm-srs-011--srs-status-messages)
  - [MRTM-SRS-012 — SRS record stored twice](#mrtm-srs-012--srs-record-stored-twice)
  - [MRTM-SRS-013 — SRS log capacity](#mrtm-srs-013--srs-log-capacity)
  - [MRTM-SRS-014 — SRS read-only export](#mrtm-srs-014--srs-read-only-export)
  - [MRTM-SRS-015 — SRS time stamp](#mrtm-srs-015--srs-time-stamp)
  - [MRTM-SRS-016 — SRS power events](#mrtm-srs-016--srs-power-events)
  - [MRTM-SRS-017 — SRS watchdog service stop](#mrtm-srs-017--srs-watchdog-service-stop)
  - [MRTM-SRS-018 — SRS power-up tests](#mrtm-srs-018--srs-power-up-tests)
  - [MRTM-SRS-019 — SRS band integrity](#mrtm-srs-019--srs-band-integrity)
- [Sensor item requirement (2)](#sensor-item-requirement-2)
  - [MRTM-SNI-001 — Sensor item conversion start](#mrtm-sni-001--sensor-item-conversion-start)
  - [MRTM-SNI-002 — Sensor item invalid sample](#mrtm-sni-002--sensor-item-invalid-sample)
- [Excursion item requirement (3)](#excursion-item-requirement-3)
  - [MRTM-EXI-001 — Excursion item early report](#mrtm-exi-001--excursion-item-early-report)
  - [MRTM-EXI-002 — Excursion item confirmation](#mrtm-exi-002--excursion-item-confirmation)
  - [MRTM-EXI-003 — Excursion item end](#mrtm-exi-003--excursion-item-end)
- [Alarm item requirement (4)](#alarm-item-requirement-4)
  - [MRTM-ALI-001 — Alarm item early signal](#mrtm-ali-001--alarm-item-early-signal)
  - [MRTM-ALI-002 — Alarm item buzzer on](#mrtm-ali-002--alarm-item-buzzer-on)
  - [MRTM-ALI-003 — Alarm item buzzer off](#mrtm-ali-003--alarm-item-buzzer-off)
  - [MRTM-ALI-004 — Alarm item heartbeat](#mrtm-ali-004--alarm-item-heartbeat)
- [Display item requirement (2)](#display-item-requirement-2)
  - [MRTM-DSI-001 — Display item redraw](#mrtm-dsi-001--display-item-redraw)
  - [MRTM-DSI-002 — Display item temperature](#mrtm-dsi-002--display-item-temperature)
- [Log item requirement (3)](#log-item-requirement-3)
  - [MRTM-LGI-001 — Log item double write](#mrtm-lgi-001--log-item-double-write)
  - [MRTM-LGI-002 — Log item ring](#mrtm-lgi-002--log-item-ring)
  - [MRTM-LGI-003 — Log item time stamp](#mrtm-lgi-003--log-item-time-stamp)
- [Usb item requirement (2)](#usb-item-requirement-2)
  - [MRTM-USI-001 — USB item read-only volume](#mrtm-usi-001--usb-item-read-only-volume)
  - [MRTM-USI-002 — USB item write inhibit](#mrtm-usi-002--usb-item-write-inhibit)
- [Power item requirement (2)](#power-item-requirement-2)
  - [MRTM-PWI-001 — Power item mains events](#mrtm-pwi-001--power-item-mains-events)
  - [MRTM-PWI-002 — Power item battery low](#mrtm-pwi-002--power-item-battery-low)
- [Supervisor item requirement (3)](#supervisor-item-requirement-3)
  - [MRTM-SVI-001 — Supervisor item pulse stop](#mrtm-svi-001--supervisor-item-pulse-stop)
  - [MRTM-SVI-002 — Supervisor item power-up tests](#mrtm-svi-002--supervisor-item-power-up-tests)
  - [MRTM-SVI-003 — Supervisor item band check](#mrtm-svi-003--supervisor-item-band-check)
- [Sensor sampler requirement (2)](#sensor-sampler-requirement-2)
  - [MRTM-SMP-001 — Sampler read contract](#mrtm-smp-001--sampler-read-contract)
  - [MRTM-SMP-002 — Sampler invalid flag](#mrtm-smp-002--sampler-invalid-flag)
- [Limit evaluator requirement (3)](#limit-evaluator-requirement-3)
  - [MRTM-LEV-001 — Evaluator early event](#mrtm-lev-001--evaluator-early-event)
  - [MRTM-LEV-002 — Evaluator confirm event](#mrtm-lev-002--evaluator-confirm-event)
  - [MRTM-LEV-003 — Evaluator end event](#mrtm-lev-003--evaluator-end-event)
- [Alarm mgr requirement (4)](#alarm-mgr-requirement-4)
  - [MRTM-AMG-001 — Alarm manager early output](#mrtm-amg-001--alarm-manager-early-output)
  - [MRTM-AMG-002 — Alarm manager buzzer on](#mrtm-amg-002--alarm-manager-buzzer-on)
  - [MRTM-AMG-003 — Alarm manager acknowledge](#mrtm-amg-003--alarm-manager-acknowledge)
  - [MRTM-AMG-004 — Alarm manager heartbeat](#mrtm-amg-004--alarm-manager-heartbeat)
- [Display mgr requirement (2)](#display-mgr-requirement-2)
  - [MRTM-DMG-001 — Display manager messages](#mrtm-dmg-001--display-manager-messages)
  - [MRTM-DMG-002 — Display manager digits](#mrtm-dmg-002--display-manager-digits)
- [Event log requirement (2)](#event-log-requirement-2)
  - [MRTM-EVL-001 — Event log checksum](#mrtm-evl-001--event-log-checksum)
  - [MRTM-EVL-002 — Event log time stamp](#mrtm-evl-002--event-log-time-stamp)
- [History ring requirement (2)](#history-ring-requirement-2)
  - [MRTM-HRG-001 — History ring two copies](#mrtm-hrg-001--history-ring-two-copies)
  - [MRTM-HRG-002 — History ring wrap](#mrtm-hrg-002--history-ring-wrap)
- [Rtc clock requirement (1)](#rtc-clock-requirement-1)
  - [MRTM-RTK-001 — RTC clock second](#mrtm-rtk-001--rtc-clock-second)
- [Usb export requirement (2)](#usb-export-requirement-2)
  - [MRTM-UXP-001 — USB export read-only file](#mrtm-uxp-001--usb-export-read-only-file)
  - [MRTM-UXP-002 — USB export write refusal](#mrtm-uxp-002--usb-export-write-refusal)
- [Power mon requirement (2)](#power-mon-requirement-2)
  - [MRTM-PMN-001 — Power monitor edge](#mrtm-pmn-001--power-monitor-edge)
  - [MRTM-PMN-002 — Power monitor battery](#mrtm-pmn-002--power-monitor-battery)
- [Wdt kicker requirement (1)](#wdt-kicker-requirement-1)
  - [MRTM-WDK-001 — Watchdog kicker stop](#mrtm-wdk-001--watchdog-kicker-stop)
- [Diagnostics requirement (1)](#diagnostics-requirement-1)
  - [MRTM-DGN-001 — Diagnostics power-up verdict](#mrtm-dgn-001--diagnostics-power-up-verdict)
- [Config mgr requirement (1)](#config-mgr-requirement-1)
  - [MRTM-CFG-001 — Config manager CRC refusal](#mrtm-cfg-001--config-manager-crc-refusal)

## Environmental Requirement (4)

### {#MRTM-ENV-001}MRTM-ENV-001 — Battery endurance

_Last changed by Masood on 2026-09-27 · `3d106e952ac1fca15e37840eb4f2192f2cec0c23` · per git_

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

**Downlinks:** [MRTM-HWI-012](#MRTM-HWI-012)

### {#MRTM-ENV-002}MRTM-ENV-002 — Ambient temperature

_Last changed by Masood on 2026-09-27 · `3d106e952ac1fca15e37840eb4f2192f2cec0c23` · per git_

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

_Last changed by Masood on 2026-09-27 · `3d106e952ac1fca15e37840eb4f2192f2cec0c23` · per git_

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

_Last changed by Masood on 2026-09-27 · `3d106e952ac1fca15e37840eb4f2192f2cec0c23` · per git_

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

**Downlinks:** [MRTM-HWI-002](#MRTM-HWI-002)

## Interface Requirement (4)

### {#MRTM-IFC-001}MRTM-IFC-001 — Probe bus

_Last changed by Masood on 2026-09-27 · `3d106e952ac1fca15e37840eb4f2192f2cec0c23` · per git_

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

_Last changed by Masood on 2026-09-27 · `3d106e952ac1fca15e37840eb4f2192f2cec0c23` · per git_

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

**Downlinks:** [MRTM-HWI-006](#MRTM-HWI-006), [MRTM-SRS-007](#MRTM-SRS-007)

### {#MRTM-IFC-003}MRTM-IFC-003 — USB readout

_Last changed by Masood on 2026-09-27 · `3d106e952ac1fca15e37840eb4f2192f2cec0c23` · per git_

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

**Downlinks:** [MRTM-SRS-014](#MRTM-SRS-014)

### {#MRTM-IFC-004}MRTM-IFC-004 — Display character height

_Last changed by Masood on 2026-09-27 · `3d106e952ac1fca15e37840eb4f2192f2cec0c23` · per git_

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

**Downlinks:** [MRTM-HWI-009](#MRTM-HWI-009)

## Maintainability Requirement (3)

### {#MRTM-MNT-001}MRTM-MNT-001 — Probe replacement

_Last changed by Masood on 2026-09-27 · `3d106e952ac1fca15e37840eb4f2192f2cec0c23` · per git_

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

_Last changed by Masood on 2026-09-27 · `3d106e952ac1fca15e37840eb4f2192f2cec0c23` · per git_

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

_Last changed by Masood on 2026-09-27 · `3d106e952ac1fca15e37840eb4f2192f2cec0c23` · per git_

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

_Last changed by Masood on 2026-09-27 · `3d106e952ac1fca15e37840eb4f2192f2cec0c23` · per git_

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

**Downlinks:** [MRTM-HWI-002](#MRTM-HWI-002)

### {#MRTM-PRF-002}MRTM-PRF-002 — End-to-end alert time

_Last changed by Masood on 2026-09-27 · `3d106e952ac1fca15e37840eb4f2192f2cec0c23` · per git_

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

**Downlinks:** [MRTM-SRS-006](#MRTM-SRS-006)

### {#MRTM-PRF-003}MRTM-PRF-003 — Log readout time

_Last changed by Masood on 2026-09-27 · `3d106e952ac1fca15e37840eb4f2192f2cec0c23` · per git_

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

**Downlinks:** [MRTM-SRS-014](#MRTM-SRS-014)

### {#MRTM-PRF-004}MRTM-PRF-004 — Display refresh

_Last changed by Masood on 2026-09-27 · `3d106e952ac1fca15e37840eb4f2192f2cec0c23` · per git_

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

**Downlinks:** [MRTM-SRS-010](#MRTM-SRS-010)

## Safety Requirement (23)

### {#MRTM-SAF-001}MRTM-SAF-001 — Buzzer loudness

_Last changed by Masood on 2026-09-27 · `3d106e952ac1fca15e37840eb4f2192f2cec0c23` · per git_

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

**Downlinks:** [MRTM-HWI-004](#MRTM-HWI-004)

### {#MRTM-SAF-002}MRTM-SAF-002 — Probe fault raises alert

_Last changed by Masood on 2026-09-27 · `3d106e952ac1fca15e37840eb4f2192f2cec0c23` · per git_

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

_Last changed by Masood on 2026-09-27 · `3d106e952ac1fca15e37840eb4f2192f2cec0c23` · per git_

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

**Downlinks:** [MRTM-HWI-003](#MRTM-HWI-003), [MRTM-SRS-005](#MRTM-SRS-005)

### {#MRTM-SAF-004}MRTM-SAF-004 — Watchdog restart

_Last changed by Masood on 2026-09-27 · `3d106e952ac1fca15e37840eb4f2192f2cec0c23` · per git_

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

**Downlinks:** [MRTM-HWI-013](#MRTM-HWI-013)

### {#MRTM-SAF-005}MRTM-SAF-005 — Log power loss

_Last changed by Masood on 2026-09-27 · `3d106e952ac1fca15e37840eb4f2192f2cec0c23` · per git_

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

**Downlinks:** [MRTM-SRS-016](#MRTM-SRS-016)

### {#MRTM-SAF-006}MRTM-SAF-006 — Alert survives restart

_Last changed by Masood on 2026-09-27 · `3d106e952ac1fca15e37840eb4f2192f2cec0c23` · per git_

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

_Last changed by Masood on 2026-09-27 · `3d106e952ac1fca15e37840eb4f2192f2cec0c23` · per git_

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

**Downlinks:** [MRTM-SRS-018](#MRTM-SRS-018)

### {#MRTM-SAF-008}MRTM-SAF-008 — Low battery alarm

_Last changed by Masood on 2026-09-27 · `3d106e952ac1fca15e37840eb4f2192f2cec0c23` · per git_

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

**Downlinks:** [MRTM-SRS-016](#MRTM-SRS-016)

### {#MRTM-SAF-009}MRTM-SAF-009 — Backup alarm on firmware silence

_Last changed by Masood on 2026-09-27 · `3d106e952ac1fca15e37840eb4f2192f2cec0c23` · per git_

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

**Downlinks:** [MRTM-HWI-007](#MRTM-HWI-007), [MRTM-SRS-017](#MRTM-SRS-017)

### {#MRTM-SAF-010}MRTM-SAF-010 — Watchdog tied to the alarm service

_Last changed by Masood on 2026-09-27 · `3d106e952ac1fca15e37840eb4f2192f2cec0c23` · per git_

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

**Downlinks:** [MRTM-SRS-017](#MRTM-SRS-017)

### {#MRTM-SAF-011}MRTM-SAF-011 — Fault tone differs from excursion tone

_Last changed by Masood on 2026-09-27 · `3d106e952ac1fca15e37840eb4f2192f2cec0c23` · per git_

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

_Last changed by Masood on 2026-09-27 · `3d106e952ac1fca15e37840eb4f2192f2cec0c23` · per git_

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

**Downlinks:** [MRTM-SRS-011](#MRTM-SRS-011)

### {#MRTM-SAF-013}MRTM-SAF-013 — Alarm on total power loss

_Last changed by Masood on 2026-09-27 · `3d106e952ac1fca15e37840eb4f2192f2cec0c23` · per git_

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

**Downlinks:** [MRTM-HWI-008](#MRTM-HWI-008)

### {#MRTM-SAF-014}MRTM-SAF-014 — Buzzer open-circuit detection

_Last changed by Masood on 2026-09-27 · `3d106e952ac1fca15e37840eb4f2192f2cec0c23` · per git_

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

_Last changed by Masood on 2026-09-27 · `3d106e952ac1fca15e37840eb4f2192f2cec0c23` · per git_

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

_Last changed by Masood on 2026-09-27 · `3d106e952ac1fca15e37840eb4f2192f2cec0c23` · per git_

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

**Downlinks:** [MRTM-SRS-011](#MRTM-SRS-011)

### {#MRTM-SAF-017}MRTM-SAF-017 — Band integrity check

_Last changed by Masood on 2026-09-27 · `3d106e952ac1fca15e37840eb4f2192f2cec0c23` · per git_

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

**Downlinks:** [MRTM-SRS-019](#MRTM-SRS-019)

### {#MRTM-SAF-018}MRTM-SAF-018 — Two copies of every record

_Last changed by Masood on 2026-09-27 · `3d106e952ac1fca15e37840eb4f2192f2cec0c23` · per git_

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

**Downlinks:** [MRTM-SRS-012](#MRTM-SRS-012)

### {#MRTM-SAF-019}MRTM-SAF-019 — Stuck acknowledge button

_Last changed by Masood on 2026-09-27 · `3d106e952ac1fca15e37840eb4f2192f2cec0c23` · per git_

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

_Last changed by Masood on 2026-09-27 · `3d106e952ac1fca15e37840eb4f2192f2cec0c23` · per git_

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

_Last changed by Masood on 2026-09-27 · `3d106e952ac1fca15e37840eb4f2192f2cec0c23` · per git_

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

_Last changed by Masood on 2026-09-27 · `3d106e952ac1fca15e37840eb4f2192f2cec0c23` · per git_

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

**Downlinks:** [MRTM-SRS-015](#MRTM-SRS-015)

### {#MRTM-SAF-023}MRTM-SAF-023 — Backup alarm power-up test

_Last changed by Masood on 2026-09-27 · `3d106e952ac1fca15e37840eb4f2192f2cec0c23` · per git_

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

**Downlinks:** [MRTM-SRS-018](#MRTM-SRS-018)

## Stakeholder Requirement (8)

### {#MRTM-STK-001}MRTM-STK-001 — Alert on excursion

_Last changed by Masood on 2026-09-27 · `3d106e952ac1fca15e37840eb4f2192f2cec0c23` · per git_

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

_Last changed by Masood on 2026-09-27 · `3d106e952ac1fca15e37840eb4f2192f2cec0c23` · per git_

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

_Last changed by Masood on 2026-09-27 · `3d106e952ac1fca15e37840eb4f2192f2cec0c23` · per git_

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

_Last changed by Masood on 2026-09-27 · `3d106e952ac1fca15e37840eb4f2192f2cec0c23` · per git_

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

_Last changed by Masood on 2026-09-27 · `3d106e952ac1fca15e37840eb4f2192f2cec0c23` · per git_

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

_Last changed by Masood on 2026-09-27 · `3d106e952ac1fca15e37840eb4f2192f2cec0c23` · per git_

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

_Last changed by Masood on 2026-09-27 · `3d106e952ac1fca15e37840eb4f2192f2cec0c23` · per git_

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

_Last changed by Masood on 2026-09-27 · `3d106e952ac1fca15e37840eb4f2192f2cec0c23` · per git_

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

_Last changed by Masood on 2026-09-27 · `3d106e952ac1fca15e37840eb4f2192f2cec0c23` · per git_

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

The monitor shall sample the fridge air temperature at the sampling period of 2 s.

**Rationale**

Sampling Period in the data dictionary (A-04).

**Verification**

Test: time 100 consecutive samples; each interval is 2 s ± 0.1 s.

**Uplinks:** [MRTM-STK-004](#MRTM-STK-004)

**Downlinks:** [MRTM-ENV-002](#MRTM-ENV-002), [MRTM-ENV-003](#MRTM-ENV-003), [MRTM-ENV-004](#MRTM-ENV-004), [MRTM-IFC-001](#MRTM-IFC-001), [MRTM-MNT-003](#MRTM-MNT-003), [MRTM-PRF-001](#MRTM-PRF-001), [MRTM-SAF-003](#MRTM-SAF-003), [MRTM-SAF-004](#MRTM-SAF-004), [MRTM-SAF-012](#MRTM-SAF-012), [MRTM-SAF-020](#MRTM-SAF-020), [MRTM-SRS-001](#MRTM-SRS-001)

### {#MRTM-SYS-002}MRTM-SYS-002 — Excursion confirmation

_Last changed by Masood on 2026-09-27 · `3d106e952ac1fca15e37840eb4f2192f2cec0c23` · per git_

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

The monitor shall confirm the excursion when 31 consecutive samples, spanning 60 s, are outside the allowed band.

**Rationale**

Excursion Confirmation Time filters door openings (US-2).

**Verification**

Test: hold the probe out of band for 59 s and 61 s; only the second confirms.

**Uplinks:** [MRTM-STK-002](#MRTM-STK-002)

**Downlinks:** [MRTM-SRS-003](#MRTM-SRS-003)

### {#MRTM-SYS-003}MRTM-SYS-003 — Buzzer on excursion

_Last changed by Masood on 2026-09-27 · `3d106e952ac1fca15e37840eb4f2192f2cec0c23` · per git_

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

**Downlinks:** [MRTM-PRF-002](#MRTM-PRF-002), [MRTM-SAF-001](#MRTM-SAF-001), [MRTM-SAF-006](#MRTM-SAF-006), [MRTM-SAF-007](#MRTM-SAF-007), [MRTM-SAF-009](#MRTM-SAF-009), [MRTM-SAF-010](#MRTM-SAF-010), [MRTM-SAF-014](#MRTM-SAF-014), [MRTM-SAF-023](#MRTM-SAF-023), [MRTM-SRS-006](#MRTM-SRS-006), [MRTM-SRS-008](#MRTM-SRS-008)

### {#MRTM-SYS-004}MRTM-SYS-004 — Red indicator on excursion

_Last changed by Masood on 2026-09-27 · `3d106e952ac1fca15e37840eb4f2192f2cec0c23` · per git_

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

**Downlinks:** [MRTM-HWI-005](#MRTM-HWI-005), [MRTM-SAF-015](#MRTM-SAF-015)

### {#MRTM-SYS-005}MRTM-SYS-005 — Warning on excursion

_Last changed by Masood on 2026-09-27 · `3d106e952ac1fca15e37840eb4f2192f2cec0c23` · per git_

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

**Downlinks:** [MRTM-IFC-004](#MRTM-IFC-004), [MRTM-SAF-021](#MRTM-SAF-021), [MRTM-SRS-009](#MRTM-SRS-009)

### {#MRTM-SYS-006}MRTM-SYS-006 — Acknowledge silences buzzer

_Last changed by Masood on 2026-09-27 · `3d106e952ac1fca15e37840eb4f2192f2cec0c23` · per git_

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

**Downlinks:** [MRTM-HWI-006](#MRTM-HWI-006), [MRTM-IFC-002](#MRTM-IFC-002), [MRTM-SAF-019](#MRTM-SAF-019), [MRTM-SRS-007](#MRTM-SRS-007)

### {#MRTM-SYS-007}MRTM-SYS-007 — Warning stays while excursion is open

_Last changed by Masood on 2026-09-27 · `3d106e952ac1fca15e37840eb4f2192f2cec0c23` · per git_

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

**Downlinks:** [MRTM-SRS-009](#MRTM-SRS-009)

### {#MRTM-SYS-008}MRTM-SYS-008 — Log excursion start

_Last changed by Masood on 2026-09-27 · `3d106e952ac1fca15e37840eb4f2192f2cec0c23` · per git_

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

**Downlinks:** [MRTM-SRS-012](#MRTM-SRS-012), [MRTM-SRS-015](#MRTM-SRS-015)

### {#MRTM-SYS-009}MRTM-SYS-009 — Log excursion end

_Last changed by Masood on 2026-09-27 · `3d106e952ac1fca15e37840eb4f2192f2cec0c23` · per git_

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

**Downlinks:** [MRTM-SRS-012](#MRTM-SRS-012)

### {#MRTM-SYS-010}MRTM-SYS-010 — Log acknowledgement

_Last changed by Masood on 2026-09-27 · `3d106e952ac1fca15e37840eb4f2192f2cec0c23` · per git_

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

**Downlinks:** [MRTM-SRS-012](#MRTM-SRS-012)

### {#MRTM-SYS-011}MRTM-SYS-011 — Display resolution

_Last changed by Masood on 2026-09-27 · `3d106e952ac1fca15e37840eb4f2192f2cec0c23` · per git_

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

**Downlinks:** [MRTM-PRF-004](#MRTM-PRF-004), [MRTM-SRS-010](#MRTM-SRS-010)

### {#MRTM-SYS-012}MRTM-SYS-012 — Probe fault detection

_Last changed by Masood on 2026-09-27 · `3d106e952ac1fca15e37840eb4f2192f2cec0c23` · per git_

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

**Downlinks:** [MRTM-HWI-003](#MRTM-HWI-003), [MRTM-MNT-001](#MRTM-MNT-001), [MRTM-SAF-002](#MRTM-SAF-002), [MRTM-SAF-011](#MRTM-SAF-011), [MRTM-SRS-005](#MRTM-SRS-005)

### {#MRTM-SYS-013}MRTM-SYS-013 — Probe fault message

_Last changed by Masood on 2026-09-27 · `3d106e952ac1fca15e37840eb4f2192f2cec0c23` · per git_

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

**Downlinks:** [MRTM-SRS-011](#MRTM-SRS-011)

### {#MRTM-SYS-014}MRTM-SYS-014 — Read-only event log

_Last changed by Masood on 2026-09-27 · `3d106e952ac1fca15e37840eb4f2192f2cec0c23` · per git_

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

**Downlinks:** [MRTM-IFC-003](#MRTM-IFC-003), [MRTM-SRS-014](#MRTM-SRS-014)

### {#MRTM-SYS-015}MRTM-SYS-015 — Event log capacity

_Last changed by Masood on 2026-09-27 · `3d106e952ac1fca15e37840eb4f2192f2cec0c23` · per git_

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

**Downlinks:** [MRTM-PRF-003](#MRTM-PRF-003), [MRTM-SAF-018](#MRTM-SAF-018), [MRTM-SRS-013](#MRTM-SRS-013)

### {#MRTM-SYS-016}MRTM-SYS-016 — Battery operation

_Last changed by Masood on 2026-09-27 · `3d106e952ac1fca15e37840eb4f2192f2cec0c23` · per git_

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

**Downlinks:** [MRTM-ENV-001](#MRTM-ENV-001), [MRTM-HWI-011](#MRTM-HWI-011), [MRTM-MNT-002](#MRTM-MNT-002), [MRTM-SAF-005](#MRTM-SAF-005), [MRTM-SAF-008](#MRTM-SAF-008), [MRTM-SAF-013](#MRTM-SAF-013)

### {#MRTM-SYS-017}MRTM-SYS-017 — Allowed band

_Last changed by Masood on 2026-09-27 · `3d106e952ac1fca15e37840eb4f2192f2cec0c23` · per git_

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

**Downlinks:** [MRTM-SAF-016](#MRTM-SAF-016), [MRTM-SAF-017](#MRTM-SAF-017), [MRTM-SRS-019](#MRTM-SRS-019)

### {#MRTM-SYS-018}MRTM-SYS-018 — Excursion end confirmation

_Last changed by Masood on 2026-09-27 · `3d106e952ac1fca15e37840eb4f2192f2cec0c23` · per git_

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

The monitor shall end the excursion after 31 consecutive samples, spanning 60 s, back inside the allowed band.

**Rationale**

Review round 1, thread T08: ending at the first sample back inside makes a fridge at the band edge start and end excursions every 10 s (alarm chatter).

**Verification**

Test: hold the probe at the limit with ±0.2 °C noise and confirm exactly one excursion start event and one excursion end event in the log.

**Uplinks:** [MRTM-STK-002](#MRTM-STK-002)

**Downlinks:** [MRTM-SRS-004](#MRTM-SRS-004)

### {#MRTM-SYS-019}MRTM-SYS-019 — Alarm comes back after silence

_Last changed by Masood on 2026-09-27 · `3d106e952ac1fca15e37840eb4f2192f2cec0c23` · per git_

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

_Last changed by Masood on 2026-09-27 · `3d106e952ac1fca15e37840eb4f2192f2cec0c23` · per git_

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

**Downlinks:** [MRTM-HWI-010](#MRTM-HWI-010), [MRTM-SAF-022](#MRTM-SAF-022), [MRTM-SRS-015](#MRTM-SRS-015)

### {#MRTM-SYS-021}MRTM-SYS-021 — Event log integrity

_Last changed by Masood on 2026-09-27 · `3d106e952ac1fca15e37840eb4f2192f2cec0c23` · per git_

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

_Last changed by Masood on 2026-09-27 · `3d106e952ac1fca15e37840eb4f2192f2cec0c23` · per git_

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

**Downlinks:** [MRTM-SRS-011](#MRTM-SRS-011)

### {#MRTM-SYS-023}MRTM-SYS-023 — Power restore event

_Last changed by Masood on 2026-09-27 · `3d106e952ac1fca15e37840eb4f2192f2cec0c23` · per git_

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

**Downlinks:** [MRTM-SRS-016](#MRTM-SRS-016)

### {#MRTM-SYS-024}MRTM-SYS-024 — Early excursion alarm

_Last changed by Masood on 2026-09-27 · `3d106e952ac1fca15e37840eb4f2192f2cec0c23` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, DOGFOOD-6)

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

**Downlinks:** [MRTM-HWI-001](#MRTM-HWI-001), [MRTM-SRS-002](#MRTM-SRS-002)

## Hardware item requirement (13)

### {#MRTM-HWI-001}MRTM-HWI-001 — Probe conversion time

_Last changed by Masood on 2026-09-27 · `d8b828934348069f5941f24ceae3f1a7718f6a76` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-05)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The hardware item shall complete a 12-bit temperature conversion within 750 ms.

**Rationale**

The hardware share of the 5 s early-alarm budget. Part class figure, synthetic (A-40).

**Verification**

Inspection of the part data; SP-10 bus capture.

**Safety**

Hardware item: IEC 62304 classes software only. `C` here means the item carries class-C risk controls (ISO 14971: backup alarm, buzzer, probe); it keeps Sanad's rigour at 4.

**Uplinks:** [MRTM-SYS-024](#MRTM-SYS-024)

### {#MRTM-HWI-002}MRTM-HWI-002 — Probe accuracy

_Last changed by Masood on 2026-09-27 · `d8b828934348069f5941f24ceae3f1a7718f6a76` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-05)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The hardware item shall measure the fridge air temperature with an accuracy of ±0.5 °C over the range 0 °C to 15 °C.

**Rationale**

The accuracy is all probe; the software only converts units. source: WHO PQS E006 / CDC Vaccine Storage and Handling Toolkit (assumed sources, edition and clause to confirm).

**Verification**

Test: SP-10.

**Safety**

Hardware item: IEC 62304 classes software only. `C` here means the item carries class-C risk controls (ISO 14971: backup alarm, buzzer, probe); it keeps Sanad's rigour at 4.

**Uplinks:** [MRTM-PRF-001](#MRTM-PRF-001), [MRTM-ENV-004](#MRTM-ENV-004)

### {#MRTM-HWI-003}MRTM-HWI-003 — Probe scratchpad check

_Last changed by Masood on 2026-09-27 · `d8b828934348069f5941f24ceae3f1a7718f6a76` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-05)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

When the software reads the probe scratchpad, the hardware item shall send a CRC-8 value with the **Sample** data.

**Rationale**

The CRC-8 lets the software tell a bad read from a real temperature (ADR-0009).

**Verification**

Inspection of a bus capture in SP-10.

**Safety**

Hardware item: IEC 62304 classes software only. `C` here means the item carries class-C risk controls (ISO 14971: backup alarm, buzzer, probe); it keeps Sanad's rigour at 4.

**Uplinks:** [MRTM-SYS-012](#MRTM-SYS-012), [MRTM-SAF-003](#MRTM-SAF-003)

### {#MRTM-HWI-004}MRTM-HWI-004 — Buzzer loudness

_Last changed by Masood on 2026-09-27 · `d8b828934348069f5941f24ceae3f1a7718f6a76` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-05)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The hardware item shall produce a sound pressure level of 65 dB(A) or more at 1 m when either buzzer drive input is active.

**Rationale**

Two OR-ed drive inputs: firmware and backup alarm (ADR-0017). source: IEC 60601-1-8 (edition assumed :2006+A1:2012+A2:2020, to be confirmed against the customer's edition).

**Verification**

Test: SP-06.

**Safety**

Hardware item: IEC 62304 classes software only. `C` here means the item carries class-C risk controls (ISO 14971: backup alarm, buzzer, probe); it keeps Sanad's rigour at 4.

**Uplinks:** [MRTM-SAF-001](#MRTM-SAF-001)

### {#MRTM-HWI-005}MRTM-HWI-005 — Red indicator response

_Last changed by Masood on 2026-09-27 · `d8b828934348069f5941f24ceae3f1a7718f6a76` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-05)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The hardware item shall light the red indicator within 10 ms of its drive input.

**Rationale**

Part response time, synthetic (A-40).

**Verification**

Test: SP-01.

**Safety**

Hardware item: IEC 62304 classes software only. `C` here means the item carries class-C risk controls (ISO 14971: backup alarm, buzzer, probe); it keeps Sanad's rigour at 4.

**Uplinks:** [MRTM-SYS-004](#MRTM-SYS-004)

### {#MRTM-HWI-006}MRTM-HWI-006 — Acknowledge contact

_Last changed by Masood on 2026-09-27 · `d8b828934348069f5941f24ceae3f1a7718f6a76` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-05)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

While a clinic staff member presses the acknowledge button, the hardware item shall close the contact that signals an **Acknowledgement**.

**Rationale**

The button half of the acknowledge path; debounce is software.

**Verification**

Test: SP-01.

**Safety**

Hardware item: IEC 62304 classes software only. `C` here means the item carries class-C risk controls (ISO 14971: backup alarm, buzzer, probe); it keeps Sanad's rigour at 4.

**Uplinks:** [MRTM-SYS-006](#MRTM-SYS-006), [MRTM-IFC-002](#MRTM-IFC-002)

### {#MRTM-HWI-007}MRTM-HWI-007 — Backup alarm timeout

_Last changed by Masood on 2026-09-27 · `d8b828934348069f5941f24ceae3f1a7718f6a76` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-05)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The hardware item shall drive the buzzer from the backup alarm within 10 s of the last watchdog service pulse.

**Rationale**

Risk control for HAZ-003 and HAZ-005 that needs no processor (ADR-0013): timer 9 s ± 0.9 s + driver 100 ms.

**Verification**

Test: SP-03.

**Safety**

Hardware item: IEC 62304 classes software only. `C` here means the item carries class-C risk controls (ISO 14971: backup alarm, buzzer, probe); it keeps Sanad's rigour at 4.

**Uplinks:** [MRTM-SAF-009](#MRTM-SAF-009)

### {#MRTM-HWI-008}MRTM-HWI-008 — Backup alarm hold-up

_Last changed by Masood on 2026-09-27 · `d8b828934348069f5941f24ceae3f1a7718f6a76` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-05)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The hardware item shall drive the buzzer from the backup alarm for 60 s or more after the loss of both mains and battery power.

**Rationale**

Supercapacitor, 133 s computed (09-hardware/power-budget.md).

**Verification**

Test: SP-03.

**Safety**

Hardware item: IEC 62304 classes software only. `C` here means the item carries class-C risk controls (ISO 14971: backup alarm, buzzer, probe); it keeps Sanad's rigour at 4.

**Uplinks:** [MRTM-SAF-013](#MRTM-SAF-013)

### {#MRTM-HWI-009}MRTM-HWI-009 — Display digit height

_Last changed by Masood on 2026-09-27 · `d8b828934348069f5941f24ceae3f1a7718f6a76` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-05)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The hardware item shall draw the temperature digits at a character height of 5 mm or more.

**Rationale**

Panel class figure, synthetic (A-40).

**Verification**

Test: SP-09.

**Safety**

Hardware item: IEC 62304 classes software only. `C` here means the item carries class-C risk controls (ISO 14971: backup alarm, buzzer, probe); it keeps Sanad's rigour at 4.

**Uplinks:** [MRTM-IFC-004](#MRTM-IFC-004)

### {#MRTM-HWI-010}MRTM-HWI-010 — Clock drift

_Last changed by Masood on 2026-09-27 · `d8b828934348069f5941f24ceae3f1a7718f6a76` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-05)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The hardware item shall keep time with a drift of 2 s per day or less from 10 °C to 35 °C.

**Rationale**

Temperature-compensated clock part (A-14).

**Verification**

Test: SP-12.

**Safety**

Hardware item: IEC 62304 classes software only. `C` here means the item carries class-C risk controls (ISO 14971: backup alarm, buzzer, probe); it keeps Sanad's rigour at 4.

**Uplinks:** [MRTM-SYS-020](#MRTM-SYS-020)

### {#MRTM-HWI-011}MRTM-HWI-011 — Power path switch-over

_Last changed by Masood on 2026-09-27 · `d8b828934348069f5941f24ceae3f1a7718f6a76` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-05)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The hardware item shall switch the load from mains to battery within 100 ms of mains power loss.

**Rationale**

Charger with automatic change-over.

**Verification**

Test: SP-04.

**Safety**

Hardware item: IEC 62304 classes software only. `C` here means the item carries class-C risk controls (ISO 14971: backup alarm, buzzer, probe); it keeps Sanad's rigour at 4.

**Uplinks:** [MRTM-SYS-016](#MRTM-SYS-016)

### {#MRTM-HWI-012}MRTM-HWI-012 — Battery endurance

_Last changed by Masood on 2026-09-27 · `d8b828934348069f5941f24ceae3f1a7718f6a76` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-05)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The hardware item shall supply the monitor from the battery for 4 h.

**Rationale**

2000 mAh cell, 25.8 h worst case computed (A-11, A-40).

**Verification**

Test: SP-04.

**Safety**

Hardware item: IEC 62304 classes software only. `C` here means the item carries class-C risk controls (ISO 14971: backup alarm, buzzer, probe); it keeps Sanad's rigour at 4.

**Uplinks:** [MRTM-ENV-001](#MRTM-ENV-001)

### {#MRTM-HWI-013}MRTM-HWI-013 — Processor watchdog reset

_Last changed by Masood on 2026-09-27 · `d8b828934348069f5941f24ceae3f1a7718f6a76` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-05)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The hardware item shall reset the processor within 1 s of its hardware watchdog expiry.

**Rationale**

Processor part feature (A-25).

**Verification**

Test: SP-03.

**Safety**

Hardware item: IEC 62304 classes software only. `C` here means the item carries class-C risk controls (ISO 14971: backup alarm, buzzer, probe); it keeps Sanad's rigour at 4.

**Uplinks:** [MRTM-SAF-004](#MRTM-SAF-004)

## Software system requirement (19)

### {#MRTM-SRS-001}MRTM-SRS-001 — SRS sample period

_Last changed by Masood on 2026-09-27 · `d8b828934348069f5941f24ceae3f1a7718f6a76` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-05)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The software system shall read one fridge air temperature sample from the probe at a period of 2 s.

**Rationale**

IEC 62304 §5.2.2 a) functional: the software share of the device sampling period. 2 s is ADR-0031.

**Verification**

Test: SP-01 bench trace of sample time stamps.

**Safety**

Class C (IEC 62304 §4.3): a failure of this software system can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (HAZ-001…HAZ-008, severity serious).

**Uplinks:** [MRTM-SYS-001](#MRTM-SYS-001)

**Downlinks:** [MRTM-SNI-001](#MRTM-SNI-001)

### {#MRTM-SRS-002}MRTM-SRS-002 — SRS early alarm signal

_Last changed by Masood on 2026-09-27 · `d8b828934348069f5941f24ceae3f1a7718f6a76` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-05)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The software system shall command the low-priority excursion alarm signal within 1 s of the first valid out-of-band sample.

**Rationale**

§5.2.2 b) performance: the software share of the 5 s early-alarm budget (2 s wait + 750 ms conversion + 1 s; ADR-0030).

**Verification**

Test: unit test of the budget sum; SP-01.11 timed trials.

**Safety**

Class C (IEC 62304 §4.3): a failure of this software system can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (HAZ-001…HAZ-008, severity serious).

**Uplinks:** [MRTM-SYS-024](#MRTM-SYS-024)

**Downlinks:** [MRTM-ALI-001](#MRTM-ALI-001), [MRTM-EXI-001](#MRTM-EXI-001), [MRTM-SNI-001](#MRTM-SNI-001)

### {#MRTM-SRS-003}MRTM-SRS-003 — SRS excursion confirmation

_Last changed by Masood on 2026-09-27 · `d8b828934348069f5941f24ceae3f1a7718f6a76` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-05)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The software system shall confirm the excursion when 31 consecutive valid samples, spanning 60 s, are outside the allowed band.

**Rationale**

§5.2.2 a): the device confirmation time, counted in samples at the 2 s period (A-04, ADR-0031).

**Verification**

Test: integration chain INT-01.

**Safety**

Class C (IEC 62304 §4.3): a failure of this software system can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (HAZ-001…HAZ-008, severity serious).

**Uplinks:** [MRTM-SYS-002](#MRTM-SYS-002)

**Downlinks:** [MRTM-EXI-002](#MRTM-EXI-002)

### {#MRTM-SRS-004}MRTM-SRS-004 — SRS excursion end

_Last changed by Masood on 2026-09-27 · `d8b828934348069f5941f24ceae3f1a7718f6a76` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-05)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The software system shall end the excursion after 31 consecutive valid samples, spanning 60 s, inside the allowed band.

**Rationale**

§5.2.2 a): the device end-of-excursion rule in samples.

**Verification**

Test: unit test of the evaluator.

**Safety**

Class C (IEC 62304 §4.3): a failure of this software system can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (HAZ-001…HAZ-008, severity serious).

**Uplinks:** [MRTM-SYS-018](#MRTM-SYS-018)

**Downlinks:** [MRTM-EXI-003](#MRTM-EXI-003)

### {#MRTM-SRS-005}MRTM-SRS-005 — SRS invalid sample

_Last changed by Masood on 2026-09-27 · `d8b828934348069f5941f24ceae3f1a7718f6a76` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-05)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The software system shall mark a sample invalid when its CRC-8 check fails or its value is outside -30 °C to 50 °C.

**Rationale**

§5.2.3 risk control in software (HAZ-001, HAZ-004): an invalid sample never counts toward an excursion (A-29).

**Verification**

Test: SP-02.

**Safety**

Class C (IEC 62304 §4.3): a failure of this software system can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (HAZ-001…HAZ-008, severity serious).

**Uplinks:** [MRTM-SYS-012](#MRTM-SYS-012), [MRTM-SAF-003](#MRTM-SAF-003)

**Downlinks:** [MRTM-SNI-002](#MRTM-SNI-002)

### {#MRTM-SRS-006}MRTM-SRS-006 — SRS buzzer on

_Last changed by Masood on 2026-09-27 · `d8b828934348069f5941f24ceae3f1a7718f6a76` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-05)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The software system shall switch the buzzer drive on within 1 s of excursion confirmation.

**Rationale**

§5.2.2 b): the software share of the 65 s buzzer budget.

**Verification**

Test: integration chain INT-01.

**Safety**

Class C (IEC 62304 §4.3): a failure of this software system can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (HAZ-001…HAZ-008, severity serious).

**Uplinks:** [MRTM-SYS-003](#MRTM-SYS-003), [MRTM-PRF-002](#MRTM-PRF-002)

**Downlinks:** [MRTM-ALI-002](#MRTM-ALI-002)

### {#MRTM-SRS-007}MRTM-SRS-007 — SRS buzzer off on acknowledge

_Last changed by Masood on 2026-09-27 · `d8b828934348069f5941f24ceae3f1a7718f6a76` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-05)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The software system shall switch the buzzer drive off within 1 s of a debounced acknowledge press.

**Rationale**

§5.2.2 c) user interface (IEC 60601-1-8 audio paused).

**Verification**

Test: unit tests of the alarm manager.

**Safety**

Class C (IEC 62304 §4.3): a failure of this software system can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (HAZ-001…HAZ-008, severity serious).

**Uplinks:** [MRTM-SYS-006](#MRTM-SYS-006), [MRTM-IFC-002](#MRTM-IFC-002)

**Downlinks:** [MRTM-ALI-003](#MRTM-ALI-003)

### {#MRTM-SRS-008}MRTM-SRS-008 — SRS alarm burst pattern

_Last changed by Masood on 2026-09-27 · `d8b828934348069f5941f24ceae3f1a7718f6a76` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-05)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The software system shall drive the confirmed excursion alarm sound as bursts of 10 pulses with a burst repetition interval from 2.5 s to 15 s.

**Rationale**

High-priority auditory pattern (run 2 check D-2). source: IEC 60601-1-8 (edition assumed :2006+A1:2012+A2:2020, to be confirmed against the customer's edition). Not yet decomposed to an item or implemented: a real, visible gap (Q-20).

**Verification**

Test: to be written with the item requirement (bench SP-06 sound capture).

**Safety**

Class C (IEC 62304 §4.3): a failure of this software system can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (HAZ-001…HAZ-008, severity serious).

**Uplinks:** [MRTM-SYS-003](#MRTM-SYS-003)

### {#MRTM-SRS-009}MRTM-SRS-009 — SRS excursion warning

_Last changed by Masood on 2026-09-27 · `d8b828934348069f5941f24ceae3f1a7718f6a76` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-05)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The software system shall show the excursion warning within 1 s of excursion confirmation until the excursion ends.

**Rationale**

§5.2.2 c) user interface.

**Verification**

Test: integration chain INT-01.

**Safety**

Class C (IEC 62304 §4.3): a failure of this software system can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (HAZ-001…HAZ-008, severity serious).

**Uplinks:** [MRTM-SYS-005](#MRTM-SYS-005), [MRTM-SYS-007](#MRTM-SYS-007)

**Downlinks:** [MRTM-DSI-001](#MRTM-DSI-001)

### {#MRTM-SRS-010}MRTM-SRS-010 — SRS temperature shown

_Last changed by Masood on 2026-09-27 · `d8b828934348069f5941f24ceae3f1a7718f6a76` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-05)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The software system shall show the current temperature at 0.1 °C resolution, refreshed at a period of 10 s.

**Rationale**

§5.2.2 c) user interface.

**Verification**

Test: SP-09.

**Safety**

Class C (IEC 62304 §4.3): a failure of this software system can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (HAZ-001…HAZ-008, severity serious).

**Uplinks:** [MRTM-SYS-011](#MRTM-SYS-011), [MRTM-PRF-004](#MRTM-PRF-004)

**Downlinks:** [MRTM-DSI-002](#MRTM-DSI-002)

### {#MRTM-SRS-011}MRTM-SRS-011 — SRS status messages

_Last changed by Masood on 2026-09-27 · `d8b828934348069f5941f24ceae3f1a7718f6a76` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-05)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The software system shall show the probe fault, calibration due, band limits and log capacity messages within 1 s of their cause.

**Rationale**

§5.2.3: two of these messages are risk controls with no other signal (SAF-012, SAF-016; ADR-0034).

**Verification**

Test: SP-05, SP-09.

**Safety**

Class C (IEC 62304 §4.3): a failure of this software system can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (HAZ-001…HAZ-008, severity serious).

**Uplinks:** [MRTM-SYS-013](#MRTM-SYS-013), [MRTM-SAF-012](#MRTM-SAF-012), [MRTM-SAF-016](#MRTM-SAF-016), [MRTM-SYS-022](#MRTM-SYS-022)

**Downlinks:** [MRTM-DSI-001](#MRTM-DSI-001)

### {#MRTM-SRS-012}MRTM-SRS-012 — SRS record stored twice

_Last changed by Masood on 2026-09-27 · `d8b828934348069f5941f24ceae3f1a7718f6a76` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-05)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The software system shall store each event record in 2 separate flash sectors within 1 s of the event.

**Rationale**

§5.2.2 e) data definition; §5.2.3 risk control for a lost record (HAZ-005).

**Verification**

Test: SP-07.

**Safety**

Class C (IEC 62304 §4.3): a failure of this software system can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (HAZ-001…HAZ-008, severity serious).

**Uplinks:** [MRTM-SAF-018](#MRTM-SAF-018), [MRTM-SYS-008](#MRTM-SYS-008), [MRTM-SYS-009](#MRTM-SYS-009), [MRTM-SYS-010](#MRTM-SYS-010)

**Downlinks:** [MRTM-LGI-001](#MRTM-LGI-001)

### {#MRTM-SRS-013}MRTM-SRS-013 — SRS log capacity

_Last changed by Masood on 2026-09-27 · `d8b828934348069f5941f24ceae3f1a7718f6a76` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-05)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

When the **Event Log** reaches its capacity, the software system shall keep the newest 10000 records in the **Event Log**.

**Rationale**

§5.2.2 e): retention as a count is a product choice (A-04).

**Verification**

Test: SP-07.

**Safety**

Class C (IEC 62304 §4.3): a failure of this software system can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (HAZ-001…HAZ-008, severity serious).

**Uplinks:** [MRTM-SYS-015](#MRTM-SYS-015)

**Downlinks:** [MRTM-LGI-002](#MRTM-LGI-002)

### {#MRTM-SRS-014}MRTM-SRS-014 — SRS read-only export

_Last changed by Masood on 2026-09-27 · `d8b828934348069f5941f24ceae3f1a7718f6a76` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-05)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The software system shall give the USB host read-only access to the event records within 30 s of connection.

**Rationale**

§5.2.2 d) interfaces; §5.2.2 g) security: the history cannot be edited (STK-006).

**Verification**

Test: SP-08.

**Safety**

Class C (IEC 62304 §4.3): a failure of this software system can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (HAZ-001…HAZ-008, severity serious).

**Uplinks:** [MRTM-SYS-014](#MRTM-SYS-014), [MRTM-IFC-003](#MRTM-IFC-003), [MRTM-PRF-003](#MRTM-PRF-003)

**Downlinks:** [MRTM-USI-001](#MRTM-USI-001), [MRTM-USI-002](#MRTM-USI-002)

### {#MRTM-SRS-015}MRTM-SRS-015 — SRS time stamp

_Last changed by Masood on 2026-09-27 · `d8b828934348069f5941f24ceae3f1a7718f6a76` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-05)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The software system shall time-stamp each record with UTC at 1 s resolution.

**Rationale**

§5.2.2 e): the clock drift itself is the hardware item's (MRTM-HWI-010).

**Verification**

Test: SP-12.

**Safety**

Class C (IEC 62304 §4.3): a failure of this software system can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (HAZ-001…HAZ-008, severity serious).

**Uplinks:** [MRTM-SYS-020](#MRTM-SYS-020), [MRTM-SYS-008](#MRTM-SYS-008), [MRTM-SAF-022](#MRTM-SAF-022)

**Downlinks:** [MRTM-LGI-003](#MRTM-LGI-003)

### {#MRTM-SRS-016}MRTM-SRS-016 — SRS power events

_Last changed by Masood on 2026-09-27 · `d8b828934348069f5941f24ceae3f1a7718f6a76` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-05)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The software system shall report mains loss, mains restore and battery voltage below 3.4 V within 1 s.

**Rationale**

§5.2.3 risk control (HAZ-003).

**Verification**

Test: integration INT-05.

**Safety**

Class C (IEC 62304 §4.3): a failure of this software system can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (HAZ-001…HAZ-008, severity serious).

**Uplinks:** [MRTM-SAF-005](#MRTM-SAF-005), [MRTM-SAF-008](#MRTM-SAF-008), [MRTM-SYS-023](#MRTM-SYS-023)

**Downlinks:** [MRTM-PWI-001](#MRTM-PWI-001), [MRTM-PWI-002](#MRTM-PWI-002)

### {#MRTM-SRS-017}MRTM-SRS-017 — SRS watchdog service stop

_Last changed by Masood on 2026-09-27 · `d8b828934348069f5941f24ceae3f1a7718f6a76` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-05)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The software system shall stop the watchdog service pulses within 2 s of the alarm function missing its 1 s cycle.

**Rationale**

§5.2.3 risk control: hands the alarm to the backup alarm of the hardware item (HAZ-003, ADR-0013).

**Verification**

Test: integration INT-02.

**Safety**

Class C (IEC 62304 §4.3): a failure of this software system can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (HAZ-001…HAZ-008, severity serious).

**Uplinks:** [MRTM-SAF-010](#MRTM-SAF-010), [MRTM-SAF-009](#MRTM-SAF-009)

**Downlinks:** [MRTM-ALI-004](#MRTM-ALI-004), [MRTM-SVI-001](#MRTM-SVI-001)

### {#MRTM-SRS-018}MRTM-SRS-018 — SRS power-up tests

_Last changed by Masood on 2026-09-27 · `d8b828934348069f5941f24ceae3f1a7718f6a76` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-05)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The software system shall test the buzzer within 5 s and the backup alarm within 15 s of power-up.

**Rationale**

§5.2.3 risk control for a silent annunciator (HAZ-006).

**Verification**

Test: SP-05.

**Safety**

Class C (IEC 62304 §4.3): a failure of this software system can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (HAZ-001…HAZ-008, severity serious).

**Uplinks:** [MRTM-SAF-007](#MRTM-SAF-007), [MRTM-SAF-023](#MRTM-SAF-023)

**Downlinks:** [MRTM-SVI-002](#MRTM-SVI-002)

### {#MRTM-SRS-019}MRTM-SRS-019 — SRS band integrity

_Last changed by Masood on 2026-09-27 · `d8b828934348069f5941f24ceae3f1a7718f6a76` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-05)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

When a stored allowed band fails its CRC-32 check, the software system shall disable that **Allowed Band**.

**Rationale**

§5.2.3 risk control (HAZ-007): no default band in firmware (ADR-0024).

**Verification**

Test: integration INT-03.

**Safety**

Class C (IEC 62304 §4.3): a failure of this software system can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (HAZ-001…HAZ-008, severity serious).

**Uplinks:** [MRTM-SAF-017](#MRTM-SAF-017), [MRTM-SYS-017](#MRTM-SYS-017)

**Downlinks:** [MRTM-SVI-003](#MRTM-SVI-003)

## Sensor item requirement (2)

### {#MRTM-SNI-001}MRTM-SNI-001 — Sensor item conversion start

_Last changed by Masood on 2026-09-27 · `d8b828934348069f5941f24ceae3f1a7718f6a76` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-05)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The sensor item shall start one probe conversion at a period of 2 s and read the scratchpad 750 ms after the start.

**Rationale**

Runs in the sensor task (ADR-0019).

**Verification**

Test: unit tests of sensor_sampler.

**Safety**

Class C (IEC 62304 §4.3): a failure of this software item can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (HAZ-001…HAZ-008, severity serious).

**Uplinks:** [MRTM-SRS-001](#MRTM-SRS-001), [MRTM-SRS-002](#MRTM-SRS-002)

**Downlinks:** [MRTM-SMP-001](#MRTM-SMP-001)

### {#MRTM-SNI-002}MRTM-SNI-002 — Sensor item invalid sample

_Last changed by Masood on 2026-09-27 · `d8b828934348069f5941f24ceae3f1a7718f6a76` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-05)

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

Class C (IEC 62304 §4.3): a failure of this software item can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (HAZ-001…HAZ-008, severity serious).

**Uplinks:** [MRTM-SRS-005](#MRTM-SRS-005)

**Downlinks:** [MRTM-SMP-002](#MRTM-SMP-002)

## Excursion item requirement (3)

### {#MRTM-EXI-001}MRTM-EXI-001 — Excursion item early report

_Last changed by Masood on 2026-09-27 · `d8b828934348069f5941f24ceae3f1a7718f6a76` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-05)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The excursion item shall report the early excursion within the 2 s sample period of the first valid sample outside the allowed band.

**Rationale**

The early tier of the two-tier alarm (ADR-0030).

**Verification**

Test: unit tests of limit_evaluator.

**Safety**

Class C (IEC 62304 §4.3): a failure of this software item can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (HAZ-001…HAZ-008, severity serious).

**Uplinks:** [MRTM-SRS-002](#MRTM-SRS-002)

**Downlinks:** [MRTM-LEV-001](#MRTM-LEV-001)

### {#MRTM-EXI-002}MRTM-EXI-002 — Excursion item confirmation

_Last changed by Masood on 2026-09-27 · `d8b828934348069f5941f24ceae3f1a7718f6a76` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-05)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The excursion item shall report the confirmed excursion at the 31st consecutive valid sample outside the allowed band, 60 s after the first of them.

**Rationale**

Filters door openings (STK-002, A-04).

**Verification**

Test: unit tests of limit_evaluator.

**Safety**

Class C (IEC 62304 §4.3): a failure of this software item can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (HAZ-001…HAZ-008, severity serious).

**Uplinks:** [MRTM-SRS-003](#MRTM-SRS-003)

**Downlinks:** [MRTM-LEV-002](#MRTM-LEV-002)

### {#MRTM-EXI-003}MRTM-EXI-003 — Excursion item end

_Last changed by Masood on 2026-09-27 · `d8b828934348069f5941f24ceae3f1a7718f6a76` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-05)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The excursion item shall report the excursion end at the 31st consecutive valid sample inside the allowed band, 60 s after the first of them.

**Rationale**

Same filter on the way back.

**Verification**

Test: unit tests of limit_evaluator.

**Safety**

Class C (IEC 62304 §4.3): a failure of this software item can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (HAZ-001…HAZ-008, severity serious).

**Uplinks:** [MRTM-SRS-004](#MRTM-SRS-004)

**Downlinks:** [MRTM-LEV-003](#MRTM-LEV-003)

## Alarm item requirement (4)

### {#MRTM-ALI-001}MRTM-ALI-001 — Alarm item early signal

_Last changed by Masood on 2026-09-27 · `d8b828934348069f5941f24ceae3f1a7718f6a76` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-05)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The alarm item shall flash the red indicator at 1 Hz within one 1 s alarm cycle of the early excursion report.

**Rationale**

Low-priority visual signal (run 2 check D-1: colour still to confirm, A-42).

**Verification**

Test: unit tests of alarm_mgr.

**Safety**

Class C (IEC 62304 §4.3): a failure of this software item can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (HAZ-001…HAZ-008, severity serious).

**Uplinks:** [MRTM-SRS-002](#MRTM-SRS-002)

**Downlinks:** [MRTM-AMG-001](#MRTM-AMG-001)

### {#MRTM-ALI-002}MRTM-ALI-002 — Alarm item buzzer on

_Last changed by Masood on 2026-09-27 · `d8b828934348069f5941f24ceae3f1a7718f6a76` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-05)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The alarm item shall switch the buzzer drive on within one 1 s alarm cycle of the confirmed excursion report.

**Rationale**

Alarm task period 1 s (ADR-0019).

**Verification**

Test: unit tests of alarm_mgr.

**Safety**

Class C (IEC 62304 §4.3): a failure of this software item can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (HAZ-001…HAZ-008, severity serious).

**Uplinks:** [MRTM-SRS-006](#MRTM-SRS-006)

**Downlinks:** [MRTM-AMG-002](#MRTM-AMG-002)

### {#MRTM-ALI-003}MRTM-ALI-003 — Alarm item buzzer off

_Last changed by Masood on 2026-09-27 · `d8b828934348069f5941f24ceae3f1a7718f6a76` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-05)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The alarm item shall switch the buzzer drive off within one 1 s alarm cycle of a debounced acknowledge press.

**Rationale**

Audio paused (IEC 60601-1-8).

**Verification**

Test: unit tests of alarm_mgr.

**Safety**

Class C (IEC 62304 §4.3): a failure of this software item can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (HAZ-001…HAZ-008, severity serious).

**Uplinks:** [MRTM-SRS-007](#MRTM-SRS-007)

**Downlinks:** [MRTM-AMG-003](#MRTM-AMG-003)

### {#MRTM-ALI-004}MRTM-ALI-004 — Alarm item heartbeat

_Last changed by Masood on 2026-09-27 · `d8b828934348069f5941f24ceae3f1a7718f6a76` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-05)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The alarm item shall advance its heartbeat counter once per 1 s alarm cycle.

**Rationale**

The supervisor item watches this counter (SRS-017).

**Verification**

Test: unit tests of alarm_mgr.

**Safety**

Class C (IEC 62304 §4.3): a failure of this software item can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (HAZ-001…HAZ-008, severity serious).

**Uplinks:** [MRTM-SRS-017](#MRTM-SRS-017)

**Downlinks:** [MRTM-AMG-004](#MRTM-AMG-004)

## Display item requirement (2)

### {#MRTM-DSI-001}MRTM-DSI-001 — Display item redraw

_Last changed by Masood on 2026-09-27 · `d8b828934348069f5941f24ceae3f1a7718f6a76` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-05)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The display item shall redraw the frame within 1 s of a state change message.

**Rationale**

Display task period (ADR-0019).

**Verification**

Test: unit tests of display_mgr.

**Safety**

Stays class C (§4.3): it carries two risk controls with no other signal — calibration due (SAF-012) and band limits at power-up (SAF-016) (ADR-0034).

**Uplinks:** [MRTM-SRS-009](#MRTM-SRS-009), [MRTM-SRS-011](#MRTM-SRS-011)

**Downlinks:** [MRTM-DMG-001](#MRTM-DMG-001)

### {#MRTM-DSI-002}MRTM-DSI-002 — Display item temperature

_Last changed by Masood on 2026-09-27 · `d8b828934348069f5941f24ceae3f1a7718f6a76` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-05)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The display item shall change the displayed temperature at most once per 10 s, at 0.1 °C resolution.

**Rationale**

Steady digits are easier to read.

**Verification**

Test: unit tests of display_mgr.

**Safety**

Stays class C (§4.3): it carries two risk controls with no other signal — calibration due (SAF-012) and band limits at power-up (SAF-016) (ADR-0034).

**Uplinks:** [MRTM-SRS-010](#MRTM-SRS-010)

**Downlinks:** [MRTM-DMG-002](#MRTM-DMG-002)

## Log item requirement (3)

### {#MRTM-LGI-001}MRTM-LGI-001 — Log item double write

_Last changed by Masood on 2026-09-27 · `d8b828934348069f5941f24ceae3f1a7718f6a76` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-05)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The log item shall write each record with its CRC-32 to 2 separate flash sectors within 1 s of the event.

**Rationale**

Copy A and copy B (ADR-0011).

**Verification**

Test: unit tests of history_ring.

**Safety**

Class C (IEC 62304 §4.3): a failure of this software item can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (HAZ-001…HAZ-008, severity serious).

**Uplinks:** [MRTM-SRS-012](#MRTM-SRS-012)

**Downlinks:** [MRTM-EVL-001](#MRTM-EVL-001), [MRTM-HRG-001](#MRTM-HRG-001)

### {#MRTM-LGI-002}MRTM-LGI-002 — Log item ring

_Last changed by Masood on 2026-09-27 · `d8b828934348069f5941f24ceae3f1a7718f6a76` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-05)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

When the **Event Log** holds 10000 records, the log item shall write each new **Event Record** over the oldest one.

**Rationale**

Ring buffer (ADR-0021).

**Verification**

Test: unit tests of history_ring.

**Safety**

Class C (IEC 62304 §4.3): a failure of this software item can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (HAZ-001…HAZ-008, severity serious).

**Uplinks:** [MRTM-SRS-013](#MRTM-SRS-013)

**Downlinks:** [MRTM-HRG-002](#MRTM-HRG-002)

### {#MRTM-LGI-003}MRTM-LGI-003 — Log item time stamp

_Last changed by Masood on 2026-09-27 · `d8b828934348069f5941f24ceae3f1a7718f6a76` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-05)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The log item shall stamp each record with the UTC second of the real-time clock at the time of the event.

**Rationale**

New in run 5: the SRS time stamp needs an item owner (run 2 carried it on the logging subsystem).

**Verification**

Test: unit tests of event_log.

**Safety**

Class C (IEC 62304 §4.3): a failure of this software item can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (HAZ-001…HAZ-008, severity serious).

**Uplinks:** [MRTM-SRS-015](#MRTM-SRS-015)

**Downlinks:** [MRTM-EVL-002](#MRTM-EVL-002), [MRTM-RTK-001](#MRTM-RTK-001)

## Usb item requirement (2)

### {#MRTM-USI-001}MRTM-USI-001 — USB item read-only volume

_Last changed by Masood on 2026-09-27 · `d8b828934348069f5941f24ceae3f1a7718f6a76` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-05)

**created**

2026-09-27

**safetyClass**

B

**derived**

false

**Description**

The USB item shall present the event log as a read-only mass-storage volume within 30 s of connection.

**Rationale**

Class B item with segregation (ADR-0034, ruling A-48).

**Verification**

Test: unit tests of usb_export.

**Safety**

Class B (IEC 62304 §4.3), one below the software system (C). Its failure can only lose or garble an exported COPY of the history: the log itself, the alarm and the screen do not depend on it. Segregation (§5.3.5, ADR-0034, ruling A-48): (1) read-only accessor, every host write refused (USI-002); (2) own lowest-priority task on core 0, apart from the safety tasks on core 1; (3) owns no data another item reads; (4) task watchdog; (5) CRC-32 on every record read. Weakness: FreeRTOS here gives no memory protection between tasks (A-43, R-19).

**Uplinks:** [MRTM-SRS-014](#MRTM-SRS-014)

**Downlinks:** [MRTM-UXP-001](#MRTM-UXP-001)

### {#MRTM-USI-002}MRTM-USI-002 — USB item write inhibit

_Last changed by Masood on 2026-09-27 · `d8b828934348069f5941f24ceae3f1a7718f6a76` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-05)

**created**

2026-09-27

**safetyClass**

B

**derived**

false

**Description**

When the USB host sends a write request, the USB item shall inhibit the write to the **Event Log**.

**Rationale**

Segregation measure (1) of ADR-0034.

**Verification**

Test: unit tests of usb_export.

**Safety**

Class B (IEC 62304 §4.3), one below the software system (C). Its failure can only lose or garble an exported COPY of the history: the log itself, the alarm and the screen do not depend on it. Segregation (§5.3.5, ADR-0034, ruling A-48): (1) read-only accessor, every host write refused (USI-002); (2) own lowest-priority task on core 0, apart from the safety tasks on core 1; (3) owns no data another item reads; (4) task watchdog; (5) CRC-32 on every record read. Weakness: FreeRTOS here gives no memory protection between tasks (A-43, R-19).

**Uplinks:** [MRTM-SRS-014](#MRTM-SRS-014)

**Downlinks:** [MRTM-UXP-002](#MRTM-UXP-002)

## Power item requirement (2)

### {#MRTM-PWI-001}MRTM-PWI-001 — Power item mains events

_Last changed by Masood on 2026-09-27 · `d8b828934348069f5941f24ceae3f1a7718f6a76` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-05)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The power item shall post the mains-lost and mains-restored signals within 1 s of the mains sense edge.

**Rationale**

Interrupt on the mains-sense line.

**Verification**

Test: unit tests of power_mon.

**Safety**

Class C (IEC 62304 §4.3): a failure of this software item can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (HAZ-001…HAZ-008, severity serious).

**Uplinks:** [MRTM-SRS-016](#MRTM-SRS-016)

**Downlinks:** [MRTM-PMN-001](#MRTM-PMN-001)

### {#MRTM-PWI-002}MRTM-PWI-002 — Power item battery low

_Last changed by Masood on 2026-09-27 · `d8b828934348069f5941f24ceae3f1a7718f6a76` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-05)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The power item shall post the battery-low signal after 2 consecutive battery readings below 3.4 V.

**Rationale**

Two readings filter a load spike.

**Verification**

Test: unit tests of power_mon.

**Safety**

Class C (IEC 62304 §4.3): a failure of this software item can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (HAZ-001…HAZ-008, severity serious).

**Uplinks:** [MRTM-SRS-016](#MRTM-SRS-016)

**Downlinks:** [MRTM-PMN-002](#MRTM-PMN-002)

## Supervisor item requirement (3)

### {#MRTM-SVI-001}MRTM-SVI-001 — Supervisor item pulse stop

_Last changed by Masood on 2026-09-27 · `d8b828934348069f5941f24ceae3f1a7718f6a76` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-05)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The supervisor item shall stop the watchdog service pulses within 2 s of a missed alarm heartbeat.

**Rationale**

Hands over to the backup alarm (HAZ-003).

**Verification**

Test: unit tests of wdt_kicker.

**Safety**

Class C (IEC 62304 §4.3): a failure of this software item can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (HAZ-001…HAZ-008, severity serious).

**Uplinks:** [MRTM-SRS-017](#MRTM-SRS-017)

**Downlinks:** [MRTM-WDK-001](#MRTM-WDK-001)

### {#MRTM-SVI-002}MRTM-SVI-002 — Supervisor item power-up tests

_Last changed by Masood on 2026-09-27 · `d8b828934348069f5941f24ceae3f1a7718f6a76` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-05)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The supervisor item shall run the buzzer test within 5 s and the backup alarm test within 15 s of power-up.

**Rationale**

Self-tests of the two annunciators (HAZ-006).

**Verification**

Test: unit tests of diagnostics.

**Safety**

Class C (IEC 62304 §4.3): a failure of this software item can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (HAZ-001…HAZ-008, severity serious).

**Uplinks:** [MRTM-SRS-018](#MRTM-SRS-018)

**Downlinks:** [MRTM-DGN-001](#MRTM-DGN-001)

### {#MRTM-SVI-003}MRTM-SVI-003 — Supervisor item band check

_Last changed by Masood on 2026-09-27 · `d8b828934348069f5941f24ceae3f1a7718f6a76` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-05)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

When the stored band passes its CRC-32 check, and only then, the supervisor item shall set the **Allowed Band** from it.

**Rationale**

No default band (ADR-0024).

**Verification**

Test: unit tests of config_mgr.

**Safety**

Class C (IEC 62304 §4.3): a failure of this software item can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (HAZ-001…HAZ-008, severity serious).

**Uplinks:** [MRTM-SRS-019](#MRTM-SRS-019)

**Downlinks:** [MRTM-CFG-001](#MRTM-CFG-001)

## Sensor sampler requirement (2)

### {#MRTM-SMP-001}MRTM-SMP-001 — Sampler read contract

_Last changed by Masood on 2026-09-27 · `d8b828934348069f5941f24ceae3f1a7718f6a76` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-05)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

When sensor_sampler_read is called, the sensor sampler unit shall return the sample of the conversion started 750 ms or more before and start the next conversion.

**Rationale**

Contract: 10-src/firmware/components/sensor_sampler/contracts.md.

**Verification**

Test: unit test.

**Safety**

Class C: the class of its item `sensor-item` (IEC 62304 §4.3 — a unit takes its item's class).

**Uplinks:** [MRTM-SNI-001](#MRTM-SNI-001)

### {#MRTM-SMP-002}MRTM-SMP-002 — Sampler invalid flag

_Last changed by Masood on 2026-09-27 · `d8b828934348069f5941f24ceae3f1a7718f6a76` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-05)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The sensor sampler unit shall return a sample marked invalid when the scratchpad CRC-8 differs from byte 8 or the value is outside -30 °C to 50 °C.

**Rationale**

Contract: CRC-8 Dallas/Maxim over bytes 0..7.

**Verification**

Test: unit tests.

**Safety**

Class C: the class of its item `sensor-item` (IEC 62304 §4.3 — a unit takes its item's class).

**Uplinks:** [MRTM-SNI-002](#MRTM-SNI-002)

## Limit evaluator requirement (3)

### {#MRTM-LEV-001}MRTM-LEV-001 — Evaluator early event

_Last changed by Masood on 2026-09-27 · `d8b828934348069f5941f24ceae3f1a7718f6a76` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-05)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The limit evaluator unit shall return the early event from limit_evaluator_step for the first valid sample outside the allowed band.

**Rationale**

Contract: 10-src/firmware/components/limit_evaluator/contracts.md.

**Verification**

Test: unit tests.

**Safety**

Class C: the class of its item `excursion-item` (IEC 62304 §4.3 — a unit takes its item's class).

**Uplinks:** [MRTM-EXI-001](#MRTM-EXI-001)

### {#MRTM-LEV-002}MRTM-LEV-002 — Evaluator confirm event

_Last changed by Masood on 2026-09-27 · `d8b828934348069f5941f24ceae3f1a7718f6a76` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-05)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The limit evaluator unit shall return the confirmed event from limit_evaluator_step at the 31st consecutive valid sample outside the allowed band.

**Rationale**

Contract: counts consecutive samples; an invalid sample resets neither count (A-29).

**Verification**

Test: unit tests.

**Safety**

Class C: the class of its item `excursion-item` (IEC 62304 §4.3 — a unit takes its item's class).

**Uplinks:** [MRTM-EXI-002](#MRTM-EXI-002)

### {#MRTM-LEV-003}MRTM-LEV-003 — Evaluator end event

_Last changed by Masood on 2026-09-27 · `d8b828934348069f5941f24ceae3f1a7718f6a76` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-05)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The limit evaluator unit shall return the end event from limit_evaluator_step at the 31st consecutive valid sample inside the allowed band.

**Rationale**

Contract: the peak travels with the end event.

**Verification**

Test: unit tests.

**Safety**

Class C: the class of its item `excursion-item` (IEC 62304 §4.3 — a unit takes its item's class).

**Uplinks:** [MRTM-EXI-003](#MRTM-EXI-003)

## Alarm mgr requirement (4)

### {#MRTM-AMG-001}MRTM-AMG-001 — Alarm manager early output

_Last changed by Masood on 2026-09-27 · `d8b828934348069f5941f24ceae3f1a7718f6a76` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-05)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

In the early state, the alarm manager unit shall flash the red indicator output at 1 Hz with the buzzer output off.

**Rationale**

Contract: 10-src/firmware/components/alarm_mgr/contracts.md; state machine MrtmSwStates::AlarmStates.

**Verification**

Test: unit tests.

**Safety**

Class C: the class of its item `alarm-item` (IEC 62304 §4.3 — a unit takes its item's class).

**Uplinks:** [MRTM-ALI-001](#MRTM-ALI-001)

### {#MRTM-AMG-002}MRTM-AMG-002 — Alarm manager buzzer on

_Last changed by Masood on 2026-09-27 · `d8b828934348069f5941f24ceae3f1a7718f6a76` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-05)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

On a confirmed excursion input, the alarm manager unit shall set the buzzer output on in the same alarm_mgr_step call.

**Rationale**

Contract: one step per 1 s alarm cycle.

**Verification**

Test: unit tests.

**Safety**

Class C: the class of its item `alarm-item` (IEC 62304 §4.3 — a unit takes its item's class).

**Uplinks:** [MRTM-ALI-002](#MRTM-ALI-002)

### {#MRTM-AMG-003}MRTM-AMG-003 — Alarm manager acknowledge

_Last changed by Masood on 2026-09-27 · `d8b828934348069f5941f24ceae3f1a7718f6a76` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-05)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

On an acknowledge press held for 50 ms, the alarm manager unit shall set the buzzer output off in the same alarm_mgr_step call.

**Rationale**

Contract: 50 ms debounce (IFC-002).

**Verification**

Test: unit tests.

**Safety**

Class C: the class of its item `alarm-item` (IEC 62304 §4.3 — a unit takes its item's class).

**Uplinks:** [MRTM-ALI-003](#MRTM-ALI-003)

### {#MRTM-AMG-004}MRTM-AMG-004 — Alarm manager heartbeat

_Last changed by Masood on 2026-09-27 · `d8b828934348069f5941f24ceae3f1a7718f6a76` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-05)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The alarm manager unit shall add 1 to its heartbeat counter on every alarm_mgr_step call.

**Rationale**

Contract: the counter wraps at 2^32.

**Verification**

Test: unit tests.

**Safety**

Class C: the class of its item `alarm-item` (IEC 62304 §4.3 — a unit takes its item's class).

**Uplinks:** [MRTM-ALI-004](#MRTM-ALI-004)

## Display mgr requirement (2)

### {#MRTM-DMG-001}MRTM-DMG-001 — Display manager messages

_Last changed by Masood on 2026-09-27 · `d8b828934348069f5941f24ceae3f1a7718f6a76` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-05)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The display manager unit shall draw the excursion warning, probe fault, calibration due and log capacity messages on the first display_mgr_tick after display_mgr_update reports them.

**Rationale**

Contract: 10-src/firmware/components/display_mgr/contracts.md (C++ classes, ADR-0022).

**Verification**

Test: unit tests.

**Safety**

Class C: the class of its item `display-item` (IEC 62304 §4.3 — a unit takes its item's class).

**Uplinks:** [MRTM-DSI-001](#MRTM-DSI-001)

### {#MRTM-DMG-002}MRTM-DMG-002 — Display manager digits

_Last changed by Masood on 2026-09-27 · `d8b828934348069f5941f24ceae3f1a7718f6a76` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-05)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The display manager unit shall redraw the temperature digits at most once per 10 s, at 0.1 °C resolution.

**Rationale**

Contract: tenths of a degree in, digits out.

**Verification**

Test: unit test.

**Safety**

Class C: the class of its item `display-item` (IEC 62304 §4.3 — a unit takes its item's class).

**Uplinks:** [MRTM-DSI-002](#MRTM-DSI-002)

## Event log requirement (2)

### {#MRTM-EVL-001}MRTM-EVL-001 — Event log checksum

_Last changed by Masood on 2026-09-27 · `d8b828934348069f5941f24ceae3f1a7718f6a76` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-05)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The event log unit shall compute a CRC-32 over each queued record and hand it to the history ring in the same event_log_step call.

**Rationale**

Contract: 10-src/firmware/components/event_log/contracts.md.

**Verification**

Test: unit test.

**Safety**

Class C: the class of its item `log-item` (IEC 62304 §4.3 — a unit takes its item's class).

**Uplinks:** [MRTM-LGI-001](#MRTM-LGI-001)

### {#MRTM-EVL-002}MRTM-EVL-002 — Event log time stamp

_Last changed by Masood on 2026-09-27 · `d8b828934348069f5941f24ceae3f1a7718f6a76` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-05)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The event log unit shall stamp each record with the UTC second that the RTC clock unit returns at the time of the post.

**Rationale**

Contract: event_log_post reads rtc_clock_now once.

**Verification**

Test: unit test.

**Safety**

Class C: the class of its item `log-item` (IEC 62304 §4.3 — a unit takes its item's class).

**Uplinks:** [MRTM-LGI-003](#MRTM-LGI-003)

## History ring requirement (2)

### {#MRTM-HRG-001}MRTM-HRG-001 — History ring two copies

_Last changed by Masood on 2026-09-27 · `d8b828934348069f5941f24ceae3f1a7718f6a76` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-05)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The history ring unit shall write each appended record to copy A and copy B in 2 separate flash sectors.

**Rationale**

Contract: 10-src/firmware/components/history_ring/contracts.md.

**Verification**

Test: unit test.

**Safety**

Class C: the class of its item `log-item` (IEC 62304 §4.3 — a unit takes its item's class).

**Uplinks:** [MRTM-LGI-001](#MRTM-LGI-001)

### {#MRTM-HRG-002}MRTM-HRG-002 — History ring wrap

_Last changed by Masood on 2026-09-27 · `d8b828934348069f5941f24ceae3f1a7718f6a76` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-05)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

When the ring holds 10000 records, the history ring unit shall write the next record over the oldest one.

**Rationale**

Contract: 79-sector ring is refused at compile time.

**Verification**

Test: unit test.

**Safety**

Class C: the class of its item `log-item` (IEC 62304 §4.3 — a unit takes its item's class).

**Uplinks:** [MRTM-LGI-002](#MRTM-LGI-002)

## Rtc clock requirement (1)

### {#MRTM-RTK-001}MRTM-RTK-001 — RTC clock second

_Last changed by Masood on 2026-09-27 · `d8b828934348069f5941f24ceae3f1a7718f6a76` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-05)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The RTC clock unit shall return the UTC second read from the real-time clock, refreshed once per second.

**Rationale**

Contract: 10-src/firmware/components/rtc_clock/contracts.md.

**Verification**

Test: unit test.

**Safety**

Class C: the class of its item `log-item` (IEC 62304 §4.3 — a unit takes its item's class).

**Uplinks:** [MRTM-LGI-003](#MRTM-LGI-003)

## Usb export requirement (2)

### {#MRTM-UXP-001}MRTM-UXP-001 — USB export read-only file

_Last changed by Masood on 2026-09-27 · `d8b828934348069f5941f24ceae3f1a7718f6a76` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-05)

**created**

2026-09-27

**safetyClass**

B

**derived**

false

**Description**

The USB export unit shall mark the history file read-only in the FAT volume it presents.

**Rationale**

Contract: 10-src/firmware/components/usb_export/contracts.md. Class B (its item's class).

**Verification**

Test: unit test.

**Safety**

Class B: the class of its item `usb-item` (IEC 62304 §4.3 — a unit takes its item's class).

**Uplinks:** [MRTM-USI-001](#MRTM-USI-001)

### {#MRTM-UXP-002}MRTM-UXP-002 — USB export write refusal

_Last changed by Masood on 2026-09-27 · `d8b828934348069f5941f24ceae3f1a7718f6a76` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-05)

**created**

2026-09-27

**safetyClass**

B

**derived**

false

**Description**

The USB export unit shall refuse every write request from the USB host.

**Rationale**

Contract: the write callback returns an error and touches no flash.

**Verification**

Test: unit test.

**Safety**

Class B: the class of its item `usb-item` (IEC 62304 §4.3 — a unit takes its item's class).

**Uplinks:** [MRTM-USI-002](#MRTM-USI-002)

## Power mon requirement (2)

### {#MRTM-PMN-001}MRTM-PMN-001 — Power monitor edge

_Last changed by Masood on 2026-09-27 · `d8b828934348069f5941f24ceae3f1a7718f6a76` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-05)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The power monitor unit shall post the mains-lost or mains-restored event on each mains sense edge it is called with.

**Rationale**

Contract: 10-src/firmware/components/power_mon/contracts.md.

**Verification**

Test: unit test.

**Safety**

Class C: the class of its item `power-item` (IEC 62304 §4.3 — a unit takes its item's class).

**Uplinks:** [MRTM-PWI-001](#MRTM-PWI-001)

### {#MRTM-PMN-002}MRTM-PMN-002 — Power monitor battery

_Last changed by Masood on 2026-09-27 · `d8b828934348069f5941f24ceae3f1a7718f6a76` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-05)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The power monitor unit shall post the battery-low event after 2 consecutive battery readings below 3400 mV.

**Rationale**

Contract: millivolts in, event out.

**Verification**

Test: unit test.

**Safety**

Class C: the class of its item `power-item` (IEC 62304 §4.3 — a unit takes its item's class).

**Uplinks:** [MRTM-PWI-002](#MRTM-PWI-002)

## Wdt kicker requirement (1)

### {#MRTM-WDK-001}MRTM-WDK-001 — Watchdog kicker stop

_Last changed by Masood on 2026-09-27 · `d8b828934348069f5941f24ceae3f1a7718f6a76` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-05)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The watchdog kicker unit shall stop the service pulses when the alarm heartbeat has not changed for 2 s.

**Rationale**

Contract: 10-src/firmware/components/wdt_kicker/contracts.md.

**Verification**

Test: unit test.

**Safety**

Class C: the class of its item `supervisor-item` (IEC 62304 §4.3 — a unit takes its item's class).

**Uplinks:** [MRTM-SVI-001](#MRTM-SVI-001)

## Diagnostics requirement (1)

### {#MRTM-DGN-001}MRTM-DGN-001 — Diagnostics power-up verdict

_Last changed by Masood on 2026-09-27 · `d8b828934348069f5941f24ceae3f1a7718f6a76` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-05)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The diagnostics unit shall fail the power-up test when the buzzer current is not seen within 5 s or the backup alarm is not heard within 15 s.

**Rationale**

Contract: 10-src/firmware/components/diagnostics/contracts.md.

**Verification**

Test: unit tests.

**Safety**

Class C: the class of its item `supervisor-item` (IEC 62304 §4.3 — a unit takes its item's class).

**Uplinks:** [MRTM-SVI-002](#MRTM-SVI-002)

## Config mgr requirement (1)

### {#MRTM-CFG-001}MRTM-CFG-001 — Config manager CRC refusal

_Last changed by Masood on 2026-09-27 · `d8b828934348069f5941f24ceae3f1a7718f6a76` · per git_

**status**

draft

**priority**

medium

**author**

Masood (drafted by Claude, RUN-05)

**created**

2026-09-27

**safetyClass**

C

**derived**

false

**Description**

The configuration manager unit shall return MRTM_ERR_CRC and no band when the stored record fails its CRC-32 check.

**Rationale**

Contract: 10-src/firmware/components/config_mgr/contracts.md.

**Verification**

Test: unit test.

**Safety**

Class C: the class of its item `supervisor-item` (IEC 62304 §4.3 — a unit takes its item's class).

**Uplinks:** [MRTM-SVI-003](#MRTM-SVI-003)
