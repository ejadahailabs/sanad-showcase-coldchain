---
id: "MRTM-LLR-040"
type: "llr"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-04)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-HLR-032"]
safetyClass: "C"
implemented_by: []
derived: false
---

# Clock start

## Description

rtc_clock_init shall read the clock and log a clock fault when the oscillator-stop flag is set.

## Rationale

DO-178C §5.2 LLR: enough detail to code from. Code: rtc_clock.c line 10.

## Verification

Test: the unit tests of this function.

## Safety

DAL C (major failure condition), assigned to `record-sw-design` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).
