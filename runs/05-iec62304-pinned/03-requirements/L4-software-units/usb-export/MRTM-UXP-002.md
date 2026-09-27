---
id: "MRTM-UXP-002"
type: "usb-export"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-05)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-USI-002"]
safetyClass: "B"
derived: false
implemented_by: []
---

# USB export write refusal

## Description

The USB export unit shall refuse every write request from the USB host.

## Rationale

Contract: the write callback returns an error and touches no flash.

## Verification

Test: unit test.

## Safety

Class B: the class of its item `usb-item` (IEC 62304 §4.3 — a unit takes its item's class).
