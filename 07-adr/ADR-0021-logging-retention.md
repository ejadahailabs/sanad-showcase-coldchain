# ADR-0021 — Event log: a ring of 32-byte records in two mirrored flash sectors

- **Status:** Accepted (DRAFT — needs Masood's review) · **Date:** 2026-09-27 · **Phase:** 7 · **MANUAL** ADR shape (F-09) · IEC 62304 §5.3.1 · ISO 14971 cl. 7.1 (HAZ-008) · refines ADR-0011
- **Model:** `MrtmSoftware::EventRecord`, `HistoryRing`, components eventLog + historyRing; sequence mrtmSeqPowerLoss
- **Requirements:** MRTM-SYS-015, MRTM-SYS-021, MRTM-SYS-022, MRTM-SAF-018, MRTM-SAF-005, MRTM-PRF-003

## Context
The log is the proof that medicine was or was not warm. It must survive a power cut in the middle of a write. Like writing the same diary page in two notebooks, so one torn page never loses the day.

## Decision
- Record = 32 bytes (seq, UTC seconds, kind, temperature, peak, CRC-32, padding). 10000 records = 320 000 bytes per copy.
- Two partitions (copy A, copy B), each a ring over 79 × 4 KiB sectors (≥ 10 000 records + one spare sector to erase ahead).
- Write order: A, then B; each record carries a sequence number. On boot the newer valid copy wins; a record whose CRC fails is reported (MRTM-SYS-021) and read from the other copy.
- Full ring: overwrite oldest (A-21); warning on screen at 9000 (MRTM-SYS-022).
- USB: the ring is rendered on demand as one read-only CSV file on a FAT image (MRTM-SYS-014, IFC-003).

## Consequences
- Flash wear: at ≤ 1 event per minute a sector sees < 1 erase per day — far inside the part's endurance (EE-REVIEW for the exact figure).
- Retention period beyond 10 000 events is not claimed.
