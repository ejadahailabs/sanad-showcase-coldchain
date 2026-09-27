---
id: "MRTM-LLR-017"
type: "llr"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-04)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-HLR-017"]
safetyClass: "A"
implemented_by: []
derived: false
---

# Task watchdog

## Description

wdt_kicker_init shall arm the task watchdog at 5 s with a panic restart.

## Rationale

DO-178C §5.2 LLR: enough detail to code from. Code: wdt_kicker.c line 10.

## Verification

Test: the unit tests of this function.

## Safety

DAL A (catastrophic failure condition), assigned to `platform-sw-design` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).
