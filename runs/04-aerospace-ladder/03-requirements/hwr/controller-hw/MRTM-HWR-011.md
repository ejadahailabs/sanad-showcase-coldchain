---
id: "MRTM-HWR-011"
type: "hardware-item"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-04)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SYS-020","MRTM-SAF-022"]
safetyClass: "A"
derived: false
---

# Clock drift

## Description

The controller hardware item shall keep UTC time with a drift of 2 s per day or less from 10 °C to 35 °C.

## Rationale

PSSA 08-safety/02-pssa.md. Re-homed from run 2 MRTM-RTC-001. The real-time clock sits on the controller board in this ladder.

## Verification

Test: SP-12 24 h against a reference.

## Safety

DAL A (catastrophic failure condition), assigned to `controller-hw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).
