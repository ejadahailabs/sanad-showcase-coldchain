---
id: "MRTM-HWR-009"
type: "hardware-item"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-04)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SAF-013"]
safetyClass: "A"
derived: false
---

# Backup hold-up

## Description

The alarm hardware item shall supply the backup timer and the backup driver for 60 s or more after all power is lost.

## Rationale

PSSA 08-safety/02-pssa.md. Re-homed from run 2 MRTM-BKH-001 and MRTM-BKA-002.

## Verification

Test: SP-07 remove mains and battery, time the sound.

## Safety

DAL A (catastrophic failure condition), assigned to `alarm-hw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).
