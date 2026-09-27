---
id: "MRTM-ALM-002"
type: "alarm"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, MODEL-LEVELS)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SYS-002"]
safetyClass: "C"
derived: false
---

# Alarm excursion confirmation

## Description

The alarm subsystem shall confirm the excursion when 31 consecutive valid samples, spanning 60 s, are outside the allowed band.

## Rationale

31 samples at 2 s span 60 s: the door-opening filter of MRTM-STK-002 (ADR-0031). 60 s is assumption A-04; source: WHO PQS E006 / CDC Vaccine Storage and Handling Toolkit (assumed sources, edition and clause to confirm).

## Verification

Test: unit tests of limit_evaluator; integration INT-01.

## Safety

Class C (IEC 62304 §4.3): a failure of this subsystem can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (hazard chain HAZ-001…HAZ-008, severity serious). Same class as its parent node.
