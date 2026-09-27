---
id: "MRTM-SMP-001"
type: "sensor-sampler"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-05)"
created: "2026-09-27"
modified: "2026-09-27"
tags: []
uplinks: ["MRTM-SNI-001"]
safetyClass: "C"
derived: false
implemented_by: []
---

# Sampler read contract

## Description

When the sensor task calls sensor_sampler_read, the sensor sampler unit shall return the sample of the conversion started 750 ms or more before and start the next conversion.

## Rationale

Contract: 10-src/firmware/components/sensor_sampler/contracts.md.

## Verification

Test: unit test.

## Safety

Class C: the class of its item `sensor-item` (IEC 62304 §4.3 — a unit takes its item's class).
