---
id: "MRTM-SAF-007"
type: "safety"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, DOGFOOD-1)"
created: "2026-09-27"
modified: "2026-09-27"
tags: []
uplinks: ["MRTM-SYS-003"]
safetyClass: "C"
hazard: ["HAZ-006"]
derived: false
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
