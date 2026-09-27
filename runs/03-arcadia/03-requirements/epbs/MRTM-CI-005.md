---
id: "MRTM-CI-005"
type: "configuration-item"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-03-ARCADIA)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-PH-001","MRTM-PH-002","MRTM-PH-003","MRTM-PH-004","MRTM-PH-005"]
safetyClass: "C"
derived: false
---

# Backup alarm board

## Description

The backup alarm configuration item shall carry a part number and revision on its label, and its bill of materials shall list the backup timer, the backup driver and the hold-up store at that revision.

## Rationale

The independent alarm path (ADR-0013) is its own board so it can be revised and tested apart from the main board (IEC 60601-1 cl. 14 single-fault view).

## Verification

Inspection of the label and the BOM against the configuration record.

## Safety

Class C: it contains parts that carry class-C risk controls (ISO 14971; hazard chain HAZ-001…HAZ-008). A wrong revision in the field is found by the label check.
