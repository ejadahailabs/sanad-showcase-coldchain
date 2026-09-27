# ADR-0025 — One error-code type, one event-kind list, both in the model and the dictionary

- **Status:** Accepted (DRAFT — needs Masood's review) · **Date:** 2026-09-27 · **Phase:** 8 · **MANUAL** ADR shape (F-09) · IEC 62304 §5.4.2, §5.4.3 · ISO 14971 cl. 7.1
- **Model:** `MrtmSwCodes::ErrorCode` (11 values), `MrtmSwCodes::EventKind` (20 values); dictionary terms Error Code, Event Kind, Event Record
- **Requirements:** MRTM-SYS-008/009/010/021/022/023, MRTM-SAF-004/005/007/008/012/014/017/019/021/022/023

## Context
Every function must say what went wrong, and every event must land in the history with a kind a person can read later. Like a hospital's standard list of codes on a chart: everyone writes the same words.

## Decision
- `mrtm_err_t`: 0 = OK, small positive numbers for the 10 failure kinds. Every function that can fail returns it; no function swallows one.
- `mrtm_event_kind_t` (uint8): 20 kinds, each tied to the requirement that asks for the record. Numbers never reused; a retired kind keeps its number.
- One Python table (tools/p8data.py) writes the SysML enums, the dictionary lists and the contracts, so the three cannot disagree. The C header `mrtm_errors.h` is written from the same table in Phase 9.

## Consequences
- The USB CSV prints the kind as its name, not its number, so an auditor can read it.
