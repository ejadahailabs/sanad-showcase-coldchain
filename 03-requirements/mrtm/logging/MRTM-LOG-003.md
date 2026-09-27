---
id: "MRTM-LOG-003"
type: "logging"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, MODEL-LEVELS)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SYS-014","MRTM-IFC-003","MRTM-PRF-003"]
safetyClass: "C"
derived: false
---

# Logging read-only export

## Description

The logging subsystem shall give the USB host read-only access to the event records within 30 s of connection.

## Rationale

The history for audit (STK-005) must not be changeable from outside (STK-006).

## Verification

Test: SP-08.

## Safety

Class C (IEC 62304 §4.3): a failure of this subsystem can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (hazard chain HAZ-001…HAZ-008, severity serious). Same class as its parent node.
