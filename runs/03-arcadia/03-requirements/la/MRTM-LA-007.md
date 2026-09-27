---
id: "MRTM-LA-007"
type: "logical"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-03-ARCADIA)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SYS-018"]
safetyClass: "C"
derived: false
---

# Alarm excursion end

## Description

The alarm logical component shall end the excursion after 31 consecutive valid samples, spanning 60 s, inside the allowed band.

## Rationale

Symmetric with MRTM-LA-002, so a sensor reading near the edge does not toggle the alarm (ADR-0031).

## Verification

Test: unit tests of limit_evaluator.

## Safety

Class C (IEC 62304 §4.3): a failure of this logical component can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (hazard chain HAZ-001…HAZ-008, severity serious). Same class as the layer element above it.
