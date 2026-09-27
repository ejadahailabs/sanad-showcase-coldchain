---
id: "MRTM-SEN-002"
type: "sensing"
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

# Sensing sample latency

## Description

The sensing subsystem shall deliver each sample within 750 ms of the start of its conversion.

## Rationale

The sensing share of the 5 s early-alarm budget: 2 s wait + 750 ms conversion; the alarm subsystem holds the remaining 1 s (ADR-0030). 750 ms is the 12-bit conversion time of the chosen probe class (A-40).

## Verification

Test: unit test of the budget sum; SP-01.11 timed trials.

## Safety

Class C (IEC 62304 §4.3): a failure of this subsystem can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (hazard chain HAZ-001…HAZ-008, severity serious). Same class as its parent node.
