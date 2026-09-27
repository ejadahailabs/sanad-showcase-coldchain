---
id: "MRTM-HLR-026"
type: "hlr"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-04)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SYS-011","MRTM-PRF-004"]
safetyClass: "B"
implemented_by: []
derived: false
---

# Temperature on screen

## Description

The display software item shall show the temperature at 0.1 °C resolution in digits 32 pixels tall and change it at most once per 10 s.

## Rationale

DO-178C §5.1 HLR. Re-homed from run 2 MRTM-DSI-002.

## Verification

Test: unit tests of display_mgr.

## Safety

DAL B (hazardous failure condition), assigned to `display-sw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).
