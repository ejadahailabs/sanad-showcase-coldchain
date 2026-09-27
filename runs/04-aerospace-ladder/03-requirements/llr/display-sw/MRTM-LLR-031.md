---
id: "MRTM-LLR-031"
type: "llr"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-04)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-HLR-029"]
safetyClass: "B"
implemented_by: []
derived: false
---

# Bus recovery

## Description

After a 100 ms bus timeout the display driver shall send 9 clock pulses and re-initialise the panel.

## Rationale

DO-178C §5.2 LLR: enough detail to code from. Code: display_mgr.cpp line 157.

## Verification

Test: the unit tests of this function.

## Safety

DAL B (hazardous failure condition), assigned to `display-sw-design` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).
