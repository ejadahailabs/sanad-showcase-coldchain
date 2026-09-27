---
id: "MRTM-LOG-002"
type: "logging"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, MODEL-LEVELS)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SYS-015"]
safetyClass: "C"
derived: false
---

# Logging retention

## Description

When the **Event Log** reaches its capacity, the logging subsystem shall store the newest 10000 records in the **Event Log**.

## Rationale

10 000 records is assumption A-04 (about 2 years of events); source: WHO PQS E006 / CDC Vaccine Storage and Handling Toolkit (assumed sources, edition and clause to confirm).

## Verification

Test: unit tests of the log item; SP-07.

## Safety

Class C (IEC 62304 §4.3): a failure of this subsystem can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (hazard chain HAZ-001…HAZ-008, severity serious). Same class as its parent node.
