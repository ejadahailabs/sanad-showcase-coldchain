---
id: "MRTM-LA-021"
type: "logical"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-03-ARCADIA)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-PRF-001","MRTM-ENV-004"]
safetyClass: "C"
derived: false
---

# Sensing accuracy

## Description

The sensing logical component shall measure the fridge air temperature with an accuracy of ±0.5 °C over the range 0 °C to 15 °C.

## Rationale

Carries the system accuracy down unchanged: the probe is the only measuring part. source: WHO PQS E006 / CDC Vaccine Storage and Handling Toolkit (assumed sources, edition and clause to confirm).

## Verification

Test: SP-10 at 0, 2, 5, 8, 15 °C against a reference thermometer.

## Safety

Class C (IEC 62304 §4.3): a failure of this logical component can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (hazard chain HAZ-001…HAZ-008, severity serious). Same class as the layer element above it.
