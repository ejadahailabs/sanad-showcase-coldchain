---
id: "MRTM-HLR-011"
type: "hlr"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-04)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SYS-019"]
safetyClass: "A"
implemented_by: []
derived: false
---

# Re-sound after silence

## Description

The alarm software item shall switch the buzzer drive on again 15 min after an acknowledge while the excursion is still open.

## Rationale

DO-178C §5.1 HLR. New in this ladder: run 2 held it at system level only.

## Verification

Test: unit tests of alarm_mgr.

## Safety

DAL A (catastrophic failure condition), assigned to `alarm-sw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).
