---
id: "MRTM-HLR-037"
type: "hlr"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-04)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: []
safetyClass: "D"
implemented_by: []
derived: true
---

# Read the log only through the accessor

## Description

The export software item shall read the event log only through the record software item's read accessor.

## Rationale

DO-178C §5.1.2 DERIVED requirement: no parent. It comes from the PSSA's partitioning decision (08-safety/02-pssa.md §4): a DAL D item must not write DAL C data. Fed back to the safety assessment there.

## Verification

Inspection of usb_export.c includes and calls.

## Safety

DAL D (minor failure condition), assigned to `export-sw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).
