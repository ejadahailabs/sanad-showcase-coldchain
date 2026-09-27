---
id: "MRTM-SUP-002"
type: "supervision"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, MODEL-LEVELS)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SAF-007","MRTM-SAF-023"]
safetyClass: "C"
derived: false
---

# Supervision power-up tests

## Description

The supervision subsystem shall test the buzzer within 5 s and the backup alarm within 15 s of power-up.

## Rationale

A silent alarm path must be found at power-up, not at the next excursion (HAZ-006).

## Verification

Test: unit tests of the supervisor item; SP-05.

## Safety

Class C (IEC 62304 §4.3): a failure of this subsystem can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (hazard chain HAZ-001…HAZ-008, severity serious). Same class as its parent node.
