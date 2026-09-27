---
id: "MRTM-SRS-016"
type: "software-system"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-05)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SAF-005","MRTM-SAF-008","MRTM-SYS-023"]
safetyClass: "C"
derived: false
---

# SRS power events

## Description

The software system shall report mains loss, mains restore and battery voltage below 3.4 V within 1 s.

## Rationale

§5.2.3 risk control (HAZ-003).

## Verification

Test: integration INT-05.

## Safety

Class C (IEC 62304 §4.3): a failure of this software system can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (HAZ-001…HAZ-008, severity serious).
