---
id: "MRTM-EXI-001"
type: "excursion-item"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-05)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SRS-002"]
safetyClass: "C"
derived: false
implemented_by: []
---

# Excursion item early report

## Description

The excursion item shall report the early excursion within the 2 s sample period of the first valid sample outside the allowed band.

## Rationale

The early tier of the two-tier alarm (ADR-0030).

## Verification

Test: unit tests of limit_evaluator.

## Safety

Class C (IEC 62304 §4.3): a failure of this software item can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (HAZ-001…HAZ-008, severity serious).
