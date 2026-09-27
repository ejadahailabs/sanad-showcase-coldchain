---
id: "MRTM-SW-003"
type: "software"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-03-ARCADIA)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-LA-004"]
safetyClass: "C"
derived: false
implemented_by: []
---

# Alarm item buzzer off

## Description

The alarm item shall switch the buzzer drive off within one 1 s alarm cycle of a debounced acknowledge press.

## Rationale

The button is read with a 50 ms debounce inside the alarm item (MRTM-IFC-002).

## Verification

Test: unit tests of alarm_mgr.

## Safety

Class C (IEC 62304 §4.3): a failure of this software item can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (hazard chain HAZ-001…HAZ-008, severity serious). Same class as the layer element above it.
