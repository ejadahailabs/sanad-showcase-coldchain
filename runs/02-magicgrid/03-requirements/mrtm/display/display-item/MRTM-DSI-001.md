---
id: "MRTM-DSI-001"
type: "display-item"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, MODEL-LEVELS)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-DSP-001","MRTM-DSP-003"]
safetyClass: "C"
derived: false
implemented_by: []
---

# Display item redraw

## Description

The display item shall redraw the frame within 1 s of a state change message.

## Rationale

The display task runs every 1 s (ADR-0019).

## Verification

Test: unit tests of display_mgr.

## Safety

Stays class C (IEC 62304 §4.3): it carries two risk controls that have no other signal — calibration due (SAF-012, HAZ-004) and band limits at power-up (SAF-016, HAZ-007). Segregating it would not lower its class (ADR-0034).
