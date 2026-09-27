# Contract — `history_ring` (C)

> **Standard:** IEC 62304 §5.4.2 (detailed design), §5.4.3 (interfaces), Class C. **Status:** DRAFT — needs Masood's review. **MANUAL** (F-77): generated with `MrtmSwDetail::HistoryRingApi` from one table (tools/detail-design.py).
> **Component:** `historyRing` (.ejadah/rew/architecture/historyRing.md) · **Satisfies:** MRTM-SYS-015, MRTM-SYS-021, MRTM-SYS-022

**What it does:** Keep 10000 records in a ring over two mirrored flash areas.

**Common rules:** every function that can fail returns `mrtm_err_t` (`mrtm_errors.h`, `MrtmSwCodes::ErrorCode`); the caller checks it. No heap after start-up. Constants come from `10-src/config/mrtm_config.h` (ADR-0024).

## Types

```c
typedef struct { uint32_t head_seq; uint32_t count; } history_ring_t;
```

## Functions

| Function (C) | Pre-condition | Post-condition | Errors |
|---|---|---|---|
| `mrtm_err_t history_ring_init(history_ring_t *r);` | Partitions 'logA' and 'logB' present. | head_seq = highest seq with a valid CRC in either copy; count = min(head_seq, capacity). | MRTM_ERR_FLASH |
| `mrtm_err_t history_ring_append(history_ring_t *r, const event_record_t *rec);` | logTask only. | Record in copy A and copy B; when count reaches 9000 the capacity-warning event is posted once (MRTM-SYS-022). | MRTM_ERR_FLASH |
| `mrtm_err_t history_ring_read(const history_ring_t *r, uint32_t age, event_record_t *out);` | age < count (0 = newest). | out holds a record whose CRC-32 matches, from copy A or else copy B. | MRTM_ERR_CRC when both copies fail — posts LOG_RECORD_CORRUPT within 1 s (MRTM-SYS-021) |
| `uint32_t history_ring_count(const history_ring_t *r);` | none | Records held, 0..10000. | none |

## Algorithms

- **`history_ring_init`** — Scan both partitions slot by slot (10 112 slots each: 79 sectors x 128 slots); keep the max valid seq. Slot index = seq mod slots.
- **`history_ring_append`** — If the slot is the first of a sector, erase that sector in A, write A, erase in B, write B (erase-ahead keeps 10 000 readable, A-21 overwrite oldest).

## Unit tests to write in Phase 9 (Unity, ADR-0023)

One test file `test/test_history_ring.c`; one test per post-condition row above, plus one per error code listed. Each test carries `@verifies` with the requirement ids above.
