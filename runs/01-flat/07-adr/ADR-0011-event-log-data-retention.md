# ADR-0011 — Event log: 10000 records in the ESP32's own flash, each with a CRC-32

- **Status:** Accepted (overwrite rule pending Q-13) · **Date:** 2026-09-27 · **Phase:** 4 · **MANUAL** ADR shape (F-09) · IEC 62304 §5.3.1 · ISO 14971 §7.1 (risk control: history lost or altered)
- **Model:** `LogicalMonitor::eventLogger / historyServer`, `MonitoringFirmware::logService` (attributes `capacity`, `warnAt`), `MrtmInterfaces::LogRecord`

## Context
The history is the clinic's proof that the vaccines were kept cold. Think of a ship's log book: written as things happen, never rubbed out, and readable years later.

## Decision
1. **Where:** a dedicated partition of the ESP32 module's internal flash, written as a ring of fixed-size records. No SD card (it can be removed or corrupted).
2. **What:** each record holds kind, UTC time (from the RTC, drift ≤ 2 s/day, SYS-020), peak temperature where relevant, and a CRC-32 (SYS-021).
3. **How much:** 10000 records (SYS-015); the screen warns at 9000 (SYS-022).
4. **When full:** the oldest record is overwritten — but only after the capacity warning has been on screen. Q-13 asks the owner whether the clinic would rather stop logging and alarm instead.
5. **Who can read:** the USB host sees a read-only file (SYS-014, IFC-003); nothing on the device can edit a record.
6. **Power loss:** a record is written whole or not at all (CRC catches a torn write); power loss and restore are both logged (SAF-005, SYS-023).

## Consequences
At a few events per day, 10000 records is years of history. The overwrite choice is a clinic policy question, so it stays open.

## Four blocks
- **Assumptions:** A-17 (flash endurance is enough for the write rate — EE-REVIEW in Phase 6).
- **Risks:** R-10 (flash wear-out or partition corruption loses history).
- **Open questions:** Q-13 (overwrite oldest vs stop and alarm).
- **Trace links:** MRTM-STK-005, STK-006, SYS-008, SYS-009, SYS-010, SYS-014, SYS-015, SYS-020, SYS-021, SYS-022, SYS-023, SAF-005, PRF-003, IFC-003; review round 1 T10, T12, T13, T17.
