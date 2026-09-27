# Contract — `event_log` (C)

> **Standard:** IEC 62304 §5.4.2 (detailed design), §5.4.3 (interfaces), Class C. **Status:** DRAFT — needs Masood's review. **MANUAL** (F-77): generated with `MrtmSwDetail::EventLogApi` from one table (tools/detail-design.py).
> **Component:** `eventLog` (.ejadah/rew/architecture/eventLog.md) · **Satisfies:** MRTM-SYS-008, MRTM-SYS-009, MRTM-SYS-010, MRTM-SYS-023, MRTM-SAF-018

**What it does:** Turn events into stamped records and store each twice.

**Common rules:** every function that can fail returns `mrtm_err_t` (`mrtm_errors.h`, `MrtmSwCodes::ErrorCode`); the caller checks it. No heap after start-up. Constants come from `10-src/config/mrtm_config.h` (ADR-0024).

## Types

```c
typedef struct __attribute__((packed)) { uint32_t seq; uint32_t utc_s; uint8_t kind; uint8_t rsv; int16_t tenths; int16_t peak_tenths; uint8_t pad[14]; uint32_t crc32; } event_record_t;  /* 32 bytes */
```

## Functions

| Function (C) | Pre-condition | Post-condition | Errors |
|---|---|---|---|
| `mrtm_err_t event_log_post(mrtm_event_kind_t kind, int16_t tenths, int16_t peak_tenths);` | Any task; event_log_post_from_isr() is the ISR form. | Record queued with the UTC second of the call (time-stamping at the event, not at the write). | MRTM_ERR_FULL (queue depth 32) |
| `void event_log_step(uint32_t timeout_ms);` | logTask only. | Every queued record has seq, CRC-32 and is written to copy A then copy B within 1 s of its event (MRTM-SAF-018). | MRTM_ERR_FLASH (retried once, then logged as SELF_TEST_FAIL value 'flash') |

## Algorithms

- **`event_log_post`** — utc_s = rtc_clock_now() taken at post time (1 s resolution, MRTM-SYS-008/010/023).
- **`event_log_step`** — Take one record; seq = ++last_seq; crc32 = CRC-32/ISO-HDLC over bytes 0..27; history_ring_append().

## Unit tests to write in Phase 9 (Unity, ADR-0023)

One test file `test/test_event_log.c`; one test per post-condition row above, plus one per error code listed. Each test carries `@verifies` with the requirement ids above.
