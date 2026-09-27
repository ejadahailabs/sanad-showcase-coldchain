---
id: "MRTM-HLR-014"
type: "hlr"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-04)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SAF-006"]
safetyClass: "A"
implemented_by: []
derived: false
---

# Alarm survives restart

## Description

The alarm software item shall sound an unacknowledged excursion alarm again within 2 s of a restart.

## Rationale

DO-178C §5.1 HLR.

## Verification

Test: unit tests of alarm_mgr; integration INT-04.

## Safety

DAL A (catastrophic failure condition), assigned to `alarm-sw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).
