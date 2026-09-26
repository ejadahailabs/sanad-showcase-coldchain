---
id: "MRTM-SYS-001"
type: "system"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, DOGFOOD-1)"
created: "2026-09-27"
modified: "2026-09-27"
tags: []
uplinks: ["MRTM-STK-004"]
safetyClass: "C"
derived: false
---

# Sampling period

## Description

The monitor shall sample the fridge air temperature at the sampling period of 10 s.

## Rationale

Sampling Period in the data dictionary (A-04).

## Verification

Test: time 100 consecutive samples; each interval is 10 s ± 0.5 s.
