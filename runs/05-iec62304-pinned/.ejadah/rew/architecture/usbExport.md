---
code: ["10-src/firmware/components/usb_export/src/**", "10-src/firmware/components/usb_export/include/**"]
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
- **Contract (Phase 8):** `10-src/firmware/components/usb_export/contracts.md`, `MrtmSwDetail::UsbExportApi`
- **Code (Phase 9):** `10-src/firmware/components/usb_export/{src,include}` (declared in `code:` above); unit tests in `test/`.

Shows the history as a read-only USB drive (TinyUSB mass storage, SOUP).
