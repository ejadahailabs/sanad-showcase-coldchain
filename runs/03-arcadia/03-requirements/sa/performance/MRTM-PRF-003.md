---
id: "MRTM-PRF-003"
type: "performance"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-03-ARCADIA)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SYS-015"]
safetyClass: "C"
derived: false
allocated_to: []

implemented_by: []
---

# Log readout time

## Description

The monitor shall deliver the complete event log to the USB host within 30 s.

## Rationale

An audit readout must not keep staff waiting.

## Verification

Test: fill the log to 10000 events and time the readout. Run with the event log holding 10000 events (review round 1, T07).
