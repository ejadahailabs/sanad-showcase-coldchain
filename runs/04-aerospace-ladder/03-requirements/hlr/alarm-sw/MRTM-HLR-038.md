---
id: "MRTM-HLR-038"
type: "hlr"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-04)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SAF-008","MRTM-SAF-017"]
safetyClass: "A"
implemented_by: []
derived: false
---

# Buzzer in fail-safe

## Description

While a fail-safe or battery-low signal is set, the alarm software item shall drive the buzzer.

## Rationale

DO-178C §5.1 HLR. Split from A15 in gate round 1 (atomicity).

## Verification

Test: unit tests of alarm_mgr.

## Safety

DAL A (catastrophic failure condition), assigned to `alarm-sw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).
