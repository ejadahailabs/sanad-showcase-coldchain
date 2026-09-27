---
id: "MRTM-LA-003"
type: "logical"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-03-ARCADIA)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SYS-003","MRTM-PRF-002"]
safetyClass: "C"
derived: false
---

# Alarm buzzer latency

## Description

The alarm logical component shall sound the buzzer within 1 s of excursion confirmation.

## Rationale

The software share of the 5 s confirmation-to-buzzer budget is one 1 s alarm cycle (ADR-0020); the rest is margin.

## Verification

Test: unit test of the alarm item; integration INT-01.

## Safety

Class C (IEC 62304 §4.3): a failure of this logical component can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (hazard chain HAZ-001…HAZ-008, severity serious). Same class as the layer element above it.
