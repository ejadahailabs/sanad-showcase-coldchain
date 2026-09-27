---
id: "MRTM-LLR-010"
type: "llr"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-04)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-HLR-014"]
safetyClass: "A"
implemented_by: []
derived: false
---

# State restore

## Description

alarm_mgr_init shall restore state SOUNDING when NVS key 'alarm' holds SOUNDING, and QUIET otherwise.

## Rationale

DO-178C §5.2 LLR: enough detail to code from. Code: alarm_mgr.c line 30.

## Verification

Test: the unit tests of this function.

## Safety

DAL A (catastrophic failure condition), assigned to `alarm-sw-design` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).
