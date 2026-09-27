---
id: "MRTM-SRS-010"
type: "software-system"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-05)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SYS-011","MRTM-PRF-004"]
safetyClass: "C"
derived: false
---

# SRS temperature shown

## Description

The software system shall show the current temperature at 0.1 °C resolution, refreshed at a period of 10 s.

## Rationale

§5.2.2 c) user interface.

## Verification

Test: SP-09.

## Safety

Class C (IEC 62304 §4.3): a failure of this software system can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (HAZ-001…HAZ-008, severity serious).
