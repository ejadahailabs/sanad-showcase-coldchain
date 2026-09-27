---
id: "MRTM-AMG-001"
type: "alarm-mgr"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-05)"
created: "2026-09-27"
modified: "2026-09-27"
tags: []
uplinks: ["MRTM-ALI-001"]
safetyClass: "C"
derived: false
implemented_by: []
---

# Alarm manager early output

## Description

While the alarm is in the early state, the alarm manager unit shall toggle the red indicator output at 1 Hz with the buzzer output off.

## Rationale

Contract: 10-src/firmware/components/alarm_mgr/contracts.md; state machine MrtmSwStates::AlarmStates.

## Verification

Test: unit tests.

## Safety

Class C: the class of its item `alarm-item` (IEC 62304 §4.3 — a unit takes its item's class).
