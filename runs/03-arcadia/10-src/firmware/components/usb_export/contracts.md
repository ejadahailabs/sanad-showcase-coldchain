# Contract — `usb_export` (C)

> **Standard:** IEC 62304 §5.4.2 (detailed design), §5.4.3 (interfaces), Class C. **Status:** DRAFT — needs Masood's review. **MANUAL** (F-77): generated with `MrtmSwDetail::UsbExportApi` from one table (tools/detail-design.py).
> **Component:** `usbExport` (.ejadah/rew/architecture/usbExport.md) · **Satisfies:** MRTM-SYS-014, MRTM-IFC-003, MRTM-PRF-003

**What it does:** Show the history as a read-only USB drive.

**Common rules:** every function that can fail returns `mrtm_err_t` (`mrtm_errors.h`, `MrtmSwCodes::ErrorCode`); the caller checks it. No heap after start-up. Constants come from `10-src/config/mrtm_config.h` (ADR-0024).

## Functions

| Function (C) | Pre-condition | Post-condition | Errors |
|---|---|---|---|
| `mrtm_err_t usb_export_init(void);` | TinyUSB (SOUP-5) installed. | MSC device with one FAT12 volume, one file HISTORY.CSV, write-protect bit set (MRTM-SYS-014). | MRTM_ERR_HW |
| `int32_t usb_export_read10(uint32_t lba, uint32_t offset, void *buf, uint32_t size);` | TinyUSB callback. | Boot sector, FAT and directory are fixed tables; data sectors are CSV lines rendered on demand from history_ring_read (newest last). 10 000 records x 48 bytes = 480 kB, well inside 30 s at full speed (MRTM-PRF-003). | returns -1 on a record read error (the line is written as 'CORRUPT' instead) |
| `int32_t usb_export_write10(uint32_t lba, uint32_t offset, const void *buf, uint32_t size);` | TinyUSB callback. | Always refuses (returns -1): the volume is read-only (MRTM-IFC-003). | none |

## Unit tests to write in Phase 9 (Unity, ADR-0023)

One test file `test/test_usb_export.c`; one test per post-condition row above, plus one per error code listed. Each test carries `@verifies` with the requirement ids above.
