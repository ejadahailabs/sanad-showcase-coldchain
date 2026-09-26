---
uses: []
resources:
  memory: "4 KiB stack (shared with the task)"
  cpu_budget: "0.1 %"
  period: "500 ms"
  deadline: "100 ms"
  partition: "supervisorTask"
---

# Watchdog kicker

- **Software item:** `MrtmSoftware::SupervisorItem` (IEC 62304 §5.3.1, software safety class C)
- **Model element:** `MrtmSoftware::MrtmFirmware` → `wdtKicker` (SysML v2, `#Component`)
- **Language:** C (ADR-0022) · **Runs in:** FreeRTOS `supervisorTask` (ADR-0019)
- **Code:** none yet — Phase 9 adds `code:` globs for `10-src/firmware/main/wdtKicker*`.

Pulses the outside watchdog only while the alarm heartbeat is 2 s old or newer.
