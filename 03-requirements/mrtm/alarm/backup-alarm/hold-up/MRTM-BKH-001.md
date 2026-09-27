---
id: "MRTM-BKH-001"
type: "hold-up"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, MODEL-LEVELS)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-BKA-002"]
safetyClass: "C"
derived: false
---

# Hold-up energy

## Description

The hold-up store shall supply the backup timer and the backup driver for 60 s or more after all power is lost.

## Rationale

Sized in 09-hardware/power-budget.md (133 s computed).

## Verification

Test: SP-03 with both supplies removed.

## Safety

Hardware part: IEC 62304 classes software only. `C` here means the part carries a class-C risk control (ISO 14971); it keeps Sanad's rigour at 4 for its requirements.
