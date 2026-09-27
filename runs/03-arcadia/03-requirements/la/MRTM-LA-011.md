---
id: "MRTM-LA-011"
type: "logical"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-03-ARCADIA)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SYS-013","MRTM-SAF-012","MRTM-SAF-016","MRTM-SYS-022"]
safetyClass: "C"
derived: false
---

# Display messages

## Description

The display logical component shall show the probe fault, calibration due, band limits and log capacity messages within 1 s of their cause.

## Rationale

Two of these messages are risk controls with no other signal (MRTM-SAF-012 HAZ-004, MRTM-SAF-016 HAZ-007) — why this logical component stays class C (ADR-0034).

## Verification

Test: unit tests of the display item; SP-05; SP-09.

## Safety

Class C (IEC 62304 §4.3): a failure of this logical component can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (hazard chain HAZ-001…HAZ-008, severity serious). Same class as the layer element above it.
