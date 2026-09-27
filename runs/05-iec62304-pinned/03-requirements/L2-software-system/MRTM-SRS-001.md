---
id: "MRTM-SRS-001"
type: "software-system"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-05)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SYS-001"]
safetyClass: "C"
derived: false
---

# SRS sample period

## Description

The software system shall read one fridge air temperature sample from the probe at a period of 2 s.

## Rationale

IEC 62304 §5.2.2 a) functional: the software share of the device sampling period. 2 s is ADR-0031.

## Verification

Test: SP-01 bench trace of sample time stamps.

## Safety

Class C (IEC 62304 §4.3): a failure of this software system can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (HAZ-001…HAZ-008, severity serious).
