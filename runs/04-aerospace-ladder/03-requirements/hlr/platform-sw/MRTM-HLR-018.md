---
id: "MRTM-HLR-018"
type: "hlr"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-04)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SAF-007","MRTM-SAF-023"]
safetyClass: "A"
implemented_by: []
derived: false
---

# Power-up tests

## Description

The platform software item shall test the buzzer within 5 s and the backup alarm within 15 s of power-up.

## Rationale

DO-178C §5.1 HLR. Re-homed from run 2 MRTM-SVI-002 and MRTM-SUP-002.

## Verification

Test: unit tests of diagnostics.

## Safety

DAL A (catastrophic failure condition), assigned to `platform-sw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).
