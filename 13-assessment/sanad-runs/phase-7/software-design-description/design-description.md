# Software Design Description

**Export schema:** `sanad/design-description/1`

7 section(s), from medical-refrigerator-temperature-monitor-software at commit `not recorded`, exported 2026-09-27.

## 1. Software architecture

**Objective:** DO-178C §11.10 b, *the description of the software architecture defining the software structure to implement the requirements*, with item i, *descriptions of the software components*; DO-178C Table A-2 objective 3, *software architecture is developed*.

Built from 12 row(s).

### Components

| Component | Title | Owns | May use | Outside uses | Allocated requirements | Low-level | Allocated from model |
|---|---|---|---|---|---|---|---|
| alarmMgr | Alarm manager | declares no code | eventLog, configMgr | none | MRTM-IFC-002, MRTM-PRF-002, MRTM-SAF-001, MRTM-SAF-002, MRTM-SAF-006, MRTM-SAF-011, MRTM-SAF-014, MRTM-SAF-015, MRTM-SAF-019, MRTM-SYS-003, MRTM-SYS-004, MRTM-SYS-006, MRTM-SYS-019 | 9 | none |
| configMgr | Configuration manager | declares no code | eventLog | none | MRTM-SAF-017 | 1 | none |
| diagnostics | Diagnostics | declares no code | alarmMgr, eventLog, configMgr, rtcClock | none | MRTM-SAF-007, MRTM-SAF-023 | 2 | none |
| displayMgr | Display manager | declares no code | alarmMgr, configMgr, historyRing | none | MRTM-IFC-004, MRTM-PRF-004, MRTM-SAF-012, MRTM-SAF-016, MRTM-SAF-021, MRTM-SYS-005, MRTM-SYS-007, MRTM-SYS-011, MRTM-SYS-013, MRTM-SYS-022 | 5 | none |
| eventLog | Event logger | declares no code | historyRing, rtcClock | none | MRTM-SAF-018, MRTM-SYS-008, MRTM-SYS-009, MRTM-SYS-010, MRTM-SYS-023 | 1 | none |
| historyRing | History ring buffer | declares no code | nothing | none | MRTM-SYS-015, MRTM-SYS-021, MRTM-SYS-022 | 0 | none |
| limitEvaluator | Limit evaluator | declares no code | configMgr | none | MRTM-SYS-002, MRTM-SYS-017, MRTM-SYS-018 | 0 | none |
| powerMon | Power monitor | declares no code | eventLog, alarmMgr | none | MRTM-SAF-005, MRTM-SAF-008, MRTM-SYS-016 | 2 | none |
| rtcClock | Real-time clock | declares no code | nothing | none | MRTM-SAF-022, MRTM-SYS-020 | 1 | none |
| sensorSampler | Sensor sampler | declares no code | configMgr, eventLog | none | MRTM-IFC-001, MRTM-PRF-001, MRTM-SAF-003, MRTM-SYS-001, MRTM-SYS-012 | 3 | none |
| usbExport | USB exporter | declares no code | historyRing | none | MRTM-IFC-003, MRTM-PRF-003, MRTM-SYS-014 | 2 | none |
| wdtKicker | Watchdog kicker | declares no code | nothing | none | MRTM-SAF-004, MRTM-SAF-009, MRTM-SAF-010 | 3 | none |

## 2. Interfaces

**Objective:** DO-178C §11.10 c, *the input/output description, for example a data dictionary, both internally and externally throughout the software architecture*.

Built from 49 row(s).

### Interfaces

