---
id: "MRTM-LLR-026"
type: "llr"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-04)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-HLR-016","MRTM-HLR-022"]
safetyClass: "A"
implemented_by: []
derived: false
---

# Supervisor step

## Description

app_supervisor_step shall refresh the clock, gate the watchdog pulse on the alarm heartbeat, and set the calibration-due and log-capacity flags.

## Rationale

DO-178C §5.2 LLR: enough detail to code from. Code: mrtm_app.c line 119.

## Verification

Test: the unit tests of this function.

## Safety

DAL A (catastrophic failure condition), assigned to `platform-sw-design` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).
