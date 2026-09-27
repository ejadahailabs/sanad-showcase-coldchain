---
id: "MRTM-LEV-001"
type: "limit-evaluator"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-05)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-EXI-001"]
safetyClass: "C"
derived: false
implemented_by: []
---

# Evaluator early event

## Description

The limit evaluator unit shall return the early event from limit_evaluator_step for the first valid sample outside the allowed band.

## Rationale

Contract: 10-src/firmware/components/limit_evaluator/contracts.md.

## Verification

Test: unit tests.

## Safety

Class C: the class of its item `excursion-item` (IEC 62304 §4.3 — a unit takes its item's class).
