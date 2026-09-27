---
id: "MRTM-USI-002"
type: "usb-item"
status: "draft"
priority: "medium"
author: "Masood (drafted by Claude, MODEL-LEVELS)"
created: "2026-09-27"
modified: ""
tags: []
uplinks: ["MRTM-LOG-003"]
safetyClass: "B"
derived: false
implemented_by: []
---

# USB item read-only access

## Description

The USB item shall refuse every write request from the USB host.

## Rationale

The segregation argument of this class B item rests on it (ADR-0034): the USB item cannot change the log.

## Verification

Test: unit tests of usb_export.

## Safety

Class B (IEC 62304 §4.3), one below its parent logging (C). Its failure can only lose or garble an exported COPY of the history: the log itself, the alarm and the screen do not depend on it. Segregation (IEC 62304 §5.3.5): (1) it reads the ring only through the log item's read-only accessor and refuses every host write (USI-002); (2) it runs in its own lowest-priority task on core 0, apart from the safety tasks on core 1; (3) it owns no data another item reads; (4) the supervisor's task watchdog catches a hang; (5) every record read carries a CRC-32. Weakness, said plainly: FreeRTOS on this processor gives no memory protection between tasks, so (1)–(3) rest on design and static analysis (assumption A-43, risk R-19). ADR-0034.
