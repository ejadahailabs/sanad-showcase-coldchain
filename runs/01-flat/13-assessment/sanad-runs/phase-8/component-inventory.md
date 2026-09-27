# Component Inventory

**Export schema:** `sanad/component-inventory/1`

12 declared component(s).

| Component | Title | Owns | May use | Outside uses | Allocated requirements | Low-level | Allocated from model |
|---|---|---|---|---|---|---|---|
| `alarmMgr` | Alarm manager | declares no code | `eventLog`, `configMgr` | none | `MRTM-IFC-002`, `MRTM-PRF-002`, `MRTM-SAF-001`, `MRTM-SAF-002`, `MRTM-SAF-006`, `MRTM-SAF-011`, `MRTM-SAF-014`, `MRTM-SAF-015`, `MRTM-SAF-019`, `MRTM-SYS-003`, `MRTM-SYS-004`, `MRTM-SYS-006`, `MRTM-SYS-019` | 9 | none |
| `configMgr` | Configuration manager | declares no code | `eventLog` | none | `MRTM-SAF-017` | 1 | none |
| `diagnostics` | Diagnostics | declares no code | `alarmMgr`, `eventLog`, `configMgr`, `rtcClock` | none | `MRTM-SAF-007`, `MRTM-SAF-023` | 2 | none |
| `displayMgr` | Display manager | declares no code | `alarmMgr`, `configMgr`, `historyRing` | none | `MRTM-IFC-004`, `MRTM-PRF-004`, `MRTM-SAF-012`, `MRTM-SAF-016`, `MRTM-SAF-021`, `MRTM-SYS-005`, `MRTM-SYS-007`, `MRTM-SYS-011`, `MRTM-SYS-013`, `MRTM-SYS-022` | 5 | none |
| `eventLog` | Event logger | declares no code | `historyRing`, `rtcClock` | none | `MRTM-SAF-018`, `MRTM-SYS-008`, `MRTM-SYS-009`, `MRTM-SYS-010`, `MRTM-SYS-023` | 1 | none |
| `historyRing` | History ring buffer | declares no code | **nothing** | none | `MRTM-SYS-015`, `MRTM-SYS-021`, `MRTM-SYS-022` | 0 | none |
| `limitEvaluator` | Limit evaluator | declares no code | `configMgr` | none | `MRTM-SYS-002`, `MRTM-SYS-017`, `MRTM-SYS-018` | 0 | none |
| `powerMon` | Power monitor | declares no code | `eventLog`, `alarmMgr` | none | `MRTM-SAF-005`, `MRTM-SAF-008`, `MRTM-SYS-016` | 2 | none |
| `rtcClock` | Real-time clock | declares no code | **nothing** | none | `MRTM-SAF-022`, `MRTM-SYS-020` | 1 | none |
| `sensorSampler` | Sensor sampler | declares no code | `configMgr`, `eventLog` | none | `MRTM-IFC-001`, `MRTM-PRF-001`, `MRTM-SAF-003`, `MRTM-SYS-001`, `MRTM-SYS-012` | 3 | none |
| `usbExport` | USB exporter | declares no code | `historyRing` | none | `MRTM-IFC-003`, `MRTM-PRF-003`, `MRTM-SYS-014` | 2 | none |
| `wdtKicker` | Watchdog kicker | declares no code | **nothing** | none | `MRTM-SAF-004`, `MRTM-SAF-009`, `MRTM-SAF-010` | 3 | none |
