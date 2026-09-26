---
uses: [alarmMgr, eventLog, configMgr, rtcClock]
resources:
  memory: "4 KiB stack (shared with the task)"
  cpu_budget: "1 %"
  period: "500 ms"
  deadline: "100 ms"
  partition: "supervisorTask"
---

# Diagnostics

- **Software item:** `MrtmSoftware::SupervisorItem` (IEC 62304 §5.3.1, software safety class C)
- **Model element:** `MrtmSoftware::MrtmFirmware` → `diagnostics` (SysML v2, `#Component`)
- **Language:** C (ADR-0022) · **Runs in:** FreeRTOS `supervisorTask` (ADR-0019)
- **Contract (Phase 8):** `10-src/firmware/components/diagnostics/contracts.md`, `MrtmSwDetail::DiagnosticsApi`
- **Code:** none yet — Phase 9 adds `code: ["10-src/firmware/components/diagnostics/**"]`.

Runs the power-up self-tests and the stuck-button check. Reports faults as events.
