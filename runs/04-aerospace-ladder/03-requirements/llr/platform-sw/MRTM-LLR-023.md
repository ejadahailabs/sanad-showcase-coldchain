---
id: "MRTM-LLR-023"
type: "llr"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-04)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-HLR-020"]
safetyClass: "A"
implemented_by: []
derived: false
---

# Mains edge

## Description

power_mon_isr shall post a power-loss or power-restore event on each change of the mains sense line.

## Rationale

DO-178C §5.2 LLR: enough detail to code from. Code: power_mon.c line 21.

## Verification

Test: the unit tests of this function.

## Safety

DAL A (catastrophic failure condition), assigned to `platform-sw-design` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).
