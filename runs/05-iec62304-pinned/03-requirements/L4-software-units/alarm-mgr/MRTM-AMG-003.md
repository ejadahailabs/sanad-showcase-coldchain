---
id: "MRTM-AMG-003"
type: "alarm-mgr"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-05)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-ALI-003"]
safetyClass: "C"
derived: false
implemented_by: []
---

# Alarm manager acknowledge

## Description

On an acknowledge press held for 50 ms, the alarm manager unit shall set the buzzer output off in the same alarm_mgr_step call.

## Rationale

Contract: 50 ms debounce (IFC-002).

## Verification

Test: unit tests.

## Safety

Class C: the class of its item `alarm-item` (IEC 62304 §4.3 — a unit takes its item's class).
