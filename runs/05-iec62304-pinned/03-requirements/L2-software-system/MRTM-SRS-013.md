---
id: "MRTM-SRS-013"
type: "software-system"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-05)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SYS-015"]
safetyClass: "C"
derived: false
---

# SRS log capacity

## Description

When the **Event Log** reaches its capacity, the software system shall keep the newest 10000 records in the **Event Log**.

## Rationale

§5.2.2 e): retention as a count is a product choice (A-04).

## Verification

Test: SP-07.

## Safety

Class C (IEC 62304 §4.3): a failure of this software system can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (HAZ-001…HAZ-008, severity serious).
