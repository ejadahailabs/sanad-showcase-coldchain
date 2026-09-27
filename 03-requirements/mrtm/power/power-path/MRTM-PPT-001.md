---
id: "MRTM-PPT-001"
type: "power-path"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, MODEL-LEVELS)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-PWR-001"]
safetyClass: "C"
derived: false
---

# Power path switch

## Description

The power path shall switch the load from mains to battery within 100 ms.

## Rationale

A diode-OR power path; no firmware in the loop.

## Verification

Test: SP-04.

## Safety

Hardware part: IEC 62304 classes software only. `C` here means the part carries a class-C risk control (ISO 14971); it keeps Sanad's rigour at 4 for its requirements.
