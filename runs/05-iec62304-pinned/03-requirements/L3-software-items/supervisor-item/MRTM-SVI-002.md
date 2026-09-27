---
id: "MRTM-SVI-002"
type: "supervisor-item"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-05)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SRS-018"]
safetyClass: "C"
derived: false
implemented_by: []
---

# Supervisor item power-up tests

## Description

The supervisor item shall run the buzzer test within 5 s and the backup alarm test within 15 s of power-up.

## Rationale

Self-tests of the two annunciators (HAZ-006).

## Verification

Test: unit tests of diagnostics.

## Safety

Class C (IEC 62304 §4.3): a failure of this software item can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (HAZ-001…HAZ-008, severity serious).
