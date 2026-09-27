---
id: "MRTM-DSI-002"
type: "display-item"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-05)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SRS-010"]
safetyClass: "C"
derived: false
implemented_by: []
---

# Display item temperature

## Description

The display item shall change the displayed temperature at most once per 10 s, at 0.1 °C resolution.

## Rationale

Steady digits are easier to read.

## Verification

Test: unit tests of display_mgr.

## Safety

Stays class C (§4.3): it carries two risk controls with no other signal — calibration due (SAF-012) and band limits at power-up (SAF-016) (ADR-0034).
