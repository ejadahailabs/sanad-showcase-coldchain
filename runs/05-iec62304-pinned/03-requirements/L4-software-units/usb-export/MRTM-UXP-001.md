---
id: "MRTM-UXP-001"
type: "usb-export"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-05)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-USI-001"]
safetyClass: "B"
derived: false
implemented_by: []
---

# USB export read-only file

## Description

The USB export unit shall mark the history file read-only in the FAT volume it presents.

## Rationale

Contract: 10-src/firmware/components/usb_export/contracts.md. Class B (its item's class).

## Verification

Test: unit test.

## Safety

Class B: the class of its item `usb-item` (IEC 62304 §4.3 — a unit takes its item's class).
