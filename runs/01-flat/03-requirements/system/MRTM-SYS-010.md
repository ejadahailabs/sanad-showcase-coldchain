---
id: "MRTM-SYS-010"
type: "system"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, DOGFOOD-1)"
created: "2026-09-27"
modified: "2026-09-27"
tags: []
uplinks: ["MRTM-STK-005"]
safetyClass: "C"
derived: false
---

# Log acknowledgement

## Description

The monitor shall log the acknowledgement event with the UTC time stamp at 1 s resolution.

## Rationale

The history shows who reacted and when.

## Verification

Test: acknowledge an alert and read the logged event.
