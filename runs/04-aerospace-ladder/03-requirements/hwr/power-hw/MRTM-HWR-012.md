---
id: "MRTM-HWR-012"
type: "hardware-item"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-04)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SYS-016"]
safetyClass: "B"
derived: false
---

# Switch to battery

## Description

The power hardware item shall switch the load from mains to battery within 100 ms of mains loss.

## Rationale

PSSA 08-safety/02-pssa.md. Re-homed from run 2 MRTM-PPT-001 and MRTM-PWR-001.

## Verification

Test: SP-08.

## Safety

DAL B (hazardous failure condition), assigned to `power-hw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).
