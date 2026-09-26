---
uses: [eventLog, alarmMgr]
resources:
  memory: "4 KiB stack (shared with the task)"
  cpu_budget: "0.5 %"
  period: "500 ms + interrupt"
  deadline: "1 s"
  partition: "supervisorTask"
---

# Power monitor

- **Software item:** `MrtmSoftware::PowerItem` (IEC 62304 §5.3.1, software safety class C)
- **Model element:** `MrtmSoftware::MrtmFirmware` → `powerMon` (SysML v2, `#Component`)
- **Language:** C (ADR-0022) · **Runs in:** FreeRTOS `supervisorTask` (ADR-0019)
- **Code:** none yet — Phase 9 adds `code:` globs for `10-src/firmware/main/powerMon*`.

Watches mains-sense and battery voltage. Logs power loss and restore. Raises the low-battery alarm.
