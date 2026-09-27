---
id: "MRTM-LGI-001"
type: "log-item"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, MODEL-LEVELS)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-LOG-001"]
safetyClass: "C"
derived: false
implemented_by: []
---

# Log item two copies

## Description

The log item shall write each record with its CRC-32 to 2 separate flash sectors within 1 s of the event.

## Rationale

The log task runs every 1 s (ADR-0019).

## Verification

Test: unit tests of event_log and history_ring.

## Safety

Class C (IEC 62304 §4.3): a failure of this software item can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (hazard chain HAZ-001…HAZ-008, severity serious). Same class as its parent node.
