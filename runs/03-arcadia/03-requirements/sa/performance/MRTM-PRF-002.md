---
id: "MRTM-PRF-002"
type: "performance"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-03-ARCADIA)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SYS-003"]
safetyClass: "C"
derived: false
allocated_to: []

implemented_by: []
---

# End-to-end alert time

## Description

The monitor shall sound the buzzer within 65 s of the first sample outside the allowed band.

## Rationale

60 s confirmation plus 5 s alert time.

## Verification

Test: step the probe out of band and time the buzzer.
