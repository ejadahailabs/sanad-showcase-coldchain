---
id: "MRTM-HLR-031"
type: "hlr"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-04)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SYS-015"]
safetyClass: "C"
implemented_by: []
derived: false
---

# Newest 10000 kept

## Description

When the event log holds 10000 records, the record software item shall write each new record over the oldest one.

## Rationale

DO-178C §5.1 HLR. Re-homed from run 2 MRTM-LGI-002 and MRTM-LOG-002.

## Verification

Test: unit tests of history_ring.

## Safety

DAL C (major failure condition), assigned to `record-sw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).
