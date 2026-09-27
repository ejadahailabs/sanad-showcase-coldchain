---
id: "MRTM-SRS-006"
type: "software-system"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-05)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SYS-003","MRTM-PRF-002"]
safetyClass: "C"
derived: false
---

# SRS buzzer on

## Description

The software system shall switch the buzzer drive on within 1 s of excursion confirmation.

## Rationale

§5.2.2 b): the software share of the 65 s buzzer budget.

## Verification

Test: integration chain INT-01.

## Safety

Class C (IEC 62304 §4.3): a failure of this software system can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (HAZ-001…HAZ-008, severity serious).
