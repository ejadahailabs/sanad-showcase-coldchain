---
id: "MRTM-ALM-007"
type: "alarm"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, MODEL-LEVELS)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SYS-018"]
safetyClass: "C"
derived: false
---

# Alarm excursion end

## Description

The alarm subsystem shall end the excursion after 31 consecutive valid samples inside the allowed band.

## Rationale

Symmetric with ALM-002, so a sensor reading near the edge does not toggle the alarm (ADR-0031).

## Verification

Test: unit tests of limit_evaluator.

## Safety

Class C (IEC 62304 §4.3): a failure of this subsystem can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (hazard chain HAZ-001…HAZ-008, severity serious). Same class as its parent node.
