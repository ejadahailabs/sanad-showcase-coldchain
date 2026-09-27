---
id: "MRTM-SNI-002"
type: "sensor-item"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, MODEL-LEVELS)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SEN-004"]
safetyClass: "C"
derived: false
implemented_by: []
---

# Sensor item invalid sample

## Description

The sensor item shall mark the sample invalid when the scratchpad CRC-8 fails or the value is outside -30 °C to 50 °C.

## Rationale

Detects the probe faults of HAZ-001 and HAZ-004 at the first bad read.

## Verification

Test: unit tests of sensor_sampler.

## Safety

Class C (IEC 62304 §4.3): a failure of this software item can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (hazard chain HAZ-001…HAZ-008, severity serious). Same class as its parent node.
