---
id: "MRTM-SYS-021"
type: "system"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-03-ARCADIA)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-STK-006"]
safetyClass: "C"
derived: false
allocated_to: []

implemented_by: []
---

# Event log integrity

## Description

The monitor shall report a corrupted event log record within 1 s of reading it, using its CRC-32 checksum.

## Rationale

Review round 1, thread T12: read-only access does not protect against a bit-flip or a torn write at power loss; Class C audit data must show corruption.

## Verification

Test: flip one bit in a stored record and confirm the monitor reports the record as corrupted within 1 s.
