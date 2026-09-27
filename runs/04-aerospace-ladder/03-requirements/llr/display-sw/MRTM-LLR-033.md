---
id: "MRTM-LLR-033"
type: "llr"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-04)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-HLR-027"]
safetyClass: "B"
implemented_by: []
derived: false
---

# Start screen

## Description

display_mgr_init shall start the screen with the band and version shown for 3 s.

## Rationale

DO-178C §5.2 LLR: enough detail to code from. Code: display_mgr.cpp line 218.

## Verification

Test: the unit tests of this function.

## Safety

DAL B (hazardous failure condition), assigned to `display-sw-design` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).
