---
id: "MRTM-DMG-001"
type: "display-mgr"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-05)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-DSI-001"]
safetyClass: "C"
derived: false
implemented_by: []
---

# Display manager messages

## Description

The display manager unit shall draw the excursion warning, probe fault, calibration due and log capacity messages on the first display_mgr_tick after display_mgr_update reports them.

## Rationale

Contract: 10-src/firmware/components/display_mgr/contracts.md (C++ classes, ADR-0022).

## Verification

Test: unit tests.

## Safety

Class C: the class of its item `display-item` (IEC 62304 §4.3 — a unit takes its item's class).
