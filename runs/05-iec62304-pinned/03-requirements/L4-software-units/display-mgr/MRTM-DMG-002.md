---
id: "MRTM-DMG-002"
type: "display-mgr"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-05)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-DSI-002"]
safetyClass: "C"
derived: false
implemented_by: []
---

# Display manager digits

## Description

The display manager unit shall redraw the temperature digits at most once per 10 s, at 0.1 °C resolution.

## Rationale

Contract: tenths of a degree in, digits out.

## Verification

Test: unit test.

## Safety

Class C: the class of its item `display-item` (IEC 62304 §4.3 — a unit takes its item's class).
