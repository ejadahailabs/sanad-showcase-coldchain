---
id: "MRTM-SNI-001"
type: "sensor-item"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, MODEL-LEVELS)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SEN-001","MRTM-SEN-002"]
safetyClass: "C"
derived: false
implemented_by: []
---

# Sensor item conversion start

## Description

The sensor item shall start one probe conversion every 2 s and read the scratchpad 750 ms after the start.

## Rationale

The software half of the sensing period and latency; runs in the sensor task (ADR-0019).

## Verification

Test: unit tests of sensor_sampler.

## Safety

Class C (IEC 62304 §4.3): a failure of this software item can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (hazard chain HAZ-001…HAZ-008, severity serious). Same class as its parent node.
