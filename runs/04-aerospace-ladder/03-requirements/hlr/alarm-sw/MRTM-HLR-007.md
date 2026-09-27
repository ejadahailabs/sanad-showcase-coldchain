---
id: "MRTM-HLR-007"
type: "hlr"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-04)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SYS-024","MRTM-SYS-004"]
safetyClass: "A"
implemented_by: []
derived: false
---

# Early alarm light

## Description

The alarm software item shall flash the red indicator at 1 Hz, without the buzzer, within one 1 s alarm cycle of the early excursion report.

## Rationale

DO-178C §5.1 HLR. Re-homed from run 2 MRTM-ALI-001 and MRTM-ALM-001 (low priority, IEC 60601-1-8 as the alarm-signal source).

## Verification

Test: unit tests of alarm_mgr.

## Safety

DAL A (catastrophic failure condition), assigned to `alarm-sw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).
