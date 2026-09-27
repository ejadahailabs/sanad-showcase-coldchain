---
id: "MRTM-SRS-017"
type: "software-system"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-05)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SAF-010","MRTM-SAF-009"]
safetyClass: "C"
derived: false
---

# SRS watchdog service stop

## Description

The software system shall stop the watchdog service pulses within 2 s of the alarm function missing its 1 s cycle.

## Rationale

§5.2.3 risk control: hands the alarm to the backup alarm of the hardware item (HAZ-003, ADR-0013).

## Verification

Test: integration INT-02.

## Safety

Class C (IEC 62304 §4.3): a failure of this software system can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (HAZ-001…HAZ-008, severity serious).
