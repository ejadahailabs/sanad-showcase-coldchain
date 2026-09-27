---
id: "MRTM-SW-006"
type: "software"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-03-ARCADIA)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-LA-002"]
safetyClass: "C"
derived: false
implemented_by: []
---

# Excursion item confirmation

## Description

The excursion item shall report the confirmed excursion at the 31st consecutive valid sample outside the allowed band, 60 s after the first of them.

## Rationale

The 31-sample count is a constant (MRTM_CONFIRM_SAMPLES) that the budget test ties to the 60 s span.

## Verification

Test: unit tests of limit_evaluator, including the budget test.

## Safety

Class C (IEC 62304 §4.3): a failure of this software item can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (hazard chain HAZ-001…HAZ-008, severity serious). Same class as the layer element above it.
