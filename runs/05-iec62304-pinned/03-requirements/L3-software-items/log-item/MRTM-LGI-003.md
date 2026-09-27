---
id: "MRTM-LGI-003"
type: "log-item"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-05)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SRS-015"]
safetyClass: "C"
derived: false
implemented_by: []
---

# Log item time stamp

## Description

The log item shall stamp each record with the UTC second of the real-time clock at the time of the event.

## Rationale

New in run 5: the SRS time stamp needs an item owner (run 2 carried it on the logging subsystem).

## Verification

Test: unit tests of event_log.

## Safety

Class C (IEC 62304 §4.3): a failure of this software item can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (HAZ-001…HAZ-008, severity serious).