| Interface | Produced by | Consumed by | Fields | Requirements |
|---|---|---|---|---|
| AnalogSenseWiring | — | — | 0 | none |
| ButtonLine | — | — | 2 | none |
| ButtonWiring | — | — | 0 | none |
| GpioWiring | — | — | 0 | none |
| I2cBus | — | — | 2 | none |
| I2cWiring | — | — | 0 | none |
| OneWireWiring | — | — | 0 | none |
| PowerFeed | — | — | 2 | none |
| ProbeBus | — | — | 2 | none |
| SenseLine | — | — | 2 | none |
| SenseWiring | — | — | 0 | none |
| SignalLine | — | — | 2 | none |
| ThermalContact | — | — | 2 | none |
| UsbLink | — | — | 2 | none |
| ackLine | esp32.ackPin | ackButton.contact | 0 | none |
| airContact | fridge.air | monitor.hardware.probe.air | 0 | none |
| backupBuzzerLine | backupAlarm.alarmOut | buzzer.backupDrive | 0 | none |
| batteryFeed | battery.terminal | powerPath.batteryIn | 0 | none |
| batterySenseLine | battery.terminal | esp32.batterySense | 0 | none |
| buzzerLine | esp32.buzzerPin | buzzer.drive | 0 | none |
| buzzerSenseLine | esp32.buzzerSensePin | buzzer.sense | 0 | none |
| clockLink | esp32.i2c | rtc.i2c | 0 | none |
| displayLink | esp32.i2c | oled.i2c | 0 | none |
| greenLine | esp32.greenPin | greenLed.drive | 0 | none |
| historyLink | monitor.hardware.usb | usbHost.usb | 0 | none |
| holdUpCharge | powerPath.output | holdUpCap.charge | 0 | none |
| holdUpFeed | holdUpCap.terminal | backupAlarm.holdUp | 0 | none |
| mainsFeed | mains.output | monitor.hardware.mains | 0 | none |
| mainsSenseLine | esp32.mainsSensePin | powerPath.mainsOk | 0 | none |
| probeLink | esp32.oneWire | probe.dq | 0 | none |
| redLine | esp32.redPin | redLed.drive | 0 | none |
| supplyFeed | powerPath.output | esp32.supply | 0 | none |
| wdtKickLine | esp32.wdtKickPin | backupAlarm.kick | 0 | none |

### Fields

| Interface | Message | Field | Type | Unit | Range | Data dictionary |
|---|---|---|---|---|---|---|
| ButtonLine | — | button | ~GpioInPort | — | — | not declared |
| ButtonLine | — | reader | GpioInPort | — | — | not declared |
| I2cBus | — | device | ~I2cPort | — | — | not declared |
| I2cBus | — | host | I2cPort | — | — | not declared |
| PowerFeed | — | load | ~PowerPort | — | — | not declared |
| PowerFeed | — | source | PowerPort | — | — | not declared |
| ProbeBus | — | host | OneWirePort | — | — | not declared |
| ProbeBus | — | sensor | ~OneWirePort | — | — | not declared |
| SenseLine | — | reader | GpioInPort | — | — | not declared |
| SenseLine | — | source | ~GpioInPort | — | — | not declared |
| SignalLine | — | driver | GpioOutPort | — | — | not declared |
| SignalLine | — | load | ~GpioOutPort | — | — | not declared |
| ThermalContact | — | air | ThermalPort | — | — | not declared |
| ThermalContact | — | probe | ~ThermalPort | — | — | not declared |
| UsbLink | — | device | UsbPort | — | — | not declared |
| UsbLink | — | host | ~UsbPort | — | — | not declared |

## 3. Data flow and control flow

**Objective:** DO-178C §11.10 d, *the data flow and control flow of the design* — the data items the software carries, and the dependencies between the components that carry them.

Built from 6 row(s).

### Data items

| Data item | Type | Unit | Range | Interfaces | Produced by | Consumed by | Requirements | Status |
|---|---|---|---|---|---|---|---|---|
| Allowed Band Lower Limit (lower limit) | temperature | degC | 2..2 | none | not declared | not declared | none | unused |
| Allowed Band Upper Limit (upper limit) | temperature | degC | 8..8 | none | not declared | not declared | none | unused |
| Event Log Capacity (log capacity) | count | events | 10000..10000 | none | not declared | not declared | MRTM-SYS-015, MRTM-SYS-022 | in use |
| Excursion Confirmation Time (confirmation time) | duration | s | 60..60 | none | not declared | not declared | MRTM-STK-002, MRTM-SYS-002 | in use |
| Measurement Accuracy (accuracy) | temperature | degC | 0..0.5 | none | not declared | not declared | MRTM-MNT-001, MRTM-PRF-001 | in use |
| Sampling Period (sample period) | duration | s | 10..10 | none | not declared | not declared | MRTM-PRF-004, MRTM-SYS-001 | in use |

