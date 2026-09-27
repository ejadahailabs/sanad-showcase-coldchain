---
id: "MRTM-HLR-016"
type: "hlr"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-04)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SAF-010","MRTM-SAF-009"]
safetyClass: "A"
implemented_by: []
derived: false
---

# Watchdog tied to the heartbeat

## Description

The platform software item shall stop the watchdog service pulses within 2 s of the alarm heartbeat stopping.

## Rationale

DO-178C §5.1 HLR. Re-homed from run 2 MRTM-SVI-001 and MRTM-SUP-004.

## Verification

Test: unit tests of wdt_kicker; integration INT-02.

## Safety

DAL A (catastrophic failure condition), assigned to `platform-sw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).
