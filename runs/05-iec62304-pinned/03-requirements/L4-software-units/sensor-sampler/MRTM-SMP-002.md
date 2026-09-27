---
id: "MRTM-SMP-002"
type: "sensor-sampler"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-05)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SNI-002"]
safetyClass: "C"
derived: false
implemented_by: []
---

# Sampler invalid flag

## Description

The sensor sampler unit shall return a sample marked invalid when the scratchpad CRC-8 differs from byte 8 or the value is outside -30 °C to 50 °C.

## Rationale

Contract: CRC-8 Dallas/Maxim over bytes 0..7.

## Verification

Test: unit tests.

## Safety

Class C: the class of its item `sensor-item` (IEC 62304 §4.3 — a unit takes its item's class).
