---
id: "MRTM-HWR-004"
type: "hardware-item"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-04)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SAF-001","MRTM-SYS-003"]
safetyClass: "A"
derived: false
---

# Buzzer loudness

## Description

The alarm hardware item shall produce a sound pressure level of 65 dB(A) or more at 1 m when either buzzer drive input is active.

## Rationale

PSSA 08-safety/02-pssa.md. Re-homed from run 2 MRTM-BZR-001. Two drive inputs: the controller and the backup driver.

## Verification

Test: SP-03 sound level meter at 1 m.

## Safety

DAL A (catastrophic failure condition), assigned to `alarm-hw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).
