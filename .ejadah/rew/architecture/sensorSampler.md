---
uses: [configMgr, eventLog]
resources:
  memory: "4 KiB stack (shared with the task)"
  cpu_budget: "2 %"
  period: "10 s"
  deadline: "1 s"
  partition: "sensorTask"
---

# Sensor sampler

- **Software item:** `MrtmSoftware::SensorItem` (IEC 62304 §5.3.1, software safety class C)
- **Model element:** `MrtmSoftware::MrtmFirmware` → `sensorSampler` (SysML v2, `#Component`)
- **Language:** C (ADR-0022) · **Runs in:** FreeRTOS `sensorTask` (ADR-0019)
- **Contract (Phase 8):** `10-src/firmware/components/sensor_sampler/contracts.md`, `MrtmSwDetail::SensorSamplerApi`
- **Code:** none yet — Phase 9 adds `code: ["10-src/firmware/components/sensor_sampler/**"]`.

Reads the probe every 10 s over 1-Wire. Checks the CRC and the -30..50 °C range. Declares the probe fault after 30 s with no good sample.
