---
id: "MRTM-SRS-002"
type: "software-system"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-05)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SYS-024"]
safetyClass: "C"
derived: false
---

# SRS early alarm signal

## Description

The software system shall command the low-priority excursion alarm signal within 1 s of the first valid out-of-band sample.

## Rationale

§5.2.2 b) performance: the software share of the 5 s early-alarm budget (2 s wait + 750 ms conversion + 1 s; ADR-0030).

## Verification

Test: unit test of the budget sum; SP-01.11 timed trials.

## Safety

Class C (IEC 62304 §4.3): a failure of this software system can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (HAZ-001…HAZ-008, severity serious).
