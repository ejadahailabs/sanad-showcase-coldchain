---
id: "MRTM-CI-005"
type: "configuration-item"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-03-ARCADIA)"
created: "2026-09-27"
modified: "2026-09-27"
tags: []
uplinks: ["MRTM-PH-001","MRTM-PH-002","MRTM-PH-003","MRTM-PH-004","MRTM-PH-005"]
safetyClass: "C"
derived: false
---

# Backup alarm board

## Description

The backup alarm configuration item shall carry a label with 1 part number and 1 revision that match its bill of materials entry.

## Rationale

The independent alarm path (decision record 0013) is its own board so it can be revised and tested apart from the main board (IEC 60601-1 cl. 14 single-fault view).

## Verification

Inspection of the label against the BOM and the configuration record.

## Safety

Class C: it contains parts that carry class-C risk controls (ISO 14971; hazard chain HAZ-001…HAZ-008). A wrong revision in the field is found by the label check.
