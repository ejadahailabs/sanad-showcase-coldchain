---
uses: []
resources:
  memory: "6 KiB stack (shared with the task)"
  cpu_budget: "1 %"
  period: "event"
  deadline: "1 s"
  partition: "logTask"
---

# History ring buffer

- **Software item:** `MrtmSoftware::LogItem` (IEC 62304 §5.3.1, software safety class C)
- **Model element:** `MrtmSoftware::MrtmFirmware` → `historyRing` (SysML v2, `#Component`)
- **Language:** C (ADR-0022) · **Runs in:** FreeRTOS `logTask` (ADR-0019)
- **Contract (Phase 8):** `10-src/firmware/components/history_ring/contracts.md`, `MrtmSwDetail::HistoryRingApi`
- **Code:** none yet — Phase 9 adds `code: ["10-src/firmware/components/history_ring/**"]`.

Holds 10000 records in a ring over two mirrored flash sectors. Checks each record's CRC-32 on read.
