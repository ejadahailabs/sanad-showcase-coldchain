---
id: "MRTM-HLR-012"
type: "hlr"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-04)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SAF-002","MRTM-SAF-011"]
safetyClass: "A"
implemented_by: []
derived: false
---

# Probe fault tone

## Description

While a probe fault is declared, the alarm software item shall drive the buzzer 1 s on and 1 s off.

## Rationale

DO-178C §5.1 HLR. The fault tone differs from the excursion tone (HAZ-002).

## Verification

Test: unit tests of alarm_mgr.

## Safety

DAL A (catastrophic failure condition), assigned to `alarm-sw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).
