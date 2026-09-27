---
id: "MRTM-LLR-006"
type: "llr"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-04)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-HLR-003","MRTM-HLR-004","MRTM-HLR-005","MRTM-HLR-006"]
safetyClass: "A"
implemented_by: []
derived: false
---

# Sensor step

## Description

In monitoring mode, app_sensor_step shall read one sample, post probe fault or recovered on a change, and post the limit event of that sample to the alarm manager in the same step.

## Rationale

DO-178C §5.2 LLR: enough detail to code from. Code: mrtm_app.c line 71.

## Verification

Test: the unit tests of this function.

## Safety

DAL A (catastrophic failure condition), assigned to `alarm-sw-design` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).
