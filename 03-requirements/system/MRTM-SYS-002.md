---
id: "MRTM-SYS-002"
type: "system"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, DOGFOOD-1)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-STK-002"]
safetyClass: "C"
derived: false
---

# Excursion confirmation

## Description

The monitor shall confirm the excursion when consecutive samples stay outside the allowed band for 60 s.

## Rationale

Excursion Confirmation Time filters door openings (US-2).

## Verification

Test: hold the probe out of band for 59 s and 61 s; only the second confirms.
