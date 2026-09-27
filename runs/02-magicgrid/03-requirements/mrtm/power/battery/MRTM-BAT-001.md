---
id: "MRTM-BAT-001"
type: "battery"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, MODEL-LEVELS)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-PWR-002"]
safetyClass: "C"
derived: false
---

# Battery capacity

## Description

The battery shall store 2000 mAh or more at 3.7 V nominal.

## Rationale

Gives 49 h computed against the 4 h need (09-hardware/power-budget.md); synthetic part (A-40).

## Verification

Inspection of the part; SP-04.

## Safety

Hardware part: IEC 62304 classes software only. `C` here means the part carries a class-C risk control (ISO 14971); it keeps Sanad's rigour at 4 for its requirements.
