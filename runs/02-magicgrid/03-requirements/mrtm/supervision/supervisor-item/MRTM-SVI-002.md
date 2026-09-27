---
id: "MRTM-SVI-002"
type: "supervisor-item"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, MODEL-LEVELS)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SUP-002"]
safetyClass: "C"
derived: false
implemented_by: []
---

# Supervisor item self-tests

## Description

The supervisor item shall run the buzzer test within 5 s and the backup alarm test within 15 s of power-up.

## Rationale

Both windows counted from t = 0 (ADR-0014).

## Verification

Test: unit tests of diagnostics.

## Safety

Class C (IEC 62304 §4.3): a failure of this software item can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (hazard chain HAZ-001…HAZ-008, severity serious). Same class as its parent node.
