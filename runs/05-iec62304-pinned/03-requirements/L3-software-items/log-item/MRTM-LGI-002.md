---
id: "MRTM-LGI-002"
type: "log-item"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-05)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SRS-013"]
safetyClass: "C"
derived: false
implemented_by: []
---

# Log item ring

## Description

When the **Event Log** holds 10000 records, the log item shall write each new **Event Record** over the oldest one.

## Rationale

Ring buffer (ADR-0021).

## Verification

Test: unit tests of history_ring.

## Safety

Class C (IEC 62304 §4.3): a failure of this software item can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (HAZ-001…HAZ-008, severity serious).
