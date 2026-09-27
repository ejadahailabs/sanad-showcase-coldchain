---
id: "MRTM-DGN-001"
type: "diagnostics"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-05)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SVI-002"]
safetyClass: "C"
derived: false
implemented_by: []
---

# Diagnostics power-up verdict

## Description

The diagnostics unit shall fail the power-up test when the buzzer current is not seen within 5 s or the backup alarm is not heard within 15 s.

## Rationale

Contract: 10-src/firmware/components/diagnostics/contracts.md.

## Verification

Test: unit tests.

## Safety

Class C: the class of its item `supervisor-item` (IEC 62304 §4.3 — a unit takes its item's class).
