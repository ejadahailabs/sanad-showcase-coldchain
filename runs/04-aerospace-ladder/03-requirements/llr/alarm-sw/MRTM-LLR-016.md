---
id: "MRTM-LLR-016"
type: "llr"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-04)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-HLR-010"]
safetyClass: "A"
implemented_by: []
derived: false
---

# Heartbeat read

## Description

alarm_mgr_heartbeat shall return the step counter that alarm_mgr_step advances by one at the end of every step.

## Rationale

DO-178C §5.2 LLR: enough detail to code from. Code: alarm_mgr.c line 174.

## Verification

Test: the unit tests of this function.

## Safety

DAL A (catastrophic failure condition), assigned to `alarm-sw-design` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).
