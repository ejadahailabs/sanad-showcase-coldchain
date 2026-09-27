# ADR-0017 — Alarm hardware: piezo stage with two OR-ed inputs, current sense, watchdog timer on a hold-up rail

- **Status:** Accepted (DRAFT — needs Masood's review; EE-REVIEW) · **Date:** 2026-09-27 · **Phase:** 6 · **MANUAL** ADR shape (F-09) · IEC 60601-1-8 (alarm systems) · IEC 60601-1 cl. 4.7 · ISO 14971 cl. 7.1 (HAZ-003, HAZ-005, HAZ-006)
- **Model:** `MrtmHardware::PiezoBuzzerStage`, `WatchdogAlarmTimer`, `Supercap`, `IndicatorLed`; `MrtmBoard::buzzerLine` (GPIO 11), `wdtKickLine` (GPIO 15), `buzzerSenseLine` (GPIO 16), `redLine` (GPIO 12); implements ADR-0013
- **Requirements:** MRTM-SAF-001, SAF-009, SAF-013, SAF-014, SAF-015, SAF-023, SYS-003, SYS-004

## Context
ADR-0013 decided a backup alarm exists. This ADR decides the parts. Like a doorbell with two buttons (front and back door) wired to the same bell, and a battery that keeps the bell working when the house power is off.

## Decision
1. **Buzzer stage:** 5 V piezo, low-side logic-level MOSFET; gate driven through two Schottky diodes — one from GPIO 11 (firmware), one from the watchdog timer output. Either input sounds it.
2. **Current sense:** 1 Ω shunt + comparator set at 5 mA → GPIO 16; the firmware reads it every time it drives the buzzer (SAF-014) and during the power-up tests (SAF-007, SAF-023).
3. **Backup timer:** a stand-alone watchdog IC, 10 s timeout from one resistor, kick input on GPIO 15, supplied only from the hold-up rail.
4. **Hold-up rail:** 4 F / 5.5 V supercapacitor at 5.0 V → 133 s of backup sound with 2× life derating (power-budget.md), required 60 s.
5. **Red LED** on its own GPIO (12) is the diverse second signal when the buzzer is broken (SAF-015).

## Alternatives rejected
- *Separate backup buzzer:* a second sound confuses staff (HAZ-002) and doubles the part to test.
- *Coin cell for hold-up:* must be replaced; a flat cell is a latent fault.

## Consequences
- The buzzer is a single shared output — FMEA FM-14 (buzzer open) defeats both paths; it is detected by current sense and signalled by the red LED (cut set 3, 08-safety/fault-tree.md).
- EE-REVIEW: MOSFET and diode choice, comparator threshold, timer tolerance, capacitor leakage and charge limit.

## Four blocks
- **Assumptions:** A-18, A-19. **Risks:** R-11, R-13. **Open questions:** Q-14.
- **Trace links:** 09-hardware/hardware-design-description.md §5, power-budget.md, pin-map.md; 08-safety/fault-tree.md; ADR-0010, ADR-0013, ADR-0014.
