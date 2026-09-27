---
id: "MRTM-SRS-011"
type: "software-system"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-05)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SYS-013","MRTM-SAF-012","MRTM-SAF-016","MRTM-SYS-022"]
safetyClass: "C"
derived: false
---

# SRS status messages

## Description

The software system shall show the probe fault, calibration due, band limits and log capacity messages within 1 s of their cause.

## Rationale

§5.2.3: two of these messages are risk controls with no other signal (SAF-012, SAF-016; ADR-0034).

## Verification

Test: SP-05, SP-09.

## Safety

Class C (IEC 62304 §4.3): a failure of this software system can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (HAZ-001…HAZ-008, severity serious).
