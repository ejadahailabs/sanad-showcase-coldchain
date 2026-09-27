---
id: "MRTM-LA-026"
type: "logical"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-03-ARCADIA)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SAF-010"]
safetyClass: "C"
derived: false
---

# Supervision pulse stop

## Description

The supervision logical component shall stop the watchdog service pulses within 2 s of the alarm item missing its 1 s cycle.

## Rationale

Hands a stuck alarm item to the backup alarm (MRTM-LA-005).

## Verification

Test: integration INT-02.

## Safety

Class C (IEC 62304 §4.3): a failure of this logical component can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (hazard chain HAZ-001…HAZ-008, severity serious). Same class as the layer element above it.
