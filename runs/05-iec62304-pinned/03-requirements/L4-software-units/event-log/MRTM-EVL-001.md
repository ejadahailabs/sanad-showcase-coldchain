---
id: "MRTM-EVL-001"
type: "event-log"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-05)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-LGI-001"]
safetyClass: "C"
derived: false
implemented_by: []
---

# Event log checksum

## Description

The event log unit shall compute a CRC-32 over each queued record and hand it to the history ring in the same event_log_step call.

## Rationale

Contract: 10-src/firmware/components/event_log/contracts.md.

## Verification

Test: unit test.

## Safety

Class C: the class of its item `log-item` (IEC 62304 §4.3 — a unit takes its item's class).
