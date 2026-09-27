---
id: "MRTM-HWR-006"
type: "hardware-item"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-04)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-IFC-002","MRTM-SYS-006"]
safetyClass: "A"
derived: false
---

# Acknowledge contact

## Description

While a clinic staff member presses the acknowledge button, the alarm hardware item shall close the acknowledge contact.

## Rationale

PSSA 08-safety/02-pssa.md. Re-homed from run 2 MRTM-IND-002.

## Verification

Test: SP-04 continuity while pressed.

## Safety

DAL A (catastrophic failure condition), assigned to `alarm-hw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).
