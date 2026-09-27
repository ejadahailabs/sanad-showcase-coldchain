---
id: "MRTM-AMG-002"
type: "alarm-mgr"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-05)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-ALI-002"]
safetyClass: "C"
derived: false
implemented_by: []
---

# Alarm manager buzzer on

## Description

On a confirmed excursion input, the alarm manager unit shall set the buzzer output on in the same alarm_mgr_step call.

## Rationale

Contract: one step per 1 s alarm cycle.

## Verification

Test: unit tests.

## Safety

Class C: the class of its item `alarm-item` (IEC 62304 §4.3 — a unit takes its item's class).
