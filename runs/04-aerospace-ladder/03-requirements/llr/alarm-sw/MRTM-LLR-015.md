---
id: "MRTM-LLR-015"
type: "llr"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-04)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-HLR-009","MRTM-HLR-015"]
safetyClass: "A"
implemented_by: []
derived: false
---

# Accepted press

## Description

alarm_mgr_button_debounced shall post ACK once for a press still stable after 50 ms, and nothing while the button is declared stuck.

## Rationale

DO-178C §5.2 LLR: enough detail to code from. Code: alarm_mgr.c line 163.

## Verification

Test: the unit tests of this function.

## Safety

DAL A (catastrophic failure condition), assigned to `alarm-sw-design` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).
