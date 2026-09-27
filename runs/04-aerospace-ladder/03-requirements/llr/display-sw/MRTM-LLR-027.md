---
id: "MRTM-LLR-027"
type: "llr"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-04)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-HLR-025"]
safetyClass: "B"
implemented_by: []
derived: false
---

# Display step

## Description

app_display_step shall copy the alarm state into the view and redraw the frame.

## Rationale

DO-178C §5.2 LLR: enough detail to code from. Code: mrtm_app.c line 138.

## Verification

Test: the unit tests of this function.

## Safety

DAL B (hazardous failure condition), assigned to `display-sw-design` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).
