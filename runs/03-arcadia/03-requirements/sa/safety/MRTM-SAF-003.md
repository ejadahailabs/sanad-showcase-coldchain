---
id: "MRTM-SAF-003"
type: "safety"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-03-ARCADIA)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SYS-001"]
safetyClass: "C"
hazard: ["HAZ-001","HAZ-004"]
derived: false
allocated_to: []

implemented_by: []
---

# Implausible sample

## Description

The monitor shall declare the probe fault when a sample falls outside the range -30 °C to 50 °C.

## Rationale

Risk control for hazard 'false in-band reading from a damaged probe'.

## Safety

Mitigates HAZ-001 and HAZ-004: a reading outside what the probe can physically see is treated as a fault, catching gross drift and wiring faults.

## Verification

Test: inject samples at -41 °C and 61 °C through the probe simulator.
