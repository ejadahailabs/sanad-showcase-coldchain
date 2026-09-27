---
id: "MRTM-ALI-003"
type: "alarm-item"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-05)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SRS-007"]
safetyClass: "C"
derived: false
implemented_by: []
---

# Alarm item buzzer off

## Description

The alarm item shall switch the buzzer drive off within one 1 s alarm cycle of a debounced acknowledge press.

## Rationale

Audio paused (IEC 60601-1-8).

## Verification

Test: unit tests of alarm_mgr.

## Safety

Class C (IEC 62304 §4.3): a failure of this software item can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (HAZ-001…HAZ-008, severity serious).
