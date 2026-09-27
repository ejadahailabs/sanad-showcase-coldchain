---
id: "MRTM-SOB-002"
type: "safety-objective"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-04)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-FUN-002"]
safetyClass: "A"
hazard: ["HAZ-007"]
derived: false
---

# No silent wrong band

## Description

No single failure shall make the monitor judge the air against a band other than the stored band without an alarm signal.

## Rationale

FHA, 08-safety/01-fha.md. Severity names are the aerospace scale used as an analogue (A-4-04). Failure condition FC-2 'misleading warning: wrong limits' — catastrophic analogue. Hazard HAZ-007.

## Verification

Analysis: the PSSA shows the band check refuses a corrupted band and forces the alarm.

## Safety

DAL A (catastrophic failure condition), assigned to `aircraft` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).
