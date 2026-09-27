---
id: "MRTM-SYS-017"
type: "system"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, DOGFOOD-1)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-STK-001"]
safetyClass: "C"
derived: false
---

# Allowed band

## Description

The monitor shall use the allowed band from 2 °C to 8 °C.

## Rationale

Review round 1, thread T02: the band lived only in the data dictionary and A-04, so no test could fail on a wrong band.

## Verification

Test: step the probe to 1.9 °C, 2.0 °C, 8.0 °C and 8.1 °C and confirm only 1.9 °C and 8.1 °C count as outside the band.
