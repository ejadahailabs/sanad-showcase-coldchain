---
id: "MRTM-SEN-001"
type: "sensing"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, MODEL-LEVELS)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SYS-001"]
safetyClass: "C"
derived: false
---

# Sensing sample period

## Description

The sensing subsystem shall deliver one fridge air temperature sample at a period of 2 s.

## Rationale

Allocates the system sampling period to the subsystem that owns the probe. The 2 s figure is ADR-0031; source: WHO PQS E006 / CDC Vaccine Storage and Handling Toolkit (assumed sources, edition and clause to confirm).

## Verification

Test: SP-01 bench trace of sample time stamps; unit tests of the sensor item.

## Safety

Class C (IEC 62304 §4.3): a failure of this subsystem can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (hazard chain HAZ-001…HAZ-008, severity serious). Same class as its parent node.
