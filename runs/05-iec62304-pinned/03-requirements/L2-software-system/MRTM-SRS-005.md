---
id: "MRTM-SRS-005"
type: "software-system"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-05)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SYS-012","MRTM-SAF-003"]
safetyClass: "C"
derived: false
---

# SRS invalid sample

## Description

The software system shall mark a sample invalid when its CRC-8 check fails or its value is outside -30 °C to 50 °C.

## Rationale

§5.2.3 risk control in software (HAZ-001, HAZ-004): an invalid sample never counts toward an excursion (A-29).

## Verification

Test: SP-02.

## Safety

Class C (IEC 62304 §4.3): a failure of this software system can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (HAZ-001…HAZ-008, severity serious).
