---
id: "MRTM-HLR-028"
type: "hlr"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-04)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SAF-012","MRTM-SYS-022","MRTM-MNT-002"]
safetyClass: "B"
implemented_by: []
derived: false
---

# Maintenance messages

## Description

The display software item shall show the calibration-due and log-capacity messages when their flags are set, and the battery level in steps of 10 %.

## Rationale

DO-178C §5.1 HLR. The calibration-due message is the only signal of FC-3, which is why this item is DAL B (PSSA).

## Verification

Test: unit tests of display_mgr.

## Safety

DAL B (hazardous failure condition), assigned to `display-sw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).
