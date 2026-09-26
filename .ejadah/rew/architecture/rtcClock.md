---
uses: []
resources:
  memory: "6 KiB stack (shared with the task)"
  cpu_budget: "0.1 %"
  period: "event"
  deadline: "10 ms"
  partition: "logTask"
---

# Real-time clock

- **Software item:** `MrtmSoftware::LogItem` (IEC 62304 §5.3.1, software safety class C)
- **Model element:** `MrtmSoftware::MrtmFirmware` → `rtcClock` (SysML v2, `#Component`)
- **Language:** C (ADR-0022) · **Runs in:** FreeRTOS `logTask` (ADR-0019)
- **Contract (Phase 8):** `10-src/firmware/components/rtc_clock/contracts.md`, `MrtmSwDetail::RtcClockApi`
- **Code:** none yet — Phase 9 adds `code: ["10-src/firmware/components/rtc_clock/**"]`.

Gives UTC seconds from the battery-backed RTC. Reports an oscillator stop at power-up.
