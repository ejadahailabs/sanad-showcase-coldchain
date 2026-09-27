---
id: "MRTM-LLR-008"
type: "llr"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-04)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-HLR-004","MRTM-HLR-005","MRTM-HLR-006"]
safetyClass: "A"
implemented_by: []
derived: false
---

# Consecutive counts

## Description

limit_evaluator_step shall ignore an invalid sample, return EARLY at the first valid out-of-band sample, CONFIRMED at the 31st consecutive one, and ENDED at the 31st consecutive in-band sample of an excursion.

## Rationale

DO-178C §5.2 LLR: enough detail to code from. Code: limit_evaluator.c line 24.

## Verification

Test: the unit tests of this function.

## Safety

DAL A (catastrophic failure condition), assigned to `alarm-sw-design` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).
