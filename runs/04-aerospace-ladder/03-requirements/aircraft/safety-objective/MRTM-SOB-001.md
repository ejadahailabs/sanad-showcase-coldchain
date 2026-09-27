---
id: "MRTM-SOB-001"
type: "safety-objective"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-04)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-FUN-002","MRTM-FUN-005"]
safetyClass: "A"
hazard: ["HAZ-001","HAZ-003","HAZ-005","HAZ-006"]
derived: false
---

# No silent loss of warning

## Description

No single failure shall cause the loss of the excursion warning without an alarm signal to clinic staff.

## Rationale

FHA, 08-safety/01-fha.md. Severity names are the aerospace scale used as an analogue (A-4-04). Failure condition FC-1 'loss of warning, not annunciated' — catastrophic analogue: a patient may receive a vaccine that lost its potency and nobody knows. Hazards HAZ-001, HAZ-003, HAZ-005, HAZ-006.

## Verification

Analysis: the PSSA fault tree shows a second, independent signal for every single failure.

## Safety

DAL A (catastrophic failure condition), assigned to `aircraft` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).
