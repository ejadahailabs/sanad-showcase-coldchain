---
id: "MRTM-CI-001"
type: "configuration-item"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-03-ARCADIA)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SW-001","MRTM-SW-002","MRTM-SW-003","MRTM-SW-004","MRTM-SW-005","MRTM-SW-006","MRTM-SW-007","MRTM-SW-008","MRTM-SW-009","MRTM-SW-010","MRTM-SW-011","MRTM-SW-012","MRTM-SW-013","MRTM-SW-014","MRTM-SW-015","MRTM-SW-016","MRTM-SW-017","MRTM-SW-018","MRTM-SW-019","MRTM-SW-020"]
safetyClass: "C"
derived: false
---

# Firmware image

## Description

The firmware configuration item shall be released as one binary image identified by a version number and a SHA-256 checksum, and the monitor shall show that version number at power-up.

## Rationale

IEC 62304 §8.1.1 (identify each configuration item and its version) and §5.8.4 (release). One image holds all eight software items, so one version names the whole software system; the power-up display lets a technician confirm the running version (MRTM-MNT-003).

## Verification

Inspection of the release record (checksum recomputed from the image); test: power-up screen shows the version.

## Safety

Class C: it contains parts that carry class-C risk controls (ISO 14971; hazard chain HAZ-001…HAZ-008). A wrong revision in the field is found by the label check.
