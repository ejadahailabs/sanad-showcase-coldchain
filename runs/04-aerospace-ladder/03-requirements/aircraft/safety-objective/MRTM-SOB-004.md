---
id: "MRTM-SOB-004"
type: "safety-objective"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-04)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-FUN-002"]
safetyClass: "C"
hazard: ["HAZ-002"]
derived: false
---

# Nuisance warnings are limited

## Description

The monitor shall not sound the buzzer for an out-of-band period shorter than the 60 s confirmation time.

## Rationale

FHA, 08-safety/01-fha.md. Severity names are the aerospace scale used as an analogue (A-4-04). Failure condition FC-4 'nuisance warning' — major analogue: staff learn to ignore the alarm. Hazard HAZ-002.

## Verification

Test: the confirmation tests of the alarm software item.

## Safety

DAL C (major failure condition), assigned to `aircraft` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).
