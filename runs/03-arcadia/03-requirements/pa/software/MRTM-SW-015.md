---
id: "MRTM-SW-015"
type: "software"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-03-ARCADIA)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-LA-018"]
safetyClass: "C"
derived: false
implemented_by: []
---

# Power item battery low

## Description

The power item shall post the battery-low signal after 2 consecutive battery readings below 3.4 V.

## Rationale

Two readings filter one noisy conversion; 2 s stays inside the 5 s of MRTM-SAF-008.

## Verification

Test: unit tests of power_mon.

## Safety

Class C (IEC 62304 §4.3): a failure of this software item can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (hazard chain HAZ-001…HAZ-008, severity serious). Same class as the layer element above it.
