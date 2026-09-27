---
id: "MRTM-HLR-032"
type: "hlr"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-04)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SYS-020","MRTM-SAF-022","MRTM-SYS-023"]
safetyClass: "C"
implemented_by: []
derived: false
---

# Time stamps

## Description

The record software item shall time-stamp each record with UTC at 1 s resolution and log a clock fault when the clock oscillator has stopped.

## Rationale

DO-178C §5.1 HLR. Re-homed from run 2 MRTM-LOG-004.

## Verification

Test: unit tests of event_log and rtc_clock.

## Safety

DAL C (major failure condition), assigned to `record-sw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).
