---
id: "MRTM-SW-005"
type: "software"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-03-ARCADIA)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-LA-001"]
safetyClass: "C"
derived: false
implemented_by: []
---

# Excursion item early report

## Description

The excursion item shall report the early excursion within the 2 s sample period of the first valid sample outside the allowed band.

## Rationale

Starts the low-priority signal without waiting for confirmation (ADR-0030). A compile-time check holds sample + conversion + alarm cycle ≤ 5 s.

## Verification

Test: unit tests of limit_evaluator, including the budget test.

## Safety

Class C (IEC 62304 §4.3): a failure of this software item can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (hazard chain HAZ-001…HAZ-008, severity serious). Same class as the layer element above it.
