---
id: "MRTM-LOG-004"
type: "logging"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, MODEL-LEVELS)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SYS-020","MRTM-SYS-008","MRTM-SAF-022"]
safetyClass: "C"
derived: false
---

# Logging time stamp

## Description

The logging subsystem shall time-stamp each record with UTC at 1 s resolution with a drift of 2 s per day or less.

## Rationale

2 s per day is assumption A-14; source: WHO PQS E006 / CDC Vaccine Storage and Handling Toolkit (assumed sources, edition and clause to confirm).

## Verification

Test: SP-12.

## Safety

Class C (IEC 62304 §4.3): a failure of this subsystem can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (hazard chain HAZ-001…HAZ-008, severity serious). Same class as its parent node.
