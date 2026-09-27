---
id: "MRTM-HWR-013"
type: "hardware-item"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-04)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-ENV-001"]
safetyClass: "B"
derived: false
---

# Battery capacity

## Description

The power hardware item shall store 2000 mAh or more at 3.7 V nominal.

## Rationale

PSSA 08-safety/02-pssa.md. Re-homed from run 2 MRTM-BAT-001 and MRTM-PWR-002.

## Verification

Inspection of the cell data; SP-09 4 h run.

## Safety

DAL B (hazardous failure condition), assigned to `power-hw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).
