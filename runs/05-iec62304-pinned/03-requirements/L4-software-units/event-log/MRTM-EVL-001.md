---
id: "MRTM-EVL-001"
type: "event-log"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-05)"
created: "2026-09-27"
modified: "2026-09-27"
tags: []
uplinks: ["MRTM-LGI-001"]
safetyClass: "C"
derived: false
implemented_by: []
---

# Event log checksum

## Description

The event log unit shall compute a 32-bit CRC over each queued record and hand the record to the history ring within 1 s of its post.

## Rationale

Contract: 10-src/firmware/components/event_log/contracts.md.

## Verification

Test: unit test.

## Safety

Class C: the class of its item `log-item` (IEC 62304 §4.3 — a unit takes its item's class).
