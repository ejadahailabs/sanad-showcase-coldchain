---
code: ["10-src/firmware/components/wdt_kicker/src/**", "10-src/firmware/components/wdt_kicker/include/**"]
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
- **Contract (Phase 8):** `10-src/firmware/components/wdt_kicker/contracts.md`, `MrtmSwDetail::WdtKickerApi`
- **Code (Phase 9):** `10-src/firmware/components/wdt_kicker/{src,include}` (declared in `code:` above); unit tests in `test/`.

Pulses the outside watchdog only while the alarm heartbeat is 2 s old or newer.
