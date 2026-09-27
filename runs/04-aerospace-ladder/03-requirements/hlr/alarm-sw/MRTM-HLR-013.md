---
id: "MRTM-HLR-013"
type: "hlr"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-04)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SAF-014","MRTM-SAF-015"]
safetyClass: "A"
implemented_by: []
derived: false
---

# Buzzer fault

## Description

When the buzzer draws no current for 5 consecutive alarm cycles while driven, the alarm software item shall flash the red indicator at 4 Hz and log a buzzer fault.

## Rationale

DO-178C §5.1 HLR. Diverse signal for a failed buzzer.

## Verification

Test: unit tests of alarm_mgr.

## Safety

DAL A (catastrophic failure condition), assigned to `alarm-sw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).
