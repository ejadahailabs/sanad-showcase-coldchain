---
id: "MRTM-DSI-002"
type: "display-item"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, MODEL-LEVELS)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-DSP-002"]
safetyClass: "C"
derived: false
implemented_by: []
---

# Display item number rate

## Description

The display item shall change the displayed temperature at most once per 10 s, at 0.1 °C resolution.

## Rationale

Carries MRTM-DSP-002's refresh down to the software.

## Verification

Test: unit tests of display_mgr.

## Safety

Stays class C (IEC 62304 §4.3): it carries two risk controls that have no other signal — calibration due (SAF-012, HAZ-004) and band limits at power-up (SAF-016, HAZ-007). Segregating it would not lower its class (ADR-0034).
