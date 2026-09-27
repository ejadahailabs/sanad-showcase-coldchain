---
id: "MRTM-LLR-044"
type: "llr"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-04)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-HLR-035"]
safetyClass: "D"
implemented_by: []
derived: false
---

# Sector read

## Description

usb_export_read10 shall render the requested sector of the FAT12 volume from the ring.

## Rationale

DO-178C §5.2 LLR: enough detail to code from. Code: usb_export.c line 86.

## Verification

Test: the unit tests of this function.

## Safety

DAL D (minor failure condition), assigned to `export-sw-design` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).
