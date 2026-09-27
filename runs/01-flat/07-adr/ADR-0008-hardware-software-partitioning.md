# ADR-0008 — One microcontroller, one Class C software system, eight software items

- **Status:** Accepted · **Date:** 2026-09-27 · **Phase:** 4 · **MANUAL** ADR shape (F-09) · IEC 62304 §5.3.1, §5.3.4, §5.3.5 · IEC 60601-1 frame
- **Model:** `06-design/system/MrtmPartitions.sysml` (`MrtmSystem`, `MonitoringFirmware`); picture `06-design/views/rendered/mrtmBlocks.svg`, allocation `rendered/mrtmAllocation.md`

## Context
The monitor must do nine jobs (sample, check the probe, detect, alarm, show, log, serve history, watch power, watch itself). Think of a small shop with one shopkeeper: one person can do all the jobs, but if the shopkeeper faints, every job stops.

## Decision
1. **Hardware item:** one ESP32 module with the probe, OLED, RTC, buzzer, two LEDs, button, battery and power path around it (`MrtmUnit`).
2. **Software system:** one firmware image, `MonitoringFirmware`, with eight software items: sensor, excursion, alarm, display, log, USB, power, supervisor.
3. **Every software item is Class C.** No segregation is claimed between items (IEC 62304 §5.3.5), because they share one processor and memory. Claiming a lower class for display or USB would need proof that they cannot disturb the alarm — we do not have that proof.
4. **Allocation:** each logical part (`LogicalMonitor`) is allocated to one software item; the firmware is allocated to the hardware (13 `allocate` statements).

## Consequences
- Everything gets Class C rigour: unit verification of every item, no exceptions. More work, simpler argument.
- Sanad reads a part-to-part `allocate` as a requirement link and warns (F-35); suppressed with reason.
- Sanad's allocation matrix shows only the top-level allocation (F-40 detail): the per-function table is in this ADR's model file, not in a picture.

## Four blocks
- **Assumptions:** A-16 (one processor is enough for a 10 s sampling period).
- **Risks:** R-08 (one processor is a single point of failure for the alarm — ADR-0010 answers it partly).
- **Open questions:** Q-12 (does the owner want a hardware-only backup alarm?).
- **Trace links:** satisfies MRTM-ENV-002, ENV-003 (hardware), SAF-004, SAF-006 (firmware), STK-001 (functions); ADR-0003 (Class C), ADR-0010.
