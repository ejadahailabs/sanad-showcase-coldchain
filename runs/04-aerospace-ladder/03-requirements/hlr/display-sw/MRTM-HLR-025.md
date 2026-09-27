---
id: "MRTM-HLR-025"
type: "hlr"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-04)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SYS-005","MRTM-SYS-007","MRTM-SYS-013"]
safetyClass: "B"
implemented_by: []
derived: false
---

# Warning and fault messages

## Description

The display software item shall show the excursion warning for the whole excursion and the probe fault message within 1 s of the state change.

## Rationale

DO-178C §5.1 HLR. Re-homed from run 2 MRTM-DSI-001 and MRTM-DSP-001, MRTM-DSP-003.

## Verification

Test: unit tests of display_mgr.

## Safety

DAL B (hazardous failure condition), assigned to `display-sw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).
