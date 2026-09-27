# ADR-0015 — Sensor bus: one DS18B20 on 1-Wire, GPIO 4, 4.7 kΩ pull-up

- **Status:** Accepted (DRAFT — needs Masood's review; EE-REVIEW) · **Date:** 2026-09-27 · **Phase:** 6 · **MANUAL** ADR shape (F-09) · IEC 60601-1 cl. 4.7 · IEC 62304 cl. 5.3.3 · ISO 14971 cl. 7.1 (HAZ-001, HAZ-004)
- **Model:** `MrtmHardware::OneWireWiring`, `Ds18b20`, `MrtmBoard::probeLink` (`dqGpio = 4`, `pullUpOhms = 4700`); builds on ADR-0009
- **Requirements:** MRTM-IFC-001, PRF-001, ENV-004, MNT-001, SYS-012, SAF-003

## Context
ADR-0009 chose a digital probe. Phase 6 fixes the wire. Like a garden hose: one pipe, one tap, and a pressure gauge (the CRC) that tells you when it leaks.

## Decision
1. One DS18B20 alone on the bus, powered by its own supply wire (not parasite power) — parasite power makes conversions fail on long leads.
2. GPIO 4, external 4.7 kΩ pull-up to 3.3 V, 2 m lead (EE-REVIEW for the lead length and pull-up value).
3. 12-bit resolution, 750 ms conversion inside the 10 s sampling period (ADR-0014).
4. Every scratchpad read checks CRC-8; the power-on value (85 °C) is outside the plausible range, so SAF-003 catches it.

## Alternatives rejected
- *Thermistor on the ADC:* a broken wire reads as a plausible temperature; calibration per unit breaks MNT-001.
- *Two probes for drift detection:* doubles cost and code; residual R1 in 08-safety covers drift with yearly calibration (SAF-012).

## Consequences
A probe fault shows up as missing or bad-CRC samples (SYS-012, 30 s), never as a quiet wrong value — except slow drift (residual R1).

## Four blocks
- **Assumptions:** A-04. **Risks:** R-09. **Open questions:** none.
- **Trace links:** 09-hardware/pin-map.md, component-selection.md; 08-safety/01a-risk-analysis-fmea.md FM-06…FM-09, FM-27.
