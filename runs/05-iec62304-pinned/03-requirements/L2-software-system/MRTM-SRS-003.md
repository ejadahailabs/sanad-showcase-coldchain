---
id: "MRTM-SRS-003"
type: "software-system"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-05)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SYS-002"]
safetyClass: "C"
derived: false
---

# SRS excursion confirmation

## Description

The software system shall confirm the excursion when 31 consecutive valid samples, spanning 60 s, are outside the allowed band.

## Rationale

§5.2.2 a): the device confirmation time, counted in samples at the 2 s period (A-04, ADR-0031).

## Verification

Test: integration chain INT-01.

## Safety

Class C (IEC 62304 §4.3): a failure of this software system can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (HAZ-001…HAZ-008, severity serious).
