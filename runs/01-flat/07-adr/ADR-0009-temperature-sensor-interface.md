# ADR-0009 — The temperature probe talks 1-Wire and every reading carries a checksum

- **Status:** Accepted · **Date:** 2026-09-27 · **Phase:** 4 · **MANUAL** ADR shape (F-09) · IEC 62304 §5.3.2 (interfaces) · ISO 14971 §7.1 (risk control: wrong temperature shown as right)
- **Model:** `MrtmInterfaces::ProbeBus`, `MrtmPhysical::MrtmUnit::probeLink`; picture `06-design/views/rendered/mrtmInterfaces.svg`

## Context
A thermometer that lies is worse than no thermometer. The probe sits in the fridge on a cable; cables get pinched and connectors corrode.

## Decision
1. Probe = DS18B20-class digital sensor on a single-wire bus (1-Wire), one sensor per bus (MRTM-IFC-001).
2. Every reading is checked with the sensor's own CRC-8. A reading with a bad checksum is thrown away, never shown and never used for alarms (MRTM-SYS-012 as reworded in review T05).
3. A reading outside -30 °C to 50 °C is treated as a probe fault, not a temperature (MRTM-SAF-003, review T03).
4. No good reading for 30 s → probe fault → buzzer within 5 s and a fault message (MRTM-SYS-012, SAF-002, SYS-013).
5. Accuracy ±0.5 °C over 0–15 °C comes from the probe itself; a replacement probe needs no calibration (PRF-001, MNT-001). EE-REVIEW for the pull-up resistor and cable length (Phase 6).

## Consequences
A pinched cable ends as a loud fault, not a silent wrong number. The ±0.5 °C near the band edge is a known residual risk for Phase 5 (review T16).

## Four blocks
- **Assumptions:** A-04 (synthetic numbers).
- **Risks:** R-09 (probe self-heating or poor placement reads the wrong air — Phase 5 hazard cause).
- **Open questions:** none new.
- **Trace links:** MRTM-IFC-001, SYS-012, SAF-002, SAF-003, SYS-013, PRF-001, MNT-001, ENV-004; review round 1 T03, T05, T16.
