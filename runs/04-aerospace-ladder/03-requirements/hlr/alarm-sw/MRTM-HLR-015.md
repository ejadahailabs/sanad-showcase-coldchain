---
id: "MRTM-HLR-015"
type: "hlr"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-04)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SAF-019","MRTM-SAF-008","MRTM-SAF-017"]
safetyClass: "A"
implemented_by: []
derived: false
---

# Stuck button and fail-safe

## Description

The alarm software item shall ignore an acknowledge press held for 60 s until release, and shall drive the buzzer while a fail-safe or battery-low signal is set.

## Rationale

DO-178C §5.1 HLR.

## Verification

Test: unit tests of alarm_mgr.

## Safety

DAL A (catastrophic failure condition), assigned to `alarm-sw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).
