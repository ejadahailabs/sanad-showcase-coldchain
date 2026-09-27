---
id: "MRTM-HLR-023"
type: "hlr"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-04)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SAF-016","MRTM-MNT-003","MRTM-SAF-006"]
safetyClass: "A"
implemented_by: []
derived: false
---

# Power-up order

## Description

At power-up the platform software item shall restore the alarm state, read the clock and the band, and start monitoring only after the power-up tests pass.

## Rationale

DO-178C §5.1 HLR.

## Verification

Test: integration INT-03, INT-04.

## Safety

DAL A (catastrophic failure condition), assigned to `platform-sw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).
