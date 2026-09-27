---
id: "MRTM-SRS-014"
type: "software-system"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-05)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SYS-014","MRTM-IFC-003","MRTM-PRF-003"]
safetyClass: "C"
derived: false
---

# SRS read-only export

## Description

The software system shall give the USB host read-only access to the event records within 30 s of connection.

## Rationale

§5.2.2 d) interfaces; §5.2.2 g) security: the history cannot be edited (STK-006).

## Verification

Test: SP-08.

## Safety

Class C (IEC 62304 §4.3): a failure of this software system can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (HAZ-001…HAZ-008, severity serious).
