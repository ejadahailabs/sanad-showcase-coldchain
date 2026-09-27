---
id: "MRTM-HLR-021"
type: "hlr"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-04)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SAF-008"]
safetyClass: "A"
implemented_by: []
derived: false
---

# Battery low

## Description

The platform software item shall post the battery-low signal after 2 consecutive battery readings below 3.4 V.

## Rationale

DO-178C §5.1 HLR. Re-homed from run 2 MRTM-PWI-002.

## Verification

Test: unit tests of power_mon.

## Safety

DAL A (catastrophic failure condition), assigned to `platform-sw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).
