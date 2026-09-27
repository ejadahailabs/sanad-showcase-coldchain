---
id: "MRTM-SVI-003"
type: "supervisor-item"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-05)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SRS-019"]
safetyClass: "C"
derived: false
implemented_by: []
---

# Supervisor item band check

## Description

When the stored band passes its CRC-32 check, and only then, the supervisor item shall set the **Allowed Band** from it.

## Rationale

No default band (ADR-0024).

## Verification

Test: unit tests of config_mgr.

## Safety

Class C (IEC 62304 §4.3): a failure of this software item can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (HAZ-001…HAZ-008, severity serious).
