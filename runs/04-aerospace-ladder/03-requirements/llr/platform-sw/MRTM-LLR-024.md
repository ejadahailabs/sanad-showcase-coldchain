---
id: "MRTM-LLR-024"
type: "llr"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-04)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-HLR-021"]
safetyClass: "A"
implemented_by: []
derived: false
---

# Battery low latch

## Description

power_mon_step shall post the battery-low signal once after 2 consecutive readings below 3400 mV.

## Rationale

DO-178C §5.2 LLR: enough detail to code from. Code: power_mon.c line 31.

## Verification

Test: the unit tests of this function.

## Safety

DAL A (catastrophic failure condition), assigned to `platform-sw-design` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).
