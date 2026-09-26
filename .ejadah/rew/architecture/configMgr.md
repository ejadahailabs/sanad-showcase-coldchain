---
code: ["10-src/firmware/components/config_mgr/src/**", "10-src/firmware/components/config_mgr/include/**"]
uses: [eventLog]
resources:
  memory: "4 KiB stack (shared with the task)"
  cpu_budget: "0.1 %"
  period: "power-up"
  deadline: "5 s"
  partition: "supervisorTask"
---

# Configuration manager

- **Software item:** `MrtmSoftware::SupervisorItem` (IEC 62304 §5.3.1, software safety class C)
- **Model element:** `MrtmSoftware::MrtmFirmware` → `configMgr` (SysML v2, `#Component`)
- **Language:** C (ADR-0022) · **Runs in:** FreeRTOS `supervisorTask` (ADR-0019)
- **Contract (Phase 8):** `10-src/firmware/components/config_mgr/contracts.md`, `MrtmSwDetail::ConfigMgrApi`
- **Code (Phase 9):** `10-src/firmware/components/config_mgr/{src,include}` (declared in `code:` above); unit tests in `test/`.

Loads the band, probe offset and calibration date from NVS and checks their CRC-32.
