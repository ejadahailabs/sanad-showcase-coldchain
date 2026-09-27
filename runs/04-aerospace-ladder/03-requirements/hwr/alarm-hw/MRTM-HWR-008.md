---
id: "MRTM-HWR-008"
type: "hardware-item"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-04)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SAF-009"]
safetyClass: "A"
derived: false
---

# Backup driver response

## Description

The alarm hardware item shall drive the buzzer backup input within 100 ms of the backup timeout.

## Rationale

PSSA 08-safety/02-pssa.md. Re-homed from run 2 MRTM-BKD-001.

## Verification

Test: SP-05.

## Safety

DAL A (catastrophic failure condition), assigned to `alarm-hw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).