## 4. Resource limits, scheduling and partitioning

**Objective:** DO-178C §11.10 e, *resource limitations, the strategy for managing each resource and its limitations, the margins*; with item f, *scheduling procedures and inter-processor/task communication mechanisms*, and item h, *partitioning methods*.

Built from 12 row(s).

### Resources

| Component | Memory | CPU budget | Period | Deadline | Partition |
|---|---|---|---|---|---|
| alarmMgr | 4 KiB stack (shared with the task) | 2 % | 1 s | 100 ms | alarmTask |
| configMgr | 4 KiB stack (shared with the task) | 0.1 % | power-up | 5 s | supervisorTask |
| diagnostics | 4 KiB stack (shared with the task) | 1 % | 500 ms | 100 ms | supervisorTask |
| displayMgr | 6 KiB stack (shared with the task) | 8 % | 500 ms | 500 ms | displayTask |
| eventLog | 6 KiB stack (shared with the task) | 3 % | event | 1 s | logTask |
| historyRing | 6 KiB stack (shared with the task) | 1 % | event | 1 s | logTask |
| limitEvaluator | 4 KiB stack (shared with the task) | 1 % | 10 s | 50 ms | sensorTask |
| powerMon | 4 KiB stack (shared with the task) | 0.5 % | 500 ms + interrupt | 1 s | supervisorTask |
| rtcClock | 6 KiB stack (shared with the task) | 0.1 % | event | 10 ms | logTask |
| sensorSampler | 4 KiB stack (shared with the task) | 2 % | 10 s | 1 s | sensorTask |
| usbExport | 8 KiB stack (shared with the task) | 10 % while plugged | event | 30 s | usbTask |
| wdtKicker | 4 KiB stack (shared with the task) | 0.1 % | 500 ms | 100 ms | supervisorTask |

## 5. Low-level requirements and their mapping to code

**Objective:** DO-178C Table A-2 objective 4, *low-level requirements are developed*, and objective 5, *derived low-level requirements are defined and provided to the system processes*; with §11.10 j, *derived requirements resulting from the software design process*.

Built from 76 row(s).

### Low-level Requirements

