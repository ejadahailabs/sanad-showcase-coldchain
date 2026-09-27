# ADR-0019 — Task partitioning: six FreeRTOS tasks, the alarm on top

- **Status:** Accepted (DRAFT — needs Masood's review) · **Date:** 2026-09-27 · **Phase:** 7 · **MANUAL** ADR shape (F-09) · IEC 62304 §5.3.1, §5.3.5 (segregation of software items), §5.3.6 · ISO 14971 cl. 7.1
- **Model:** `MrtmSoftware::MrtmFirmware` allocate lines (component → task); views mrtmSwComponents, mrtmSwWiring
- **Requirements:** MRTM-SAF-010, MRTM-SAF-004, MRTM-SYS-001, MRTM-SAF-018, MRTM-PRF-003

## Context
Which job runs in which task decides what can block the alarm. Like lanes on a road: the ambulance gets its own lane.

## Decision
| Task | Priority | Period | Deadline | Core | Components |
|---|---|---|---|---|---|
| alarmTask | 22 (highest) | 1 s | 100 ms | 1 | alarmMgr |
| supervisorTask | 21 | 500 ms | 100 ms | 1 | wdtKicker, diagnostics, configMgr, powerMon |
| sensorTask | 18 | 10 s | 1 s | 1 | sensorSampler, limitEvaluator |
| logTask | 16 | event (queue) | 1 s | 0 | eventLog, historyRing, rtcClock |
| displayTask | 12 | 500 ms | 500 ms | 0 | displayMgr |
| usbTask | 5 | event | 30 s | 0 | usbExport |

- Safety-path tasks (alarm, supervisor, sensor) sit on core 1; slow I/O (flash, I2C screen, USB) on core 0, so a stuck bus cannot starve the alarm.
- Segregation (§5.3.5) is by priority, core and the outside watchdog (ADR-0013): if alarmTask misses its 1 s beat, wdtKicker stops the pulses and the backup alarm sounds within 10 s (MRTM-SAF-009/010).

## Consequences
- limitEvaluator runs in sensorTask, straight after each sample: no queue between sample and judgement.
- Numbers are the design target; Phase 10 measures them (stack high-water marks, worst-case run time).
