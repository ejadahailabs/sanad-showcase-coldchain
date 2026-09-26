---
uses: [historyRing, rtcClock]
resources:
  memory: "6 KiB stack (shared with the task)"
  cpu_budget: "3 %"
  period: "event"
  deadline: "1 s"
  partition: "logTask"
---

# Event logger

- **Software item:** `MrtmSoftware::LogItem` (IEC 62304 §5.3.1, software safety class C)
- **Model element:** `MrtmSoftware::MrtmFirmware` → `eventLog` (SysML v2, `#Component`)
- **Language:** C (ADR-0022) · **Runs in:** FreeRTOS `logTask` (ADR-0019)
- **Code:** none yet — Phase 9 adds `code:` globs for `10-src/firmware/main/eventLog*`.

Turns events into records, stamps them with UTC time and writes each to both flash sectors within 1 s.
