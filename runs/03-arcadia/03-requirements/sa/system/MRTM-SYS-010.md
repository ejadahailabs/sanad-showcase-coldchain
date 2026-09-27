---
id: "MRTM-SYS-010"
type: "system"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-03-ARCADIA)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-STK-005"]
safetyClass: "C"
derived: false
allocated_to: []

implemented_by: []
---

# Log acknowledgement

## Description

The monitor shall log the acknowledgement event with the UTC time stamp at 1 s resolution.

## Rationale

The history shows who reacted and when.

## Verification

Test: acknowledge an alert and read the logged event.
