---
id: "MRTM-EXI-002"
type: "excursion-item"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-05)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SRS-003"]
safetyClass: "C"
derived: false
implemented_by: []
---

# Excursion item confirmation

## Description

The excursion item shall report the confirmed excursion at the 31st consecutive valid sample outside the allowed band, 60 s after the first of them.

## Rationale

Filters door openings (STK-002, A-04).

## Verification

Test: unit tests of limit_evaluator.

## Safety

Class C (IEC 62304 §4.3): a failure of this software item can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (HAZ-001…HAZ-008, severity serious).
