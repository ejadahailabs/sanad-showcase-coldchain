---
code: ["10-src/firmware/components/limit_evaluator/src/**", "10-src/firmware/components/limit_evaluator/include/**"]
uses: [configMgr, sensorSampler]
resources:
  memory: "4 KiB stack (shared with the task)"
  cpu_budget: "1 %"
  period: "10 s"
  deadline: "50 ms"
  partition: "sensorTask"
---

# Limit evaluator

- **Software item:** `MrtmSoftware::ExcursionItem` (IEC 62304 §5.3.1, software safety class C)
- **Model element:** `MrtmSoftware::MrtmFirmware` → `limitEvaluator` (SysML v2, `#Component`)
- **Language:** C (ADR-0022) · **Runs in:** FreeRTOS `sensorTask` (ADR-0019)
- **Contract (Phase 8):** `10-src/firmware/components/limit_evaluator/contracts.md`, `MrtmSwDetail::LimitEvaluatorApi`
- **Code (Phase 9):** `10-src/firmware/components/limit_evaluator/{src,include}` (declared in `code:` above); unit tests in `test/`.

Counts 7 samples in a row outside (or back inside) the band. Tracks the peak. Tells the alarm manager.
