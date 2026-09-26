---
uses: [eventLog, configMgr]
resources:
  memory: "4 KiB stack (shared with the task)"
  cpu_budget: "2 %"
  period: "1 s"
  deadline: "100 ms"
  partition: "alarmTask"
---

# Alarm manager

- **Software item:** `MrtmSoftware::AlarmItem` (IEC 62304 §5.3.1, software safety class C)
- **Model element:** `MrtmSoftware::MrtmFirmware` → `alarmMgr` (SysML v2, `#Component`)
- **Language:** C (ADR-0022) · **Runs in:** FreeRTOS `alarmTask` (ADR-0019)
- **Code:** none yet — Phase 9 adds `code:` globs for `10-src/firmware/main/alarmMgr*`.

Runs the alarm state machine. Drives the buzzer and red light. Checks the buzzer current. Beats the heartbeat every cycle.
