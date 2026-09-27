---
id: "MRTM-SUP-003"
type: "supervision"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, MODEL-LEVELS)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SAF-017","MRTM-SYS-017"]
safetyClass: "C"
derived: false
---

# Supervision band check

## Description

The supervision subsystem shall refuse a stored allowed band that fails its CRC-32 check.

## Rationale

No band is better than a wrong band: the monitor goes fail-safe and sounds (HAZ-007).

## Verification

Test: integration INT-03.

## Safety

Class C (IEC 62304 §4.3): a failure of this subsystem can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (hazard chain HAZ-001…HAZ-008, severity serious). Same class as its parent node.
