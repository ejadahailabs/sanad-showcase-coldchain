---
id: "MRTM-HLR-020"
type: "hlr"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-04)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SAF-005","MRTM-SYS-023"]
safetyClass: "A"
implemented_by: []
derived: false
---

# Mains events

## Description

The platform software item shall post the mains-lost and mains-restored events within 1 s of the mains sense edge.

## Rationale

DO-178C §5.1 HLR. Re-homed from run 2 MRTM-PWI-001 and MRTM-PWR-003.

## Verification

Test: unit tests of power_mon; integration INT-05.

## Safety

DAL A (catastrophic failure condition), assigned to `platform-sw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).
