---
id: "MRTM-EXI-003"
type: "excursion-item"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-05)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SRS-004"]
safetyClass: "C"
derived: false
implemented_by: []
---

# Excursion item end

## Description

The excursion item shall report the excursion end at the 31st consecutive valid sample inside the allowed band, 60 s after the first of them.

## Rationale

Same filter on the way back.

## Verification

Test: unit tests of limit_evaluator.

## Safety

Class C (IEC 62304 §4.3): a failure of this software item can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (HAZ-001…HAZ-008, severity serious).
