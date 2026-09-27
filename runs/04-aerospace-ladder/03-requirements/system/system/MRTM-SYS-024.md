---
id: "MRTM-SYS-024"
type: "system"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, DOGFOOD-6)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-FUN-002"]
safetyClass: "A"
derived: false
allocated_to: []

implemented_by: []
---

# Early excursion alarm

## Description

The system shall raise an alarm within 5 seconds of a temperature excursion.

## Rationale

Change request CR-001 (Phase 11): staff want to know at once that the fridge is warming, not a minute later. Two-tier design (decision record 0030): this early alarm is the low-priority visual tier; the confirmed high-priority buzzer tier keeps the 60 s confirmation (MRTM-SYS-002, MRTM-STK-002) against nuisance alarms (HAZ-002).

## Verification

Test: step the probe out of band; measure the time from the first out-of-band probe reading to the red indicator's 1 Hz flash; pass when <= 5 s in 10 of 10 trials; the buzzer stays off until confirmation.
