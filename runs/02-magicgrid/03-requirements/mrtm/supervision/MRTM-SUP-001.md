---
id: "MRTM-SUP-001"
type: "supervision"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, MODEL-LEVELS)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SAF-004","MRTM-SAF-006"]
safetyClass: "C"
derived: false
---

# Supervision restart

## Description

The supervision subsystem shall restart the monitoring software within 2 s of a software watchdog timeout.

## Rationale

Risk control of HAZ-003 (firmware hang).

## Verification

Test: SP-03.

## Safety

Class C (IEC 62304 §4.3): a failure of this subsystem can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (hazard chain HAZ-001…HAZ-008, severity serious). Same class as its parent node.