| Requirement | Level | Refines | Allocated to | Implemented by |
|---|---|---|---|---|
| MRTM-ENV-001 | environmental | MRTM-SYS-016 | battery, batteryFeed | none |
| MRTM-ENV-002 | environmental | MRTM-SYS-001 | esp32, hardware | none |
| MRTM-ENV-003 | environmental | MRTM-SYS-001 | hardware | none |
| MRTM-ENV-004 | environmental | MRTM-SYS-001 | airContact, fridge, probe | none |
| MRTM-IFC-001 | interface | MRTM-SYS-001 | probe, probeLink, sensorSampler | none |
| MRTM-IFC-002 | interface | MRTM-SYS-006 | ackLine, alarmMgr | none |
| MRTM-IFC-003 | interface | MRTM-SYS-014 | esp32, historyLink, usb, usbExport, usbHost, usbService | none |
| MRTM-IFC-004 | interface | MRTM-SYS-005 | displayLink, displayMgr, oled | none |
| MRTM-MNT-001 | maintainability | MRTM-SYS-012 | probe | none |
| MRTM-MNT-002 | maintainability | MRTM-SYS-016 | statusDisplay | none |
| MRTM-MNT-003 | maintainability | MRTM-SYS-001 | selfTest | none |
| MRTM-PRF-001 | performance | MRTM-SYS-001 | probe, sampler, sensorSampler | none |
| MRTM-PRF-002 | performance | MRTM-SYS-003 | alarmManager, alarmMgr | none |
| MRTM-PRF-003 | performance | MRTM-SYS-015 | historyLink, historyServer, usbExport | none |
| MRTM-PRF-004 | performance | MRTM-SYS-011 | displayMgr, statusDisplay | none |
| MRTM-SAF-001 | safety | MRTM-SYS-003 | alarmMgr, buzzer | none |
| MRTM-SAF-002 | safety | MRTM-SYS-012 | alarmManager, alarmMgr, firmware.alarmService | none |
| MRTM-SAF-003 | safety | MRTM-SYS-001 | firmware.sensorService, probeSupervisor, sensorSampler | none |
| MRTM-SAF-004 | safety | MRTM-SYS-001 | firmware, supervisor, watchdog, wdtKicker | none |
| MRTM-SAF-005 | safety | MRTM-SYS-016 | eventLogger, firmware.logService, mains, mainsSenseLine, powerMon | none |
| MRTM-SAF-006 | safety | MRTM-SYS-003 | alarmMgr, firmware, firmware.alarmService, watchdog | none |
| MRTM-SAF-007 | safety | MRTM-SYS-003 | diagnostics, firmware.supervisor, selfTest | none |
| MRTM-SAF-008 | safety | MRTM-SYS-016 | batterySenseLine, powerMon, powerService, powerSupervisor | none |
| MRTM-SAF-009 | safety | MRTM-SYS-003 | backupAlarm, hardware.backupAlarm, hardware.backupBuzzerLine, hardware.wdtKickLine, wdtKicker | none |
| MRTM-SAF-010 | safety | MRTM-SYS-003 | firmware.alarmService, firmware.supervisor, wdtKicker | none |
| MRTM-SAF-011 | safety | MRTM-SYS-012 | alarmMgr, firmware.alarmService | none |
| MRTM-SAF-012 | safety | MRTM-SYS-001 | displayMgr, firmware.displayService | none |
| MRTM-SAF-013 | safety | MRTM-SYS-016 | hardware.backupAlarm, hardware.holdUpCap, holdUpCap | none |
| MRTM-SAF-014 | safety | MRTM-SYS-003 | alarmMgr, buzzer, firmware.alarmService, hardware.buzzerSenseLine | none |
| MRTM-SAF-015 | safety | MRTM-SYS-004 | alarmMgr, firmware.alarmService, hardware.redLine, redLed | none |
| MRTM-SAF-016 | safety | MRTM-SYS-017 | displayMgr, firmware.displayService | none |
| MRTM-SAF-017 | safety | MRTM-SYS-017 | configMgr, firmware.supervisor | none |
| MRTM-SAF-018 | safety | MRTM-SYS-015 | eventLog, firmware.logService | none |
| MRTM-SAF-019 | safety | MRTM-SYS-006 | ackLine, alarmMgr, firmware.alarmService | none |
| MRTM-SAF-020 | safety | MRTM-SYS-001 | none | none |
| MRTM-SAF-021 | safety | MRTM-SYS-005 | displayLink, displayMgr, firmware.displayService | none |
| MRTM-SAF-022 | safety | MRTM-SYS-020 | firmware.logService, hardware.rtc, rtc, rtcClock | none |
| MRTM-SAF-023 | safety | MRTM-SYS-003 | diagnostics, firmware.supervisor, hardware.backupAlarm, hardware.buzzerSenseLine | none |

### Design-to-code Mapping

