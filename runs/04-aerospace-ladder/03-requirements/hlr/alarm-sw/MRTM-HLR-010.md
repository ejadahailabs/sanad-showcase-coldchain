---
id: "MRTM-HLR-010"
type: "hlr"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-04)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SAF-010"]
safetyClass: "A"
implemented_by: []
derived: false
---

# Alarm heartbeat

## Description

The alarm software item shall advance its heartbeat counter once per 1 s alarm cycle.

## Rationale

DO-178C §5.1 HLR. Re-homed from run 2 MRTM-ALI-004. The platform software item stops the watchdog pulses when it stops (HLR P1).

## Verification

Test: unit tests of alarm_mgr.

## Safety

DAL A (catastrophic failure condition), assigned to `alarm-sw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).
