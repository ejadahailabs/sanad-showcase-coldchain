---
id: "MRTM-SRS-012"
type: "software-system"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-05)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SAF-018","MRTM-SYS-008","MRTM-SYS-009","MRTM-SYS-010"]
safetyClass: "C"
derived: false
---

# SRS record stored twice

## Description

The software system shall store each event record in 2 separate flash sectors within 1 s of the event.

## Rationale

§5.2.2 e) data definition; §5.2.3 risk control for a lost record (HAZ-005).

## Verification

Test: SP-07.

## Safety

Class C (IEC 62304 §4.3): a failure of this software system can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (HAZ-001…HAZ-008, severity serious).
