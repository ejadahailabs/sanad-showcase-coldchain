# ADR-0034 — Software safety class per item (IEC 62304 §4.3), with segregation where lower

- **Status:** Accepted (DRAFT — needs Masood's review) · **Date:** 2026-09-27 · **Job:** MODEL-LEVELS · **MANUAL** (reasons are text; Sanad reads only the class letter, F-133)
- **Standard:** IEC 62304 §4.3 (classification; an item may be lower than the system when segregated), §5.3.5 (segregation) · Builds on ADR-0003 (system = class C, owner order — not re-opened).

## Context
The first run stamped every requirement C (A-12). The system stays C. But §4.3 lets an item be lower when its failure cannot cause the harm, and §5.3.5 then asks how it is kept apart.

## Decision
| Item | Class | Why |
|---|---|---|
| sensor-item, excursion-item, alarm-item | C | on the alarm path: a failure leaves an excursion unalarmed |
| log-item | C | the history is a risk control (HAZ-008) |
| power-item | C | low-battery and power-loss controls (HAZ-005) |
| supervisor-item | C | watchdog, self-tests, band check (HAZ-003, HAZ-006, HAZ-007) |
| display-item | **C** | could look lower, but carries two display-only controls (SAF-012 calibration due, SAF-016 band shown) — segregation would not help |
| usb-item | **B** | its failure loses only an exported COPY of the history; the log, the alarm and the screen do not depend on it |

**Segregation of usb-item (§5.3.5):** reads through the log item's read-only accessor and refuses every host write (MRTM-USI-002); own lowest-priority task on core 0 (safety tasks on core 1); owns no data others read; task watchdog catches a hang; every record read carries a CRC-32. **Weakness said plainly:** FreeRTOS here has no memory protection between tasks, so the separation rests on design and static analysis (A-43, R-19).
Hardware leaves carry `C` meaning "carries a class-C risk control" (62304 classes software only).

## Consequences
- 2 requirements (MRTM-USI-001/002) at class B → Sanad rigour 2 on them; all others stay 4.
- If Masood prefers "everything C", set the two files back to C; nothing else changes.

## Four blocks
- **Assumptions:** A-12 (superseded for usb-item only), A-43. **Risks:** R-19. **Open questions:** none.
- **Trace links:** ADR-0003, MRTM-USI-001/002, 03-requirements/mrtm/**/`## Safety` sections, framework.yaml `class:`.
