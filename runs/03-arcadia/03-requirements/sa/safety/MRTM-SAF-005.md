---
id: "MRTM-SAF-005"
type: "safety"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-03-ARCADIA)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SYS-016"]
safetyClass: "C"
hazard: ["HAZ-005","HAZ-008"]
derived: false
allocated_to: []

implemented_by: []
---

# Log power loss

## Description

The monitor shall log the power loss event within 1 s of mains power loss.

## Rationale

Risk control for hazard 'unexplained gap in the history'.

## Safety

Mitigates HAZ-005 and HAZ-008: the power loss is on record, so the audit shows when the monitor was on battery.

## Verification

Test: remove mains power and read the logged event.
