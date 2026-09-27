---
id: "MRTM-EXI-003"
type: "excursion-item"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, MODEL-LEVELS)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-ALM-007"]
safetyClass: "C"
derived: false
implemented_by: []
---

# Excursion item end

## Description

The excursion item shall report the excursion end at the 31st consecutive valid sample inside the allowed band.

## Rationale

Same count as confirmation, so an excursion needs 60 s of good air to end.

## Verification

Test: unit tests of limit_evaluator.

## Safety

Class C (IEC 62304 §4.3): a failure of this software item can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (hazard chain HAZ-001…HAZ-008, severity serious). Same class as its parent node.
