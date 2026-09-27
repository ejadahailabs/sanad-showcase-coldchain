---
id: "MRTM-HLR-009"
type: "hlr"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-04)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SYS-006","MRTM-IFC-002"]
safetyClass: "A"
implemented_by: []
derived: false
---

# Buzzer off on acknowledge

## Description

The alarm software item shall switch the buzzer drive off within one 1 s alarm cycle of an acknowledge press stable for 50 ms.

## Rationale

DO-178C §5.1 HLR. Re-homed from run 2 MRTM-ALI-003 and MRTM-ALM-004.

## Verification

Test: unit tests of alarm_mgr.

## Safety

DAL A (catastrophic failure condition), assigned to `alarm-sw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).
