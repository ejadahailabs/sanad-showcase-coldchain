---
id: "MRTM-LLR-012"
type: "llr"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-04)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-HLR-007","MRTM-HLR-008","MRTM-HLR-009"]
safetyClass: "A"
implemented_by: []
derived: false
---

# Transition table

## Description

take shall apply one AlarmStates transition per signal: early from quiet, early cleared, confirm from quiet or early, ack from sounding, end from sounding or silenced, probe fault from any monitoring state, probe recovered.

## Rationale

DO-178C §5.2 LLR: enough detail to code from. Code: alarm_mgr.c line 77.

## Verification

Test: the unit tests of this function.

## Safety

DAL A (catastrophic failure condition), assigned to `alarm-sw-design` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).
