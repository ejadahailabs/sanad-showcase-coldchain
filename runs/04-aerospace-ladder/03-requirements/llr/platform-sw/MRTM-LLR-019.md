---
id: "MRTM-LLR-019"
type: "llr"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-04)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-HLR-018"]
safetyClass: "A"
implemented_by: []
derived: false
---

# Self-tests

## Description

diagnostics_power_up shall drive the buzzer 200 ms and check its current (unless an alarm is sounding), hold the watchdog pulses up to 12 s until the backup alarm is sensed, and log the result.

## Rationale

DO-178C §5.2 LLR: enough detail to code from. Code: diagnostics.c line 13.

## Verification

Test: the unit tests of this function.

## Safety

DAL A (catastrophic failure condition), assigned to `platform-sw-design` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).
