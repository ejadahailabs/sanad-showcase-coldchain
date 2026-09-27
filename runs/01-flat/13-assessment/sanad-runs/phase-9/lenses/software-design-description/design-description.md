# Software Design Description

**Export schema:** `sanad/design-description/1`

7 section(s), from medical-refrigerator-temperature-monitor-software at commit `not recorded`, exported not recorded.

## 1. Software architecture

**Objective:** DO-178C §11.10 b, *the description of the software architecture defining the software structure to implement the requirements*, with item i, *descriptions of the software components*; DO-178C Table A-2 objective 3, *software architecture is developed*.

Built from 12 row(s).

### Components

| Component | Title | Owns | May use | Outside uses | Allocated requirements | Low-level | Allocated from model |
|---|---|---|---|---|---|---|---|
| alarmMgr | Alarm manager | 10-src/firmware/components/alarm_mgr/src/**, 10-src/firmware/components/alarm_mgr/include/** — not measured | eventLog, configMgr | none | MRTM-IFC-002, MRTM-PRF-002, MRTM-SAF-001, MRTM-SAF-002, MRTM-SAF-006, MRTM-SAF-008, MRTM-SAF-010, MRTM-SAF-011, MRTM-SAF-014, MRTM-SAF-015, MRTM-SAF-017, MRTM-SAF-019, MRTM-SYS-003, MRTM-SYS-004, MRTM-SYS-006, MRTM-SYS-019 | 12 | none |
| configMgr | Configuration manager | 10-src/firmware/components/config_mgr/src/**, 10-src/firmware/components/config_mgr/include/** — not measured | eventLog | none | MRTM-SAF-017 | 1 | none |
| diagnostics | Diagnostics | 10-src/firmware/components/diagnostics/src/**, 10-src/firmware/components/diagnostics/include/** — not measured | alarmMgr, eventLog, configMgr, rtcClock, wdtKicker | none | MRTM-SAF-007, MRTM-SAF-023 | 2 | none |
| displayMgr | Display manager | 10-src/firmware/components/display_mgr/src/**, 10-src/firmware/components/display_mgr/include/** — not measured | alarmMgr, configMgr, historyRing, eventLog | none | MRTM-IFC-004, MRTM-MNT-002, MRTM-MNT-003, MRTM-PRF-004, MRTM-SAF-012, MRTM-SAF-016, MRTM-SAF-021, MRTM-SYS-005, MRTM-SYS-007, MRTM-SYS-011, MRTM-SYS-013, MRTM-SYS-022 | 7 | none |
| eventLog | Event logger | 10-src/firmware/components/event_log/src/**, 10-src/firmware/components/event_log/include/** — not measured | historyRing, rtcClock | none | MRTM-SAF-018, MRTM-SYS-008, MRTM-SYS-009, MRTM-SYS-010, MRTM-SYS-023 | 1 | none |
| historyRing | History ring buffer | 10-src/firmware/components/history_ring/src/**, 10-src/firmware/components/history_ring/include/** — not measured | eventLog | none | MRTM-SAF-018, MRTM-SYS-015, MRTM-SYS-021, MRTM-SYS-022 | 1 | none |
| limitEvaluator | Limit evaluator | 10-src/firmware/components/limit_evaluator/src/**, 10-src/firmware/components/limit_evaluator/include/** — not measured | configMgr, sensorSampler | none | MRTM-SYS-002, MRTM-SYS-017, MRTM-SYS-018 | 0 | none |
| powerMon | Power monitor | 10-src/firmware/components/power_mon/src/**, 10-src/firmware/components/power_mon/include/** — not measured | eventLog, alarmMgr | none | MRTM-SAF-005, MRTM-SAF-008, MRTM-SYS-016 | 2 | none |
| rtcClock | Real-time clock | 10-src/firmware/components/rtc_clock/src/**, 10-src/firmware/components/rtc_clock/include/** — not measured | eventLog | none | MRTM-SAF-022, MRTM-SYS-020 | 1 | none |
| sensorSampler | Sensor sampler | 10-src/firmware/components/sensor_sampler/src/**, 10-src/firmware/components/sensor_sampler/include/** — not measured | configMgr, eventLog | none | MRTM-IFC-001, MRTM-PRF-001, MRTM-SAF-003, MRTM-SYS-001, MRTM-SYS-012 | 3 | none |
| usbExport | USB exporter | 10-src/firmware/components/usb_export/src/**, 10-src/firmware/components/usb_export/include/** — not measured | historyRing | none | MRTM-IFC-003, MRTM-PRF-003, MRTM-SYS-014 | 2 | none |
| wdtKicker | Watchdog kicker | 10-src/firmware/components/wdt_kicker/src/**, 10-src/firmware/components/wdt_kicker/include/** — not measured | nothing | none | MRTM-SAF-004, MRTM-SAF-009, MRTM-SAF-010 | 3 | none |

## 2. Interfaces

**Objective:** DO-178C §11.10 c, *the input/output description, for example a data dictionary, both internally and externally throughout the software architecture*.

Built from 85 row(s).

### Interfaces

| Interface | Produced by | Consumed by | Fields | Requirements |
|---|---|---|---|---|
| AlarmMgrApi | — | — | 2 | none |
| AnalogSenseWiring | — | — | 0 | none |
| ButtonLine | — | — | 2 | none |
| ButtonWiring | — | — | 0 | none |
| ConfigMgrApi | — | — | 2 | none |
| DiagnosticsApi | — | — | 2 | none |
| DisplayMgrApi | — | — | 2 | none |
| EventLogApi | — | — | 2 | none |
| GpioWiring | — | — | 0 | none |
| HistoryRingApi | — | — | 2 | none |
| I2cBus | — | — | 2 | none |
| I2cWiring | — | — | 0 | none |
| LimitEvaluatorApi | — | — | 2 | none |
| OneWireWiring | — | — | 0 | none |
| PowerFeed | — | — | 2 | none |
| PowerMonApi | — | — | 2 | none |
| ProbeBus | — | — | 2 | none |
| RtcClockApi | — | — | 2 | none |
| SenseLine | — | — | 2 | none |
| SenseWiring | — | — | 0 | none |
| SensorSamplerApi | — | — | 2 | none |
| SignalLine | — | — | 2 | none |
| ThermalContact | — | — | 2 | none |
| UsbExportApi | — | — | 2 | none |
| UsbLink | — | — | 2 | none |
| WdtKickerApi | — | — | 2 | none |
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
| AlarmMgrApi | — | caller | ~UnitPort | — | — | not declared |
| AlarmMgrApi | — | provider | UnitPort | — | — | not declared |
| ButtonLine | — | button | ~GpioInPort | — | — | not declared |
| ButtonLine | — | reader | GpioInPort | — | — | not declared |
| ConfigMgrApi | — | caller | ~UnitPort | — | — | not declared |
| ConfigMgrApi | — | provider | UnitPort | — | — | not declared |
| DiagnosticsApi | — | caller | ~UnitPort | — | — | not declared |
| DiagnosticsApi | — | provider | UnitPort | — | — | not declared |
| DisplayMgrApi | — | caller | ~UnitPort | — | — | not declared |
| DisplayMgrApi | — | provider | UnitPort | — | — | not declared |
| EventLogApi | — | caller | ~UnitPort | — | — | not declared |
| EventLogApi | — | provider | UnitPort | — | — | not declared |
| HistoryRingApi | — | caller | ~UnitPort | — | — | not declared |
| HistoryRingApi | — | provider | UnitPort | — | — | not declared |
| I2cBus | — | device | ~I2cPort | — | — | not declared |
| I2cBus | — | host | I2cPort | — | — | not declared |
| LimitEvaluatorApi | — | caller | ~UnitPort | — | — | not declared |
| LimitEvaluatorApi | — | provider | UnitPort | — | — | not declared |
| PowerFeed | — | load | ~PowerPort | — | — | not declared |
| PowerFeed | — | source | PowerPort | — | — | not declared |
| PowerMonApi | — | caller | ~UnitPort | — | — | not declared |
| PowerMonApi | — | provider | UnitPort | — | — | not declared |
| ProbeBus | — | host | OneWirePort | — | — | not declared |
| ProbeBus | — | sensor | ~OneWirePort | — | — | not declared |
| RtcClockApi | — | caller | ~UnitPort | — | — | not declared |
| RtcClockApi | — | provider | UnitPort | — | — | not declared |
| SenseLine | — | reader | GpioInPort | — | — | not declared |
| SenseLine | — | source | ~GpioInPort | — | — | not declared |
| SensorSamplerApi | — | caller | ~UnitPort | — | — | not declared |
| SensorSamplerApi | — | provider | UnitPort | — | — | not declared |
| SignalLine | — | driver | GpioOutPort | — | — | not declared |
| SignalLine | — | load | ~GpioOutPort | — | — | not declared |
| ThermalContact | — | air | ThermalPort | — | — | not declared |
| ThermalContact | — | probe | ~ThermalPort | — | — | not declared |
| UsbExportApi | — | caller | ~UnitPort | — | — | not declared |
| UsbExportApi | — | provider | UnitPort | — | — | not declared |
| UsbLink | — | device | UsbPort | — | — | not declared |
| UsbLink | — | host | ~UsbPort | — | — | not declared |
| WdtKickerApi | — | caller | ~UnitPort | — | — | not declared |
| WdtKickerApi | — | provider | UnitPort | — | — | not declared |

## 3. Data flow and control flow

**Objective:** DO-178C §11.10 d, *the data flow and control flow of the design* — the data items the software carries, and the dependencies between the components that carry them.

Built from 14 row(s).

### Data items

| Data item | Type | Unit | Range | Interfaces | Produced by | Consumed by | Requirements | Status |
|---|---|---|---|---|---|---|---|---|
| Allowed Band Lower Limit (lower limit) | temperature | degC | 2..2 | none | not declared | not declared | none | unused |
| Allowed Band Upper Limit (upper limit) | temperature | degC | 8..8 | none | not declared | not declared | none | unused |
| Battery Low Threshold | voltage | mV | 3400..3400 | none | not declared | not declared | none | unused |
| Error Code (error, result code) | enumeration | not declared | not declared | none | not declared | not declared | 06-design/software/MrtmSwCodes.sysml | in use |
| Event Kind (event type) | enumeration | not declared | not declared | none | not declared | not declared | 06-design/software/MrtmSwCodes.sysml | in use |
| Event Log Capacity (log capacity) | count | events | 10000..10000 | none | not declared | not declared | MRTM-SYS-015, MRTM-SYS-022 | in use |
| Event Record (log record, history record) | record | bytes | 32..32 | none | not declared | not declared | 06-design/software/MrtmSoftware.sysml, MRTM-SAF-018, MRTM-SYS-021 | in use |
| Excursion Confirmation Time (confirmation time) | duration | s | 60..60 | none | not declared | not declared | MRTM-STK-002, MRTM-SYS-002 | in use |
| Heartbeat Timeout (alarm heartbeat limit) | duration | ms | 2000..2000 | none | not declared | not declared | none | unused |
| Measurement Accuracy (accuracy) | temperature | degC | 0..0.5 | none | not declared | not declared | MRTM-MNT-001, MRTM-PRF-001 | in use |
| Monitor Configuration (config record) | record | not declared | not declared | none | not declared | not declared | 06-design/software/MrtmSoftware.sysml | in use |
| Probe Fault Timeout | duration | s | 30..30 | none | not declared | not declared | none | unused |
| Re-alarm Delay (realarm delay) | duration | min | 15..15 | none | not declared | not declared | none | unused |
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

Built from 102 row(s).

### Low-level Requirements

| Requirement | Level | Refines | Allocated to | Implemented by |
|---|---|---|---|---|
| MRTM-ENV-001 | environmental | MRTM-SYS-016 | battery, batteryFeed | none |
| MRTM-ENV-002 | environmental | MRTM-SYS-001 | esp32, hardware | none |
| MRTM-ENV-003 | environmental | MRTM-SYS-001 | hardware | none |
| MRTM-ENV-004 | environmental | MRTM-SYS-001 | airContact, fridge, probe | none |
| MRTM-IFC-001 | interface | MRTM-SYS-001 | probe, probeLink, sensorSampler, sensorSamplerApi | 10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_init, 10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_read |
| MRTM-IFC-002 | interface | MRTM-SYS-006 | ackLine, alarmMgr, alarmMgrApi | 10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_button_debounced, 10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_button_isr |
| MRTM-IFC-003 | interface | MRTM-SYS-014 | esp32, historyLink, usb, usbExport, usbExportApi, usbHost, usbService | 10-src/firmware/components/usb_export/src/usb_export.c#usb_export_init, 10-src/firmware/components/usb_export/src/usb_export.c#usb_export_read10, 10-src/firmware/components/usb_export/src/usb_export.c#usb_export_write10 |
| MRTM-IFC-004 | interface | MRTM-SYS-005 | displayLink, displayMgr, displayMgrApi, oled, screen | 10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw |
| MRTM-MNT-001 | maintainability | MRTM-SYS-012 | probe | none |
| MRTM-MNT-002 | maintainability | MRTM-SYS-016 | displayMgr, statusDisplay | 10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw, 10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step |
| MRTM-MNT-003 | maintainability | MRTM-SYS-001 | displayMgr, selfTest | 10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw, 10-src/firmware/components/display_mgr/src/display_mgr.cpp#renderFrame, 10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_power_up |
| MRTM-PRF-001 | performance | MRTM-SYS-001 | probe, sampler, sensorSampler, sensorSamplerApi | 10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_to_tenths |
| MRTM-PRF-002 | performance | MRTM-SYS-003 | alarmManager, alarmMgr, alarmMgrApi | 10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step |
| MRTM-PRF-003 | performance | MRTM-SYS-015 | historyLink, historyServer, usbExport, usbExportApi | 10-src/firmware/components/usb_export/src/usb_export.c#usb_export_read10 |
| MRTM-PRF-004 | performance | MRTM-SYS-011 | displayMgr, displayMgrApi, statusDisplay | 10-src/firmware/components/display_mgr/src/display_mgr.cpp#display_mgr_tick, 10-src/firmware/components/display_mgr/src/display_mgr.cpp#renderFrame |
| MRTM-SAF-001 | safety | MRTM-SYS-003 | alarmMgr, alarmMgrApi, buzzer | none |
| MRTM-SAF-002 | safety | MRTM-SYS-012 | alarmManager, alarmMgr, alarmMgrApi, firmware.alarmService | 10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step, 10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#take, 10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step |
| MRTM-SAF-003 | safety | MRTM-SYS-001 | firmware.sensorService, probeSupervisor, sensorSampler, sensorSamplerApi | 10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_probe_fault, 10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_read |
| MRTM-SAF-004 | safety | MRTM-SYS-001 | firmware, supervisor, watchdog, wdtKicker, wdtKickerApi | 10-src/firmware/components/wdt_kicker/src/wdt_kicker.c#wdt_kicker_init |
| MRTM-SAF-005 | safety | MRTM-SYS-016 | eventLogger, firmware.logService, mains, mainsSenseLine, powerMon, powerMonApi | 10-src/firmware/components/power_mon/src/power_mon.c#power_mon_isr |
| MRTM-SAF-006 | safety | MRTM-SYS-003 | alarmMgr, alarmMgrApi, firmware, firmware.alarmService, watchdog | 10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_init, 10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_power_up |
| MRTM-SAF-007 | safety | MRTM-SYS-003 | diagnostics, diagnosticsApi, firmware.supervisor, selfTest | 10-src/firmware/components/diagnostics/src/diagnostics.c#diagnostics_power_up |
| MRTM-SAF-008 | safety | MRTM-SYS-016 | alarmMgr, batterySenseLine, powerMon, powerMonApi, powerService, powerSupervisor | 10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step, 10-src/firmware/components/power_mon/src/power_mon.c#power_mon_step |
| MRTM-SAF-009 | safety | MRTM-SYS-003 | backupAlarm, hardware.backupAlarm, hardware.backupBuzzerLine, hardware.wdtKickLine, wdtKicker, wdtKickerApi | 10-src/firmware/components/wdt_kicker/src/wdt_kicker.c#wdt_kicker_step |
| MRTM-SAF-010 | safety | MRTM-SYS-003 | alarmMgr, firmware.alarmService, firmware.supervisor, wdtKicker, wdtKickerApi | 10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_heartbeat, 10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step, 10-src/firmware/components/wdt_kicker/src/wdt_kicker.c#wdt_kicker_step |
| MRTM-SAF-011 | safety | MRTM-SYS-012 | alarmMgr, alarmMgrApi, firmware.alarmService | 10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step |
| MRTM-SAF-012 | safety | MRTM-SYS-001 | displayMgr, displayMgrApi, firmware.displayService | 10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw, 10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step |
| MRTM-SAF-013 | safety | MRTM-SYS-016 | hardware.backupAlarm, hardware.holdUpCap, holdUpCap | none |
| MRTM-SAF-014 | safety | MRTM-SYS-003 | alarmMgr, alarmMgrApi, buzzer, firmware.alarmService, hardware.buzzerSenseLine | 10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step |
| MRTM-SAF-015 | safety | MRTM-SYS-004 | alarmMgr, alarmMgrApi, firmware.alarmService, hardware.redLine, redLed | 10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step |
| MRTM-SAF-016 | safety | MRTM-SYS-017 | displayMgr, displayMgrApi, firmware.displayService | 10-src/firmware/components/display_mgr/src/display_mgr.cpp#display_mgr_init, 10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw, 10-src/firmware/components/display_mgr/src/display_mgr.cpp#renderFrame, 10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_power_up |
| MRTM-SAF-017 | safety | MRTM-SYS-017 | alarmMgr, configMgr, configMgrApi, firmware.supervisor | 10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step, 10-src/firmware/components/config_mgr/src/config_mgr.c#config_mgr_load, 10-src/firmware/components/config_mgr/src/config_mgr.c#config_mgr_store, 10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_power_up, 10-src/firmware/components/mrtm_common/src/mrtm_crc.c#mrtm_crc32 |
| MRTM-SAF-018 | safety | MRTM-SYS-015 | eventLog, eventLogApi, firmware.logService, historyRing | 10-src/firmware/components/event_log/src/event_log.c#event_log_step, 10-src/firmware/components/history_ring/src/history_ring.c#history_ring_append |
| MRTM-SAF-019 | safety | MRTM-SYS-006 | ackLine, alarmMgr, alarmMgrApi, firmware.alarmService | 10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_button_debounced, 10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step |
| MRTM-SAF-020 | safety | MRTM-SYS-001 | none | none |
| MRTM-SAF-021 | safety | MRTM-SYS-005 | displayLink, displayMgr, displayMgrApi, firmware.displayService, screen | 10-src/firmware/components/display_mgr/src/display_mgr.cpp#recoverBus |
| MRTM-SAF-022 | safety | MRTM-SYS-020 | firmware.logService, hardware.rtc, rtc, rtcClock, rtcClockApi | 10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_power_up, 10-src/firmware/components/rtc_clock/src/rtc_clock.c#rtc_clock_init |
| MRTM-SAF-023 | safety | MRTM-SYS-003 | diagnostics, diagnosticsApi, firmware.supervisor, hardware.backupAlarm, hardware.buzzerSenseLine | 10-src/firmware/components/diagnostics/src/diagnostics.c#diagnostics_power_up |

### Design-to-code Mapping

| Requirement | Refines | Allocated to | File | Symbol | Claimed by | Agreement |
|---|---|---|---|---|---|---|
| MRTM-ENV-001 | MRTM-SYS-016 | battery, batteryFeed | no file claims it | — | — | — |
| MRTM-ENV-002 | MRTM-SYS-001 | esp32, hardware | no file claims it | — | — | — |
| MRTM-ENV-003 | MRTM-SYS-001 | hardware | no file claims it | — | — | — |
| MRTM-ENV-004 | MRTM-SYS-001 | airContact, fridge, probe | no file claims it | — | — | — |
| MRTM-IFC-001 | MRTM-SYS-001 | probe, probeLink, sensorSampler, sensorSamplerApi | 10-src/firmware/components/sensor_sampler/src/sensor_sampler.c | sensor_sampler_init | marker | ok |
| MRTM-IFC-001 | MRTM-SYS-001 | probe, probeLink, sensorSampler, sensorSamplerApi | 10-src/firmware/components/sensor_sampler/src/sensor_sampler.c | sensor_sampler_read | marker | ok |
| MRTM-IFC-002 | MRTM-SYS-006 | ackLine, alarmMgr, alarmMgrApi | 10-src/firmware/components/alarm_mgr/src/alarm_mgr.c | alarm_mgr_button_debounced | marker | ok |
| MRTM-IFC-002 | MRTM-SYS-006 | ackLine, alarmMgr, alarmMgrApi | 10-src/firmware/components/alarm_mgr/src/alarm_mgr.c | alarm_mgr_button_isr | marker | ok |
| MRTM-IFC-003 | MRTM-SYS-014 | esp32, historyLink, usb, usbExport, usbExportApi, usbHost, usbService | 10-src/firmware/components/usb_export/src/usb_export.c | usb_export_init | marker | ok |
| MRTM-IFC-003 | MRTM-SYS-014 | esp32, historyLink, usb, usbExport, usbExportApi, usbHost, usbService | 10-src/firmware/components/usb_export/src/usb_export.c | usb_export_read10 | marker | ok |
| MRTM-IFC-003 | MRTM-SYS-014 | esp32, historyLink, usb, usbExport, usbExportApi, usbHost, usbService | 10-src/firmware/components/usb_export/src/usb_export.c | usb_export_write10 | marker | ok |
| MRTM-IFC-004 | MRTM-SYS-005 | displayLink, displayMgr, displayMgrApi, oled, screen | 10-src/firmware/components/display_mgr/src/display_mgr.cpp | draw | marker | ok |
| MRTM-MNT-001 | MRTM-SYS-012 | probe | no file claims it | — | — | — |
| MRTM-MNT-002 | MRTM-SYS-016 | displayMgr, statusDisplay | 10-src/firmware/components/display_mgr/src/display_mgr.cpp | draw | marker | ok |
| MRTM-MNT-002 | MRTM-SYS-016 | displayMgr, statusDisplay | 10-src/firmware/components/mrtm_app/src/mrtm_app.c | app_supervisor_step | marker | ok |
| MRTM-MNT-003 | MRTM-SYS-001 | displayMgr, selfTest | 10-src/firmware/components/display_mgr/src/display_mgr.cpp | draw | marker | ok |
| MRTM-MNT-003 | MRTM-SYS-001 | displayMgr, selfTest | 10-src/firmware/components/display_mgr/src/display_mgr.cpp | renderFrame | marker | ok |
| MRTM-MNT-003 | MRTM-SYS-001 | displayMgr, selfTest | 10-src/firmware/components/mrtm_app/src/mrtm_app.c | app_power_up | marker | ok |
| MRTM-PRF-001 | MRTM-SYS-001 | probe, sampler, sensorSampler, sensorSamplerApi | 10-src/firmware/components/sensor_sampler/src/sensor_sampler.c | sensor_sampler_to_tenths | marker | ok |
| MRTM-PRF-002 | MRTM-SYS-003 | alarmManager, alarmMgr, alarmMgrApi | 10-src/firmware/components/alarm_mgr/src/alarm_mgr.c | alarm_mgr_step | marker | ok |
| MRTM-PRF-003 | MRTM-SYS-015 | historyLink, historyServer, usbExport, usbExportApi | 10-src/firmware/components/usb_export/src/usb_export.c | usb_export_read10 | marker | ok |
| MRTM-PRF-004 | MRTM-SYS-011 | displayMgr, displayMgrApi, statusDisplay | 10-src/firmware/components/display_mgr/src/display_mgr.cpp | display_mgr_tick | marker | ok |
| MRTM-PRF-004 | MRTM-SYS-011 | displayMgr, displayMgrApi, statusDisplay | 10-src/firmware/components/display_mgr/src/display_mgr.cpp | renderFrame | marker | ok |
| MRTM-SAF-001 | MRTM-SYS-003 | alarmMgr, alarmMgrApi, buzzer | no file claims it | — | — | — |
| MRTM-SAF-002 | MRTM-SYS-012 | alarmManager, alarmMgr, alarmMgrApi, firmware.alarmService | 10-src/firmware/components/alarm_mgr/src/alarm_mgr.c | alarm_mgr_step | marker | ok |
| MRTM-SAF-002 | MRTM-SYS-012 | alarmManager, alarmMgr, alarmMgrApi, firmware.alarmService | 10-src/firmware/components/alarm_mgr/src/alarm_mgr.c | take | marker | ok |
| MRTM-SAF-002 | MRTM-SYS-012 | alarmManager, alarmMgr, alarmMgrApi, firmware.alarmService | 10-src/firmware/components/mrtm_app/src/mrtm_app.c | app_sensor_step | marker | ok |
| MRTM-SAF-003 | MRTM-SYS-001 | firmware.sensorService, probeSupervisor, sensorSampler, sensorSamplerApi | 10-src/firmware/components/sensor_sampler/src/sensor_sampler.c | sensor_sampler_probe_fault | marker | ok |
| MRTM-SAF-003 | MRTM-SYS-001 | firmware.sensorService, probeSupervisor, sensorSampler, sensorSamplerApi | 10-src/firmware/components/sensor_sampler/src/sensor_sampler.c | sensor_sampler_read | marker | ok |
| MRTM-SAF-004 | MRTM-SYS-001 | firmware, supervisor, watchdog, wdtKicker, wdtKickerApi | 10-src/firmware/components/wdt_kicker/src/wdt_kicker.c | wdt_kicker_init | marker | ok |
| MRTM-SAF-005 | MRTM-SYS-016 | eventLogger, firmware.logService, mains, mainsSenseLine, powerMon, powerMonApi | 10-src/firmware/components/power_mon/src/power_mon.c | power_mon_isr | marker | ok |
| MRTM-SAF-006 | MRTM-SYS-003 | alarmMgr, alarmMgrApi, firmware, firmware.alarmService, watchdog | 10-src/firmware/components/alarm_mgr/src/alarm_mgr.c | alarm_mgr_init | marker | ok |
| MRTM-SAF-006 | MRTM-SYS-003 | alarmMgr, alarmMgrApi, firmware, firmware.alarmService, watchdog | 10-src/firmware/components/mrtm_app/src/mrtm_app.c | app_power_up | marker | ok |
| MRTM-SAF-007 | MRTM-SYS-003 | diagnostics, diagnosticsApi, firmware.supervisor, selfTest | 10-src/firmware/components/diagnostics/src/diagnostics.c | diagnostics_power_up | marker | ok |
| MRTM-SAF-008 | MRTM-SYS-016 | alarmMgr, batterySenseLine, powerMon, powerMonApi, powerService, powerSupervisor | 10-src/firmware/components/alarm_mgr/src/alarm_mgr.c | alarm_mgr_step | marker | ok |
| MRTM-SAF-008 | MRTM-SYS-016 | alarmMgr, batterySenseLine, powerMon, powerMonApi, powerService, powerSupervisor | 10-src/firmware/components/power_mon/src/power_mon.c | power_mon_step | marker | ok |
| MRTM-SAF-009 | MRTM-SYS-003 | backupAlarm, hardware.backupAlarm, hardware.backupBuzzerLine, hardware.wdtKickLine, wdtKicker, wdtKickerApi | 10-src/firmware/components/wdt_kicker/src/wdt_kicker.c | wdt_kicker_step | marker | ok |
| MRTM-SAF-010 | MRTM-SYS-003 | alarmMgr, firmware.alarmService, firmware.supervisor, wdtKicker, wdtKickerApi | 10-src/firmware/components/alarm_mgr/src/alarm_mgr.c | alarm_mgr_heartbeat | marker | ok |
| MRTM-SAF-010 | MRTM-SYS-003 | alarmMgr, firmware.alarmService, firmware.supervisor, wdtKicker, wdtKickerApi | 10-src/firmware/components/mrtm_app/src/mrtm_app.c | app_supervisor_step | marker | ok |
| MRTM-SAF-010 | MRTM-SYS-003 | alarmMgr, firmware.alarmService, firmware.supervisor, wdtKicker, wdtKickerApi | 10-src/firmware/components/wdt_kicker/src/wdt_kicker.c | wdt_kicker_step | marker | ok |
| MRTM-SAF-011 | MRTM-SYS-012 | alarmMgr, alarmMgrApi, firmware.alarmService | 10-src/firmware/components/alarm_mgr/src/alarm_mgr.c | alarm_mgr_step | marker | ok |
| MRTM-SAF-012 | MRTM-SYS-001 | displayMgr, displayMgrApi, firmware.displayService | 10-src/firmware/components/display_mgr/src/display_mgr.cpp | draw | marker | ok |
| MRTM-SAF-012 | MRTM-SYS-001 | displayMgr, displayMgrApi, firmware.displayService | 10-src/firmware/components/mrtm_app/src/mrtm_app.c | app_supervisor_step | marker | ok |
| MRTM-SAF-013 | MRTM-SYS-016 | hardware.backupAlarm, hardware.holdUpCap, holdUpCap | no file claims it | — | — | — |
| MRTM-SAF-014 | MRTM-SYS-003 | alarmMgr, alarmMgrApi, buzzer, firmware.alarmService, hardware.buzzerSenseLine | 10-src/firmware/components/alarm_mgr/src/alarm_mgr.c | alarm_mgr_step | marker | ok |
| MRTM-SAF-015 | MRTM-SYS-004 | alarmMgr, alarmMgrApi, firmware.alarmService, hardware.redLine, redLed | 10-src/firmware/components/alarm_mgr/src/alarm_mgr.c | alarm_mgr_step | marker | ok |
| MRTM-SAF-016 | MRTM-SYS-017 | displayMgr, displayMgrApi, firmware.displayService | 10-src/firmware/components/display_mgr/src/display_mgr.cpp | display_mgr_init | marker | ok |
| MRTM-SAF-016 | MRTM-SYS-017 | displayMgr, displayMgrApi, firmware.displayService | 10-src/firmware/components/display_mgr/src/display_mgr.cpp | draw | marker | ok |
| MRTM-SAF-016 | MRTM-SYS-017 | displayMgr, displayMgrApi, firmware.displayService | 10-src/firmware/components/display_mgr/src/display_mgr.cpp | renderFrame | marker | ok |
| MRTM-SAF-016 | MRTM-SYS-017 | displayMgr, displayMgrApi, firmware.displayService | 10-src/firmware/components/mrtm_app/src/mrtm_app.c | app_power_up | marker | ok |
| MRTM-SAF-017 | MRTM-SYS-017 | alarmMgr, configMgr, configMgrApi, firmware.supervisor | 10-src/firmware/components/alarm_mgr/src/alarm_mgr.c | alarm_mgr_step | marker | ok |
| MRTM-SAF-017 | MRTM-SYS-017 | alarmMgr, configMgr, configMgrApi, firmware.supervisor | 10-src/firmware/components/config_mgr/src/config_mgr.c | config_mgr_load | marker | ok |
| MRTM-SAF-017 | MRTM-SYS-017 | alarmMgr, configMgr, configMgrApi, firmware.supervisor | 10-src/firmware/components/config_mgr/src/config_mgr.c | config_mgr_store | marker | ok |
| MRTM-SAF-017 | MRTM-SYS-017 | alarmMgr, configMgr, configMgrApi, firmware.supervisor | 10-src/firmware/components/mrtm_app/src/mrtm_app.c | app_power_up | marker | ok |
| MRTM-SAF-017 | MRTM-SYS-017 | alarmMgr, configMgr, configMgrApi, firmware.supervisor | 10-src/firmware/components/mrtm_common/src/mrtm_crc.c | mrtm_crc32 | marker | ok |
| MRTM-SAF-018 | MRTM-SYS-015 | eventLog, eventLogApi, firmware.logService, historyRing | 10-src/firmware/components/event_log/src/event_log.c | event_log_step | marker | ok |
| MRTM-SAF-018 | MRTM-SYS-015 | eventLog, eventLogApi, firmware.logService, historyRing | 10-src/firmware/components/history_ring/src/history_ring.c | history_ring_append | marker | ok |
| MRTM-SAF-019 | MRTM-SYS-006 | ackLine, alarmMgr, alarmMgrApi, firmware.alarmService | 10-src/firmware/components/alarm_mgr/src/alarm_mgr.c | alarm_mgr_button_debounced | marker | ok |
| MRTM-SAF-019 | MRTM-SYS-006 | ackLine, alarmMgr, alarmMgrApi, firmware.alarmService | 10-src/firmware/components/alarm_mgr/src/alarm_mgr.c | alarm_mgr_step | marker | ok |
| MRTM-SAF-020 | MRTM-SYS-001 | not allocated | no file claims it | — | — | — |
| MRTM-SAF-021 | MRTM-SYS-005 | displayLink, displayMgr, displayMgrApi, firmware.displayService, screen | 10-src/firmware/components/display_mgr/src/display_mgr.cpp | recoverBus | marker | ok |
| MRTM-SAF-022 | MRTM-SYS-020 | firmware.logService, hardware.rtc, rtc, rtcClock, rtcClockApi | 10-src/firmware/components/mrtm_app/src/mrtm_app.c | app_power_up | marker | ok |
| MRTM-SAF-022 | MRTM-SYS-020 | firmware.logService, hardware.rtc, rtc, rtcClock, rtcClockApi | 10-src/firmware/components/rtc_clock/src/rtc_clock.c | rtc_clock_init | marker | ok |
| MRTM-SAF-023 | MRTM-SYS-003 | diagnostics, diagnosticsApi, firmware.supervisor, hardware.backupAlarm, hardware.buzzerSenseLine | 10-src/firmware/components/diagnostics/src/diagnostics.c | diagnostics_power_up | marker | ok |

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
| Every allocation the system model makes lands on a declared component | allocation-target-undeclared | findings | ackButton, ackLine, airContact, alarmManager, alarmMgrApi, alarmService, alarmTask, backupAlarm, battery, batteryFeed, batterySenseLine, board.esp32, buzzer, buzzerLine, clockLink, configMgrApi, diagnosticsApi, displayLink, displayMgrApi, displayService, displayTask, esp32, eventLogApi, eventLogger, excursionDetector, excursionService, firmware, firmware.alarmService, firmware.displayService, firmware.excursionService, firmware.logService, firmware.powerService, firmware.sensorService, firmware.supervisor, firmware.usbService, fridge, functions, greenLed, greenLine, hardware, hardware.backupAlarm, hardware.backupBuzzerLine, hardware.buzzerSenseLine, hardware.holdUpCap, hardware.redLine, hardware.rtc, hardware.wdtKickLine, historyLink, historyRingApi, historyServer, holdUpCap, limitEvaluatorApi, logService, logTask, mains, mainsFeed, mainsSenseLine, monitor, oled, powerMonApi, powerPath, powerService, powerSupervisor, probe, probeLink, probeSupervisor, redLed, redLine, rtc, rtcClockApi, sampler, screen, selfTest, sensorSamplerApi, sensorService, sensorTask, statusDisplay, supervisor, supervisorTask, supplyFeed, timekeeper, usb, usbExportApi, usbHost, usbService, usbTask, watchdog, wdtKickerApi |
| Every declared component owns code the index holds | dangling-component | pass | nothing found |

## 7. Manifest

**Objective:** DO-178C Table A-8 objective 2, *baselines and traceability are established* (§7.2.2) — the configuration identity this document was produced from, and what each of its sections was built from.

Built from 6 row(s).

### Sections

| Section | Built from |
|---|---|
| 1. Software architecture | from 12 row(s) |
| 2. Interfaces | from 85 row(s) |
| 3. Data flow and control flow | from 14 row(s) |
| 4. Resource limits, scheduling and partitioning | from 12 row(s) |
| 5. Low-level requirements and their mapping to code | from 102 row(s) |
| 6. Design review | from 9 row(s) |

- **Repository:** medical-refrigerator-temperature-monitor-software
- **Commit:** `not recorded`
- **Configuration:** `not recorded`
- **Tool version:** `not recorded`
- **Exported:** not recorded
