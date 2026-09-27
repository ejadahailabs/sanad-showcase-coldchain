---
id: "MRTM-SVI-003"
type: "supervisor-item"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, MODEL-LEVELS)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SUP-003"]
safetyClass: "C"
derived: false
implemented_by: []
---

# Supervisor item band load

## Description

The supervisor item shall load the allowed band only when its CRC-32 check passes.

## Rationale

No default band exists in firmware (ADR-0024).

## Verification

Test: unit tests of config_mgr.

## Safety

Class C (IEC 62304 §4.3): a failure of this software item can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (hazard chain HAZ-001…HAZ-008, severity serious). Same class as its parent node.
