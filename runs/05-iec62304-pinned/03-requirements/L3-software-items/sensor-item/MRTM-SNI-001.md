---
id: "MRTM-SNI-001"
type: "sensor-item"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-05)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SRS-001","MRTM-SRS-002"]
safetyClass: "C"
derived: false
implemented_by: []
---

# Sensor item conversion start

## Description

The sensor item shall start one probe conversion at a period of 2 s and read the scratchpad 750 ms after the start.

## Rationale

Runs in the sensor task (ADR-0019).

## Verification

Test: unit tests of sensor_sampler.

## Safety

Class C (IEC 62304 §4.3): a failure of this software item can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (HAZ-001…HAZ-008, severity serious).
