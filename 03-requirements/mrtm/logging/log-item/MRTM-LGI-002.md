---
id: "MRTM-LGI-002"
type: "log-item"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, MODEL-LEVELS)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-LOG-002"]
safetyClass: "C"
derived: false
implemented_by: []
---

# Log item ring

## Description

The log item shall keep the newest 10000 records and overwrite the oldest record when full.

## Rationale

A ring: the log never stops accepting events (HAZ-008).

## Verification

Test: unit tests of history_ring.

## Safety

Class C (IEC 62304 §4.3): a failure of this software item can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (hazard chain HAZ-001…HAZ-008, severity serious). Same class as its parent node.
