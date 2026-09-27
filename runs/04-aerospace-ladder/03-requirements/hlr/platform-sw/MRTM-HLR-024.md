---
id: "MRTM-HLR-024"
type: "hlr"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-04)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: []
safetyClass: "A"
implemented_by: []
derived: true
---

# Task priorities keep the alarm first

## Description

The platform software item shall run the alarm, supervisor and sensor tasks on core 1 at priorities 18 to 22, above every task of the display, record and export software items.

## Rationale

DO-178C §5.1.2 DERIVED requirement: no parent. It comes from the PSSA's partitioning decision (08-safety/02-pssa.md §4): lower-DAL items share the processor, so their tasks must not delay the DAL A items. Fed back to the safety assessment there.

## Verification

Inspection of the task table in MrtmSoftware and mrtm_config.h; analysis of worst-case response.

## Safety

DAL A (catastrophic failure condition), assigned to `platform-sw` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).
