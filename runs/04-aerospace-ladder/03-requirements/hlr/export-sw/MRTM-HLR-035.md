---
id: "MRTM-HLR-035"
type: "hlr"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-04)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SYS-014","MRTM-IFC-003","MRTM-PRF-003"]
safetyClass: "D"
implemented_by: []
derived: false
---

# Read-only volume

## Description

The export software item shall present the event log as a read-only mass-storage volume within 30 s of connection.

## Rationale

DO-178C §5.1 HLR. Re-homed from run 2 MRTM-USI-001 and MRTM-LOG-003.

## Verification

Test: unit tests of usb_export.

## Safety

DAL D (minor failure condition), assigned to `export-sw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).
