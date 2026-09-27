---
id: "MRTM-LLR-014"
type: "llr"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-04)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-HLR-009"]
safetyClass: "A"
implemented_by: []
derived: false
---

# Debounce timer

## Description

alarm_mgr_button_isr shall re-arm a 50 ms one-shot timer on every button edge.

## Rationale

DO-178C §5.2 LLR: enough detail to code from. Code: alarm_mgr.c line 155.

## Verification

Test: the unit tests of this function.

## Safety

DAL A (catastrophic failure condition), assigned to `alarm-sw-design` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).
