---
id: "MRTM-SYS-006"
type: "system"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-03-ARCADIA)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-STK-003"]
safetyClass: "C"
derived: false
allocated_to: []

implemented_by: []
---

# Acknowledge silences buzzer

## Description

The monitor shall stop the buzzer within 1 s of the acknowledge button press.

## Rationale

Acknowledgement silences the alert; it does not end the excursion.

## Verification

Test: press acknowledge during an alert and time the buzzer stop.
