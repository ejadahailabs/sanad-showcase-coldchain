---
id: "MRTM-HWR-007"
type: "hardware-item"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-04)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SAF-009","MRTM-SAF-010"]
safetyClass: "A"
derived: false
---

# Backup timer timeout

## Description

The alarm hardware item shall assert the backup timeout 9 s ± 0.9 s after the last watchdog service pulse.

## Rationale

PSSA 08-safety/02-pssa.md. Re-homed from run 2 MRTM-BKT-001 and MRTM-BKA-001: in this ladder the backup alarm is part of the alarm hardware item, not a node of its own (depth pinned).

## Verification

Test: SP-05 stop the pulses and time the timeout.

## Safety

DAL A (catastrophic failure condition), assigned to `alarm-hw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).
