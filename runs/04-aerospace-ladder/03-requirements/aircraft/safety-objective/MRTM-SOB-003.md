---
id: "MRTM-SOB-003"
type: "safety-objective"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-04)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-FUN-001"]
safetyClass: "B"
hazard: ["HAZ-004"]
derived: false
---

# Drift is bounded and shown

## Description

The monitor shall bound probe drift by a calibration interval of 365 days and show staff when it has passed.

## Rationale

FHA, 08-safety/01-fha.md. Severity names are the aerospace scale used as an analogue (A-4-04). Failure condition FC-3 'misleading temperature: drift' — hazardous analogue: an excursion near the band edge is missed. Hazard HAZ-004.

## Verification

Analysis: the calibration-due signal is traced to a verified requirement.

## Safety

DAL B (hazardous failure condition), assigned to `aircraft` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).
