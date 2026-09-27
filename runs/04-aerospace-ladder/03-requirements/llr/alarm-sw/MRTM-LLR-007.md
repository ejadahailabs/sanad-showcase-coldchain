---
id: "MRTM-LLR-007"
type: "llr"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-04)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-HLR-005"]
safetyClass: "A"
implemented_by: []
derived: false
---

# Band set

## Description

limit_evaluator_init shall set the low and high band limits from the loaded band and the hysteresis to 0.

## Rationale

DO-178C §5.2 LLR: enough detail to code from. Code: limit_evaluator.c line 12.

## Verification

Test: the unit tests of this function.

## Safety

DAL A (catastrophic failure condition), assigned to `alarm-sw-design` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).
