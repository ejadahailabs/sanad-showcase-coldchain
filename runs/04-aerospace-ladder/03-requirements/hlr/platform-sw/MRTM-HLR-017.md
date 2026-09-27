---
id: "MRTM-HLR-017"
type: "hlr"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-04)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SAF-004"]
safetyClass: "A"
implemented_by: []
derived: false
---

# Task watchdog restart

## Description

The platform software item shall restart the monitoring software within 2 s of a task watchdog timeout.

## Rationale

DO-178C §5.1 HLR. Re-homed from run 2 MRTM-SUP-001.

## Verification

Test: unit tests of wdt_kicker; SP-06.

## Safety

DAL A (catastrophic failure condition), assigned to `platform-sw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).
