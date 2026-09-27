---
id: "MRTM-LA-018"
type: "logical"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-03-ARCADIA)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SAF-005","MRTM-SAF-008","MRTM-SYS-023"]
safetyClass: "C"
derived: false
---

# Power events

## Description

The power logical component shall report mains loss, mains restore and battery voltage below 3.4 V within 1 s.

## Rationale

Feeds the log (MRTM-SAF-005) and the low-battery alarm (MRTM-SAF-008).

## Verification

Test: unit tests of the power item; integration INT-05.

## Safety

Class C (IEC 62304 §4.3): a failure of this logical component can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (hazard chain HAZ-001…HAZ-008, severity serious). Same class as the layer element above it.
