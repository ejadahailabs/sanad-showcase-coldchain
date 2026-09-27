---
id: "MRTM-LLR-041"
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

# Clock read

## Description

rtc_clock_now shall return the last UTC copy read from the clock.

## Rationale

DO-178C §5.2 LLR: enough detail to code from. Code: rtc_clock.c line 23.

## Verification

Test: the unit tests of this function.

## Safety

DAL C (major failure condition), assigned to `record-sw-design` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).
