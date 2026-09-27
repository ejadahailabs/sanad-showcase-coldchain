---
id: "MRTM-LLR-032"
type: "llr"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-04)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-HLR-026","MRTM-HLR-025","MRTM-HLR-027"]
safetyClass: "B"
implemented_by: []
derived: false
---

# Frame render

## Description

renderFrame shall refresh the temperature at most once per 10 s and choose the banner most urgent first.

## Rationale

DO-178C §5.2 LLR: enough detail to code from. Code: display_mgr.cpp line 169.

## Verification

Test: the unit tests of this function.

## Safety

DAL B (hazardous failure condition), assigned to `display-sw-design` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).
