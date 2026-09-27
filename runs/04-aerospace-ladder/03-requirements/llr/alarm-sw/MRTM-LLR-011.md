---
id: "MRTM-LLR-011"
type: "llr"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-04)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-HLR-008","MRTM-HLR-009"]
safetyClass: "A"
implemented_by: []
derived: false
---

# Signal queue

## Description

alarm_mgr_post shall queue the signal (depth 8, MRTM_ERR_FULL when full) and wake the alarm task at once.

## Rationale

DO-178C §5.2 LLR: enough detail to code from. Code: alarm_mgr.c line 41.

## Verification

Test: the unit tests of this function.

## Safety

DAL A (catastrophic failure condition), assigned to `alarm-sw-design` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).