| Requirement | Refines | Allocated to | File | Symbol | Claimed by | Agreement |
|---|---|---|---|---|---|---|
| MRTM-ENV-001 | MRTM-SYS-016 | battery, batteryFeed | no file claims it | — | — | — |
| MRTM-ENV-002 | MRTM-SYS-001 | esp32, hardware | no file claims it | — | — | — |
| MRTM-ENV-003 | MRTM-SYS-001 | hardware | no file claims it | — | — | — |
| MRTM-ENV-004 | MRTM-SYS-001 | airContact, fridge, probe | no file claims it | — | — | — |
| MRTM-IFC-001 | MRTM-SYS-001 | probe, probeLink, sensorSampler | no file claims it | — | — | — |
| MRTM-IFC-002 | MRTM-SYS-006 | ackLine, alarmMgr | no file claims it | — | — | — |
| MRTM-IFC-003 | MRTM-SYS-014 | esp32, historyLink, usb, usbExport, usbHost, usbService | no file claims it | — | — | — |
| MRTM-IFC-004 | MRTM-SYS-005 | displayLink, displayMgr, oled | no file claims it | — | — | — |
| MRTM-MNT-001 | MRTM-SYS-012 | probe | no file claims it | — | — | — |
| MRTM-MNT-002 | MRTM-SYS-016 | statusDisplay | no file claims it | — | — | — |
| MRTM-MNT-003 | MRTM-SYS-001 | selfTest | no file claims it | — | — | — |
| MRTM-PRF-001 | MRTM-SYS-001 | probe, sampler, sensorSampler | no file claims it | — | — | — |
| MRTM-PRF-002 | MRTM-SYS-003 | alarmManager, alarmMgr | no file claims it | — | — | — |
| MRTM-PRF-003 | MRTM-SYS-015 | historyLink, historyServer, usbExport | no file claims it | — | — | — |
| MRTM-PRF-004 | MRTM-SYS-011 | displayMgr, statusDisplay | no file claims it | — | — | — |
| MRTM-SAF-001 | MRTM-SYS-003 | alarmMgr, buzzer | no file claims it | — | — | — |
| MRTM-SAF-002 | MRTM-SYS-012 | alarmManager, alarmMgr, firmware.alarmService | no file claims it | — | — | — |
| MRTM-SAF-003 | MRTM-SYS-001 | firmware.sensorService, probeSupervisor, sensorSampler | no file claims it | — | — | — |
| MRTM-SAF-004 | MRTM-SYS-001 | firmware, supervisor, watchdog, wdtKicker | no file claims it | — | — | — |
| MRTM-SAF-005 | MRTM-SYS-016 | eventLogger, firmware.logService, mains, mainsSenseLine, powerMon | no file claims it | — | — | — |
| MRTM-SAF-006 | MRTM-SYS-003 | alarmMgr, firmware, firmware.alarmService, watchdog | no file claims it | — | — | — |
| MRTM-SAF-007 | MRTM-SYS-003 | diagnostics, firmware.supervisor, selfTest | no file claims it | — | — | — |
| MRTM-SAF-008 | MRTM-SYS-016 | batterySenseLine, powerMon, powerService, powerSupervisor | no file claims it | — | — | — |
| MRTM-SAF-009 | MRTM-SYS-003 | backupAlarm, hardware.backupAlarm, hardware.backupBuzzerLine, hardware.wdtKickLine, wdtKicker | no file claims it | — | — | — |
| MRTM-SAF-010 | MRTM-SYS-003 | firmware.alarmService, firmware.supervisor, wdtKicker | no file claims it | — | — | — |
| MRTM-SAF-011 | MRTM-SYS-012 | alarmMgr, firmware.alarmService | no file claims it | — | — | — |
| MRTM-SAF-012 | MRTM-SYS-001 | displayMgr, firmware.displayService | no file claims it | — | — | — |
| MRTM-SAF-013 | MRTM-SYS-016 | hardware.backupAlarm, hardware.holdUpCap, holdUpCap | no file claims it | — | — | — |
| MRTM-SAF-014 | MRTM-SYS-003 | alarmMgr, buzzer, firmware.alarmService, hardware.buzzerSenseLine | no file claims it | — | — | — |
| MRTM-SAF-015 | MRTM-SYS-004 | alarmMgr, firmware.alarmService, hardware.redLine, redLed | no file claims it | — | — | — |
| MRTM-SAF-016 | MRTM-SYS-017 | displayMgr, firmware.displayService | no file claims it | — | — | — |
| MRTM-SAF-017 | MRTM-SYS-017 | configMgr, firmware.supervisor | no file claims it | — | — | — |
| MRTM-SAF-018 | MRTM-SYS-015 | eventLog, firmware.logService | no file claims it | — | — | — |
| MRTM-SAF-019 | MRTM-SYS-006 | ackLine, alarmMgr, firmware.alarmService | no file claims it | — | — | — |
| MRTM-SAF-020 | MRTM-SYS-001 | not allocated | no file claims it | — | — | — |
| MRTM-SAF-021 | MRTM-SYS-005 | displayLink, displayMgr, firmware.displayService | no file claims it | — | — | — |
| MRTM-SAF-022 | MRTM-SYS-020 | firmware.logService, hardware.rtc, rtc, rtcClock | no file claims it | — | — | — |
| MRTM-SAF-023 | MRTM-SYS-003 | diagnostics, firmware.supervisor, hardware.backupAlarm, hardware.buzzerSenseLine | no file claims it | — | — | — |

