---
id: "MRTM-LLR-043"
type: "llr"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-04)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-HLR-035","MRTM-HLR-037"]
safetyClass: "D"
implemented_by: []
derived: false
---

# Volume start

## Description

usb_export_init shall keep the ring's read accessor and start the mass-storage device.

## Rationale

DO-178C §5.2 LLR: enough detail to code from. Code: usb_export.c line 77.

## Verification

Test: the unit tests of this function.

## Safety

DAL D (minor failure condition), assigned to `export-sw-design` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).
