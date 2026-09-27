---
id: "MRTM-SRS-009"
type: "software-system"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-05)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SYS-005","MRTM-SYS-007"]
safetyClass: "C"
derived: false
---

# SRS excursion warning

## Description

The software system shall show the excursion warning within 1 s of excursion confirmation until the excursion ends.

## Rationale

§5.2.2 c) user interface.

## Verification

Test: integration chain INT-01.

## Safety

Class C (IEC 62304 §4.3): a failure of this software system can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (HAZ-001…HAZ-008, severity serious).
