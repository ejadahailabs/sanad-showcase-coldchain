---
id: "MRTM-SAF-003"
type: "safety"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, DOGFOOD-1)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SYS-001"]
safetyClass: "C"
derived: false
---

# Implausible sample

## Description

The monitor shall declare the probe fault when a sample falls outside the range -40 °C to 60 °C.

## Rationale

Risk control for hazard 'false in-band reading from a damaged probe'.

## Verification

Test: inject samples at -41 °C and 61 °C through the probe simulator.
