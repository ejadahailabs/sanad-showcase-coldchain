---
id: "MRTM-ALM-008"
type: "alarm"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, MODEL-LEVELS)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SAF-013"]
safetyClass: "C"
derived: false
---

# Alarm backup hold-up

## Description

The alarm subsystem shall sound the backup alarm for 60 s or more after the loss of both mains and battery power.

## Rationale

Risk control of HAZ-005: the last warning when all power is gone (ADR-0013). 60 s is assumption A-18.

## Verification

Test: SP-03 with both supplies removed.

## Safety

Class C (IEC 62304 §4.3): a failure of this subsystem can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (hazard chain HAZ-001…HAZ-008, severity serious). Same class as its parent node.
