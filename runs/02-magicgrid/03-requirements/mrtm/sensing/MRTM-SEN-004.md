---
id: "MRTM-SEN-004"
type: "sensing"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, MODEL-LEVELS)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SYS-012","MRTM-SAF-003"]
safetyClass: "C"
derived: false
---

# Sensing invalid sample

## Description

The sensing subsystem shall mark a sample invalid when its CRC-8 check fails or its value is outside -30 °C to 50 °C.

## Rationale

An invalid sample must never count toward an excursion or its end (A-29); the probe fault timer counts invalid samples.

## Verification

Test: unit tests of the sensor item; SP-02.

## Safety

Class C (IEC 62304 §4.3): a failure of this subsystem can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (hazard chain HAZ-001…HAZ-008, severity serious). Same class as its parent node.
