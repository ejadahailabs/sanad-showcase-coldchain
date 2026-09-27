---
id: "MRTM-CI-006"
type: "configuration-item"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-03-ARCADIA)"
created: "2026-09-27"
modified: "2026-09-27"
tags: []
uplinks: ["MRTM-PH-011"]
safetyClass: "C"
derived: false
---

# Battery pack

## Description

The battery configuration item shall carry a label with 1 part number, 1 revision and 1 date code that match its bill of materials entry.

## Rationale

The only part with a shelf life; the date code lets service replace it on time (MRTM-MNT-002). Synthetic part class (A-40).

## Verification

Inspection of the label against the BOM and the configuration record.

## Safety

Class C: it contains parts that carry class-C risk controls (ISO 14971; hazard chain HAZ-001…HAZ-008). A wrong revision in the field is found by the label check.
