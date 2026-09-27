---
id: "MRTM-LLR-013"
type: "llr"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-04)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-HLR-007","MRTM-HLR-008","MRTM-HLR-011","MRTM-HLR-012","MRTM-HLR-013","MRTM-HLR-015"]
safetyClass: "A"
implemented_by: []
derived: false
---

# Outputs per state

## Description

alarm_mgr_step shall drive the outputs of the current state (early: red 1 Hz; sounding: buzzer and red 2 Hz; probe fault: buzzer 1 s on 1 s off; buzzer fault: red 4 Hz), re-sound 15 min after an ack, and declare a buzzer fault after 5 steps with no buzzer current.

## Rationale

DO-178C §5.2 LLR: enough detail to code from. Code: alarm_mgr.c line 113.

## Verification

Test: the unit tests of this function.

## Safety

DAL A (catastrophic failure condition), assigned to `alarm-sw-design` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).
