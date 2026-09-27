---
id: "MRTM-ALM-001"
type: "alarm"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, MODEL-LEVELS)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SYS-024"]
safetyClass: "C"
derived: false
---

# Alarm early signal latency

## Description

The alarm subsystem shall show the low-priority excursion alarm signal within 1 s of the first valid out-of-band sample.

## Rationale

The alarm share of the 5 s early-alarm budget (sensing 2.75 s + alarm 1 s = 3.75 s, ADR-0030). Low priority in the sense of IEC 60601-1-8; source: IEC 60601-1-8 (edition assumed :2006+A1:2012+A2:2020, to be confirmed against the customer's edition).

## Verification

Test: unit test of the budget sum; unit test of the early state; SP-01.11.

## Safety

Class C (IEC 62304 §4.3): a failure of this subsystem can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (hazard chain HAZ-001…HAZ-008, severity serious). Same class as its parent node.
