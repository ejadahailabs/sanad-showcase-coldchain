---
id: "MRTM-HLR-029"
type: "hlr"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-04)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SAF-021"]
safetyClass: "B"
implemented_by: []
derived: false
---

# Display bus recovery

## Description

The display software item shall recover the display bus within 1 s of a 100 ms bus timeout.

## Rationale

DO-178C §5.1 HLR.

## Verification

Test: unit tests of display_mgr.

## Safety

DAL B (hazardous failure condition), assigned to `display-sw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).
