---
id: "MRTM-SRS-015"
type: "software-system"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-05)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SYS-020","MRTM-SYS-008","MRTM-SAF-022"]
safetyClass: "C"
derived: false
---

# SRS time stamp

## Description

The software system shall time-stamp each record with UTC at 1 s resolution.

## Rationale

§5.2.2 e): the clock drift itself is the hardware item's (MRTM-HWI-010).

## Verification

Test: SP-12.

## Safety

Class C (IEC 62304 §4.3): a failure of this software system can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (HAZ-001…HAZ-008, severity serious).
