---
id: "MRTM-HLR-022"
type: "hlr"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-04)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SAF-012","MRTM-SYS-022","MRTM-MNT-002"]
safetyClass: "A"
implemented_by: []
derived: false
---

# Maintenance flags

## Description

The platform software item shall set the calibration-due flag 365 days after the stored calibration date and the log-capacity flag at 9000 records.

## Rationale

DO-178C §5.1 HLR. The display software item shows the flags (HLR D4).

## Verification

Test: unit tests of display_mgr through the view.

## Safety

DAL A (catastrophic failure condition), assigned to `platform-sw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).