## 6. Design review

**Objective:** DO-178C §6.3.3, *reviews and analyses of the software design* — a, *compliance with the high-level requirements*; b, *accuracy and consistency*; c, *compatibility with the target computer*; d, *verifiability*; e, *conformance to standards*; f, *traceability*; and g, *algorithm aspects*; with DO-178C Table A-4.

Built from 9 row(s).

### Design review

| Review item | Checked by | Result | What was found |
|---|---|---|---|
| Every low-level requirement refines a high-level requirement | orphan | pass | nothing found |
| Interface declarations agree with the data dictionary's declaration of the same term | interface-mismatch | pass | nothing found |
| The design is compatible with the target computer | no automatic check | manual | Do the declared memory, processor share, timing and partition fit the computer this software runs on, with the margin the programme requires? |
| Every low-level requirement is verifiable | no automatic check | manual | Is each low-level requirement stated so that a test can pass or fail it, without a reviewer having to decide what it meant? |
| The code conforms to the dependency rules the architecture declares | forbidden-dependency | pass | nothing found |
| Every component carries a requirement, and every claim is written where the design says | empty-component, implementation-outside-component | pass | nothing found |
| The algorithms are accurate | no automatic check | manual | Is each algorithm correct for the range, precision and behaviour at the boundaries this design requires of it? |
| Every allocation the system model makes lands on a declared component | allocation-target-undeclared | findings | ackButton, ackLine, airContact, alarmManager, alarmService, alarmTask, backupAlarm, battery, batteryFeed, batterySenseLine, board.esp32, buzzer, buzzerLine, clockLink, displayLink, displayService, displayTask, esp32, eventLogger, excursionDetector, excursionService, firmware, firmware.alarmService, firmware.displayService, firmware.excursionService, firmware.logService, firmware.powerService, firmware.sensorService, firmware.supervisor, firmware.usbService, fridge, functions, greenLed, greenLine, hardware, hardware.backupAlarm, hardware.backupBuzzerLine, hardware.buzzerSenseLine, hardware.holdUpCap, hardware.redLine, hardware.rtc, hardware.wdtKickLine, historyLink, historyServer, holdUpCap, logService, logTask, mains, mainsFeed, mainsSenseLine, monitor, oled, powerPath, powerService, powerSupervisor, probe, probeLink, probeSupervisor, redLed, redLine, rtc, sampler, selfTest, sensorService, sensorTask, statusDisplay, supervisor, supervisorTask, supplyFeed, timekeeper, usb, usbHost, usbService, usbTask, watchdog |
| Every declared component owns code the index holds | dangling-component | pass | nothing found |

## 7. Manifest

**Objective:** DO-178C Table A-8 objective 2, *baselines and traceability are established* (§7.2.2) — the configuration identity this document was produced from, and what each of its sections was built from.

Built from 6 row(s).

### Sections

| Section | Built from |
|---|---|
| 1. Software architecture | from 12 row(s) |
| 2. Interfaces | from 49 row(s) |
| 3. Data flow and control flow | from 6 row(s) |
| 4. Resource limits, scheduling and partitioning | from 12 row(s) |
| 5. Low-level requirements and their mapping to code | from 76 row(s) |
| 6. Design review | from 9 row(s) |

- **Repository:** medical-refrigerator-temperature-monitor-software
- **Commit:** `not recorded`
- **Configuration:** `not recorded`
- **Tool version:** `not recorded`
- **Exported:** 2026-09-27
