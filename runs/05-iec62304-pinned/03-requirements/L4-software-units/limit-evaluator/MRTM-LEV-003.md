---
id: "MRTM-LEV-003"
type: "limit-evaluator"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-05)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-EXI-003"]
safetyClass: "C"
derived: false
implemented_by: []
---

# Evaluator end event

## Description

The limit evaluator unit shall return the end event from limit_evaluator_step at the 31st consecutive valid sample inside the allowed band.

## Rationale

Contract: the peak travels with the end event.

## Verification

Test: unit tests.

## Safety

Class C: the class of its item `excursion-item` (IEC 62304 §4.3 — a unit takes its item's class).
