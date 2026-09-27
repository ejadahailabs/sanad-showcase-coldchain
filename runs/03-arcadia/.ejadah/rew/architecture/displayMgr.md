---
code: ["10-src/firmware/components/display_mgr/src/**", "10-src/firmware/components/display_mgr/include/**"]
uses: [alarmMgr, configMgr, historyRing, eventLog]
resources:
  memory: "6 KiB stack (shared with the task)"
  cpu_budget: "8 %"
  period: "500 ms"
  deadline: "500 ms"
  partition: "displayTask"
---

# Display manager

- **Software item:** `MrtmSoftware::DisplayItem` (IEC 62304 §5.3.1, software safety class C)
- **Model element:** `MrtmSoftware::MrtmFirmware` → `displayMgr` (SysML v2, `#Component`)
- **Language:** C++ (ADR-0022) · **Runs in:** FreeRTOS `displayTask` (ADR-0019)
- **Contract (Phase 8):** `10-src/firmware/components/display_mgr/contracts.md`, `MrtmSwDetail::DisplayMgrApi`
- **Code (Phase 9):** `10-src/firmware/components/display_mgr/{src,include}` (declared in `code:` above); unit tests in `test/`.

Draws the temperature, warnings and messages on the OLED. Resets the I2C bus after a timeout.
