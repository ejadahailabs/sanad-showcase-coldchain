---
id: "MRTM-SRS-004"
type: "software-system"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-05)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SYS-018"]
safetyClass: "C"
derived: false
---

# SRS excursion end

## Description

The software system shall end the excursion after 31 consecutive valid samples, spanning 60 s, inside the allowed band.

## Rationale

§5.2.2 a): the device end-of-excursion rule in samples.

## Verification

Test: unit test of the evaluator.

## Safety

Class C (IEC 62304 §4.3): a failure of this software system can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (HAZ-001…HAZ-008, severity serious).
