---
id: "MRTM-HLR-008"
type: "hlr"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-04)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SYS-003","MRTM-PRF-002"]
safetyClass: "A"
implemented_by: []
derived: false
---

# Buzzer on

## Description

The alarm software item shall switch the buzzer drive on, and the red indicator to 2 Hz, within one 1 s alarm cycle of the confirmed excursion report.

## Rationale

DO-178C §5.1 HLR. Re-homed from run 2 MRTM-ALI-002 and MRTM-ALM-003.

## Verification

Test: unit tests of alarm_mgr; integration INT-01.

## Safety

DAL A (catastrophic failure condition), assigned to `alarm-sw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).
