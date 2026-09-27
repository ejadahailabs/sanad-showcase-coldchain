---
id: "MRTM-HLR-004"
type: "hlr"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-04)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SYS-024"]
safetyClass: "A"
implemented_by: []
derived: false
---

# Early excursion report

## Description

The alarm software item shall report the early excursion at the first valid sample outside the allowed band.

## Rationale

DO-178C §5.1 HLR. Re-homed from run 2 MRTM-EXI-001 (ADR-0030).

## Verification

Test: unit tests of limit_evaluator.

## Safety

DAL A (catastrophic failure condition), assigned to `alarm-sw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).
