---
id: "MRTM-HWR-010"
type: "hardware-item"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-04)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SAF-004"]
safetyClass: "A"
derived: false
---

# Controller watchdog reset

## Description

The controller hardware item shall reset the processor within 1 s of its hardware watchdog expiry.

## Rationale

PSSA 08-safety/02-pssa.md. Re-homed from run 2 MRTM-MCU-001.

## Verification

Test: SP-06.

## Safety

DAL A (catastrophic failure condition), assigned to `controller-hw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).
