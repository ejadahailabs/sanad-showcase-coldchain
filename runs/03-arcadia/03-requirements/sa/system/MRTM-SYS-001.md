---
id: "MRTM-SYS-001"
type: "system"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-03-ARCADIA)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-STK-004"]
safetyClass: "C"
derived: false
allocated_to: []

implemented_by: []
---

# Sampling period

## Description

The monitor shall sample the fridge air temperature at the sampling period of 2 s.

## Rationale

Sampling Period in the data dictionary (A-04).

## Verification

Test: time 100 consecutive samples; each interval is 2 s ± 0.1 s.
