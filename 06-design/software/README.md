# Software architecture — MRTM monitoring firmware

> **Standard:** IEC 62304 §5.3 (software architectural design), Class C. §5.4 (detailed design) lives in `MrtmSwDetail.sysml` and `10-src/firmware/*/contracts.md` (Phase 8).
> **Status:** DRAFT — needs Masood's review. **MANUAL** prose (F-44): Sanad holds the model, the pictures and the Software Design Description export (13-assessment/sanad-runs/phase-7/software-design-description/); this page only explains them.

## The picture first

| Model file | What it holds | Picture (Sanad view → SVG) |
|---|---|---|
| `MrtmSoftware.sysml` | 8 software items (`#Service`), 12 components (`#Component`), 6 FreeRTOS tasks (`#Thread`), 5 port contracts (`#Interface`), 3 records (`#DataModel`), deployment on the ESP32-S3 (`#Deployment`), 53 satisfy links | `views/rendered/mrtmSwComponents.svg`, `mrtmSwWiring.svg` |
| `MrtmSwStates.sysml` | Alarm state machine (5 states, 10 transitions), system modes (4 states, 5 transitions) | `mrtmAlarmStates.svg`, `mrtmSystemModes.svg` |
| `MrtmSeqExcursion.sysml` | Warm air → alarm within the budget | `mrtmSeqExcursion.svg` |
| `MrtmSeqPowerLoss.sysml` | Mains lost → battery → logged twice | `mrtmSeqPowerLoss.svg` |
| `MrtmSeqProbeFault.sysml` | Probe silent → fault alarm pattern | `mrtmSeqProbeFault.svg` |

Profile: Sanad's recommended software profile, accepted headless (`.ejadah/rew/SoftwareProfile.sysml`), plus three markers this organisation added: `Thread`, `Service`, `DataModel` (F-63).

## Items, components, tasks (IEC 62304 §5.3.1, §5.3.3 class per item)

Think of the firmware as a small hospital ward. Software items are the departments. Components are the staff. Tasks are the shifts that decide who works when.

| Software item (Class C) | Components | Task | Main requirements |
|---|---|---|---|
| SensorItem | sensorSampler | sensorTask (10 s, prio 18) | SYS-001, SYS-012, SAF-003, IFC-001, PRF-001 |
| ExcursionItem | limitEvaluator | sensorTask | SYS-002, SYS-017, SYS-018 |
| AlarmItem | alarmMgr | alarmTask (1 s, prio 22) | SYS-003/004/006/019, PRF-002, SAF-001/002/006/011/014/015/019, IFC-002 |
| DisplayItem | displayMgr (C++) | displayTask (500 ms, prio 12) | SYS-005/007/011/013/022, PRF-004, IFC-004, SAF-012/016/021 |
| LogItem | eventLog, historyRing, rtcClock | logTask (event, prio 16) | SYS-008/009/010/015/020/021/022/023, SAF-018, SAF-022 |
| UsbItem | usbExport | usbTask (event, prio 5) | SYS-014, IFC-003, PRF-003 |
| PowerItem | powerMon | supervisorTask | SAF-005, SAF-008, SYS-016 |
| SupervisorItem | wdtKicker, diagnostics, configMgr | supervisorTask (500 ms, prio 21) | SAF-004, SAF-007, SAF-009, SAF-010, SAF-017, SAF-023 |

Reached by software: 52 of the 54 SYS/SAF/PRF/IFC requirements. Not software: **MRTM-SAF-013** (hold-up capacitor keeps the backup alarm sounding — hardware, Phase 6) and **MRTM-SAF-020** (instructions for use). SYS-016 (switch to battery in 100 ms) is hardware; powerMon only notices and logs it.

## Error-handling strategy
One rule: **when in doubt, make noise.** Like a smoke alarm that beeps when its own battery is low.
1. Every fault becomes an event code (`MrtmSwDetail::ErrorCode`, Phase 8) and a log record.
2. Faults that touch the safety path (probe, buzzer, band CRC, alarm task stall, low battery) end in a sound: the alarm machine's `probeFault` / `buzzerFault` states, or `SystemModes::failSafe`.
3. A stalled alarm task is caught outside the firmware: no heartbeat for 2 s → wdtKicker stops pulsing → backup alarm in ≤ 10 s (ADR-0013, MRTM-SAF-009/010).
4. Bus errors retry once, then recover the bus (I2C reset ≤ 1 s, MRTM-SAF-021), then report.
5. No function hides an error: every C function returns `mrtm_err_t`; callers check it (Phase 8 contracts).

## Diagnostics strategy
- **Power-up (≤ 15 s):** buzzer current test (SAF-007), backup alarm test (SAF-023), band CRC (SAF-017), RTC oscillator flag (SAF-022), band shown 3 s (SAF-016).
- **Running:** buzzer current checked every time it is driven (SAF-014); button stuck 60 s (SAF-019); probe CRC and range every sample (SYS-012, SAF-003); log record CRC on every read (SYS-021); FreeRTOS stack high-water marks logged hourly (Phase 10 evidence).
- **Visible:** every diagnostic result is an event in the history, so the USB export is also the service log.

## Configuration strategy
Two kinds of values, two homes (ADR-0024, Phase 8):
| Kind | Examples | Home | Can change in the field? |
|---|---|---|---|
| Build-time constants | sampling period 10 s, 7 samples, 15 min re-alarm, task priorities, log size | `10-src/config/mrtm_config.h` | No — a new firmware build |
| Technician values | allowed band 2–8 °C, probe offset, calibration date | NVS record `MonitorConfig` with CRC-32 | Yes, over USB by a technician; CRC fail → failSafe (SAF-017) |

## Four blocks
- **Assumptions:** A-26 (hysteresis is in time, not in °C), A-27 (acknowledge button by interrupt), A-28 (two cores used as in ADR-0019).
- **Risks:** R-14 (static-analysis tool not chosen yet), R-15 (the sequence views depend on unique lifeline names, F-67).
- **Open questions:** Q-15 (who may change the allowed band in the field).
- **Trace links:** every component → requirement in `MrtmSoftware.sysml` (53 satisfy links, 52 requirements); component → task and item → ESP32-S3 allocations in the same file; items refine `MrtmPartitions::MonitoringFirmware`.
