---
id: "MRTM-USI-002"
type: "usb-item"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, RUN-05)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-SRS-014"]
safetyClass: "B"
derived: false
implemented_by: []
---

# USB item write inhibit

## Description

When the USB host sends a write request, the USB item shall inhibit the write to the **Event Log**.

## Rationale

Segregation measure (1) of ADR-0034.

## Verification

Test: unit tests of usb_export.

## Safety

Class B (IEC 62304 §4.3), one below the software system (C). Its failure can only lose or garble an exported COPY of the history: the log itself, the alarm and the screen do not depend on it. Segregation (§5.3.5, ADR-0034, ruling A-48): (1) read-only accessor, every host write refused (USI-002); (2) own lowest-priority task on core 0, apart from the safety tasks on core 1; (3) owns no data another item reads; (4) task watchdog; (5) CRC-32 on every record read. Weakness: FreeRTOS here gives no memory protection between tasks (A-43, R-19).
