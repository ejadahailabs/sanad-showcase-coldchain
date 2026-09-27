---
id: "MRTM-SAF-011"
type: "safety"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, DOGFOOD-3)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SYS-012", "MRTM-SOB-004"]
safetyClass: "C"
hazard: ["HAZ-002"]
derived: false
---

# Fault tone differs from excursion tone

## Description

The monitor shall sound the probe fault alarm as a buzzer pattern of 1 s on and 1 s off.

## Rationale

Risk control for HAZ-002 (alarm fatigue): staff who can tell a fault from an excursion act on each correctly and do not learn to ignore the buzzer. ISO 14971 cl. 7.1 b; IEC 60601-1-8 frame.

## Safety

Mitigates HAZ-002: two clearly different sounds keep a probe fault from being taken for a routine excursion, which reduces nuisance-alarm fatigue.

## Verification

Inspection and test: record the probe fault pattern with a sound level meter; pass at 1 s ± 0.1 s on and 1 s ± 0.1 s off; the excursion alarm is a continuous tone (A-19), so the two differ.
