---
id: "MRTM-ALM-005"
type: "alarm"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, MODEL-LEVELS)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SAF-009","MRTM-SAF-010"]
safetyClass: "C"
derived: false
---

# Alarm backup path

## Description

The alarm subsystem shall sound the buzzer from the backup alarm within 10 s of the last watchdog service pulse.

## Rationale

Risk control of HAZ-003 (firmware hang), independent of the processor (ADR-0013).

## Verification

Test: integration INT-02; SP-03.

## Safety

Class C (IEC 62304 §4.3): a failure of this subsystem can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (hazard chain HAZ-001…HAZ-008, severity serious). Same class as its parent node.
