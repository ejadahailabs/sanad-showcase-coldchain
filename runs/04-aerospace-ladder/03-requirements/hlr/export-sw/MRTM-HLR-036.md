---
id: "MRTM-HLR-036"
type: "hlr"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-04)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SYS-014"]
safetyClass: "D"
implemented_by: []
derived: false
---

# Host writes refused

## Description

When the USB host sends a write request, the export software item shall refuse the write.

## Rationale

DO-178C §5.1 HLR. Re-homed from run 2 MRTM-USI-002.

## Verification

Test: unit tests of usb_export.

## Safety

DAL D (minor failure condition), assigned to `export-sw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).
