---
id: "MRTM-BKA-001"
type: "backup-alarm"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, MODEL-LEVELS)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-ALM-005"]
safetyClass: "C"
derived: false
---

# Backup alarm timeout

## Description

The backup alarm shall drive the buzzer within 10 s of the last watchdog service pulse.

## Rationale

The alarm subsystem's backup path, owned by one assembly that needs no processor (ADR-0013).

## Verification

Test: SP-03.

## Safety

Class C (IEC 62304 §4.3): a failure of this assembly can leave a real excursion unalarmed or unrecorded, and vaccines that lost potency may then be given (hazard chain HAZ-001…HAZ-008, severity serious). Same class as its parent node.
