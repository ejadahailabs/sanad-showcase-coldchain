---
id: "MRTM-DSI-001"
type: "display-item"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-05)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SRS-009","MRTM-SRS-011"]
safetyClass: "C"
derived: false
implemented_by: []
---

# Display item redraw

## Description

The display item shall redraw the frame within 1 s of a state change message.

## Rationale

Display task period (ADR-0019).

## Verification

Test: unit tests of display_mgr.

## Safety

Stays class C (§4.3): it carries two risk controls with no other signal — calibration due (SAF-012) and band limits at power-up (SAF-016) (ADR-0034).
