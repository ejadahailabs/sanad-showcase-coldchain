---
id: "MRTM-SYS-007"
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

# Warning stays while excursion is open

## Description

The monitor shall keep the excursion warning on the display for the duration of the excursion.

## Rationale

Silencing the buzzer must not hide the problem.

## Verification

Test: acknowledge an alert and confirm the warning stays until the temperature returns to band.
