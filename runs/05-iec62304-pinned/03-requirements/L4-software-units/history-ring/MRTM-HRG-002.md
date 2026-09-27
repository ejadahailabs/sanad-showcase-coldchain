---
id: "MRTM-HRG-002"
type: "history-ring"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-05)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-LGI-002"]
safetyClass: "C"
derived: false
implemented_by: []
---

# History ring wrap

## Description

When the ring holds 10000 records, the history ring unit shall write the next record over the oldest one.

## Rationale

Contract: 79-sector ring is refused at compile time.

## Verification

Test: unit test.

## Safety

Class C: the class of its item `log-item` (IEC 62304 §4.3 — a unit takes its item's class).
