---
id: "MRTM-SRS-018"
type: "software-system"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-05)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SAF-007","MRTM-SAF-023"]
safetyClass: "C"
derived: false
---

# SRS power-up tests

## Description

The software system shall test the buzzer within 5 s and the backup alarm within 15 s of power-up.

## Rationale

§5.2.3 risk control for a silent annunciator (HAZ-006).

## Verification

Test: SP-05.

## Safety

Class C (IEC 62304 §4.3): a failure of this software system can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (HAZ-001…HAZ-008, severity serious).
