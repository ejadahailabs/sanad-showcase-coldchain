---
id: "MRTM-HLR-005"
type: "hlr"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-04)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SYS-002"]
safetyClass: "A"
implemented_by: []
derived: false
---

# Confirmed excursion report

## Description

The alarm software item shall report the confirmed excursion at the 31st consecutive valid sample outside the allowed band, 60 s after the first of them.

## Rationale

DO-178C §5.1 HLR. Re-homed from run 2 MRTM-EXI-002 and MRTM-ALM-002 (ADR-0031).

## Verification

Test: unit tests of limit_evaluator; integration INT-01.

## Safety

DAL A (catastrophic failure condition), assigned to `alarm-sw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).
