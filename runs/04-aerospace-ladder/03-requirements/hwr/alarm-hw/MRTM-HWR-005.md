---
id: "MRTM-HWR-005"
type: "hardware-item"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-04)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SYS-004","MRTM-SYS-024"]
safetyClass: "A"
derived: false
---

# Red indicator response

## Description

The alarm hardware item shall switch the red indicator within 10 ms of a change of its drive input.

## Rationale

PSSA 08-safety/02-pssa.md. Re-homed from run 2 MRTM-IND-001.

## Verification

Test: SP-01 oscilloscope on the drive and the LED.

## Safety

DAL A (catastrophic failure condition), assigned to `alarm-hw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).
