---
id: "MRTM-ALI-001"
type: "alarm-item"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, MODEL-LEVELS)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-ALM-001"]
safetyClass: "C"
derived: false
implemented_by: []
---

# Alarm item early light

## Description

The alarm item shall flash the red indicator at 1 Hz within one 1 s alarm cycle of the early excursion report.

## Rationale

The visual half of the early tier (ADR-0030). Colour and rate differ from IEC 60601-1-8 low priority (delta D-1; assumption A-42).

## Verification

Test: unit tests of alarm_mgr.

## Safety

Class C (IEC 62304 §4.3): a failure of this software item can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (hazard chain HAZ-001…HAZ-008, severity serious). Same class as its parent node.
