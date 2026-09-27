---
id: "MRTM-SOB-005"
type: "safety-objective"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-04)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-FUN-004"]
safetyClass: "C"
hazard: ["HAZ-008"]
derived: false
---

# No silent loss of history

## Description

No single failure shall lose an excursion record without an event that shows the loss.

## Rationale

FHA, 08-safety/01-fha.md. Severity names are the aerospace scale used as an analogue (A-4-04). Failure condition FC-5 'loss of history' — major analogue: an audit cannot show the exposure. Hazard HAZ-008.

## Verification

Analysis: two copies of every record and a corrupt-record event.

## Safety

DAL C (major failure condition), assigned to `aircraft` by the PSSA (08-safety/02-pssa.md). Independence of verification is not required in this run (A-4-03).
