---
id: "MRTM-CI-003"
type: "configuration-item"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-03-ARCADIA)"
created: "2026-09-27"
modified: "2026-09-27"
tags: []
uplinks: ["MRTM-PH-013","MRTM-PH-014","MRTM-PH-015"]
safetyClass: "C"
derived: false
---

# Probe assembly

## Description

The probe configuration item shall carry a cable label with 1 part number and 1 revision that match its bill of materials entry.

## Rationale

The probe is the field-replaceable part (MRTM-MNT-001); interchangeability is the part's factory accuracy (A-40).

## Verification

Inspection of the cable label against the BOM and the configuration record.

## Safety

Class C: it contains parts that carry class-C risk controls (ISO 14971; hazard chain HAZ-001…HAZ-008). A wrong revision in the field is found by the label check.
