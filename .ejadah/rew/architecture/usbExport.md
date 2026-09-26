---
uses: [historyRing]
resources:
  memory: "8 KiB stack (shared with the task)"
  cpu_budget: "10 % while plugged"
  period: "event"
  deadline: "30 s"
  partition: "usbTask"
---

# USB exporter

- **Software item:** `MrtmSoftware::UsbItem` (IEC 62304 §5.3.1, software safety class C)
- **Model element:** `MrtmSoftware::MrtmFirmware` → `usbExport` (SysML v2, `#Component`)
- **Language:** C (ADR-0022) · **Runs in:** FreeRTOS `usbTask` (ADR-0019)
- **Code:** none yet — Phase 9 adds `code:` globs for `10-src/firmware/main/usbExport*`.

Shows the history as a read-only USB drive (TinyUSB mass storage, SOUP).
