---
id: "MRTM-LEV-002"
type: "limit-evaluator"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-05)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-EXI-002"]
safetyClass: "C"
derived: false
implemented_by: []
---

# Evaluator confirm event

## Description

The limit evaluator unit shall return the confirmed event from limit_evaluator_step at the 31st consecutive valid sample outside the allowed band.

## Rationale

Contract: counts consecutive samples; an invalid sample resets neither count (A-29).

## Verification

Test: unit tests.

## Safety

Class C: the class of its item `excursion-item` (IEC 62304 §4.3 — a unit takes its item's class).
