---
id: "MRTM-HRG-001"
type: "history-ring"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-05)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-LGI-001"]
safetyClass: "C"
derived: false
implemented_by: []
---

# History ring two copies

## Description

The history ring unit shall write each appended record to copy A and copy B in 2 separate flash sectors.

## Rationale

Contract: 10-src/firmware/components/history_ring/contracts.md.

## Verification

Test: unit test.

## Safety

Class C: the class of its item `log-item` (IEC 62304 §4.3 — a unit takes its item's class).
