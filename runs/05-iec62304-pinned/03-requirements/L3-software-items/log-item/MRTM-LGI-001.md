---
id: "MRTM-LGI-001"
type: "log-item"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-05)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SRS-012"]
safetyClass: "C"
derived: false
implemented_by: []
---

# Log item double write

## Description

The log item shall write each record with its CRC-32 to 2 separate flash sectors within 1 s of the event.

## Rationale

Copy A and copy B (ADR-0011).

## Verification

Test: unit tests of history_ring.

## Safety

Class C (IEC 62304 §4.3): a failure of this software item can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (HAZ-001…HAZ-008, severity serious).
