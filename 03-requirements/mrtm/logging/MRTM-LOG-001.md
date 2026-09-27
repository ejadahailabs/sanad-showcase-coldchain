---
id: "MRTM-LOG-001"
type: "logging"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, MODEL-LEVELS)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SAF-018","MRTM-SYS-008","MRTM-SYS-009","MRTM-SYS-010"]
safetyClass: "C"
derived: false
---

# Logging record write

## Description

The logging subsystem shall store each event record in 2 separate flash sectors within 1 s of the event.

## Rationale

Two copies survive one bad sector (HAZ-008).

## Verification

Test: unit tests of the log item; SP-07.

## Safety

Class C (IEC 62304 §4.3): a failure of this subsystem can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (hazard chain HAZ-001…HAZ-008, severity serious). Same class as its parent node.
