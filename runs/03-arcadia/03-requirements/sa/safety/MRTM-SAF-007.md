---
id: "MRTM-SAF-007"
type: "safety"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-03-ARCADIA)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SYS-003"]
safetyClass: "C"
hazard: ["HAZ-006"]
derived: false
allocated_to: []

implemented_by: []
---

# Buzzer self-test

## Description

The monitor shall test the buzzer within 5 s of power-up.

## Rationale

Risk control for hazard 'broken buzzer found only when needed'.

## Safety

Mitigates HAZ-006: staff hear the buzzer at every start, so a dead buzzer is noticed at power-up.

## Verification

Test: power up with the buzzer disconnected and confirm the fault indication.
