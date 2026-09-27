---
id: "MRTM-SYS-002"
type: "system"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, DOGFOOD-1)"
created: "2026-09-27"
modified: "2026-09-27"
tags: []
uplinks: ["MRTM-FUN-002"]
safetyClass: "A"
derived: false
---

# Excursion confirmation

## Description

The monitor shall confirm the excursion when 31 consecutive samples, spanning 60 s, are outside the allowed band.

## Rationale

Excursion Confirmation Time filters door openings (US-2).

## Verification

Test: hold the probe out of band for 59 s and 61 s; only the second confirms.
