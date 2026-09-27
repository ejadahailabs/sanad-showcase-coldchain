---
id: "MRTM-SYS-018"
type: "system"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-03-ARCADIA)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-STK-002"]
safetyClass: "C"
derived: false
allocated_to: []

implemented_by: []
---

# Excursion end confirmation

## Description

The monitor shall end the excursion after 31 consecutive samples, spanning 60 s, back inside the allowed band.

## Rationale

Review round 1, thread T08: ending at the first sample back inside makes a fridge at the band edge start and end excursions every 10 s (alarm chatter).

## Verification

Test: hold the probe at the limit with ±0.2 °C noise and confirm exactly one excursion start event and one excursion end event in the log.
