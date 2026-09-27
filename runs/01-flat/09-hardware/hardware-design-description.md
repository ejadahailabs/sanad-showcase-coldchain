# Hardware design description — MRTM

> **Standard frame:** IEC 60601-1:2005+A2 (basic safety and essential performance) — cl. 4.2 (risk management, see 08-safety/), 4.3 (essential performance), 4.7 (single-fault condition), 4.8 (components), 8 (electrical hazards), 11 (excessive temperature), 15 (construction); IEC 60601-1-2 (EMC); IEC 60601-1-8 (alarm systems). IEC 62304 cl. 5.3.3 (hardware the software relies on).
> **MANUAL** — Sanad has no hardware-design document (F-58); it holds the model the document explains: `06-design/hardware/MrtmHardware.sysml`. The tables in this folder marked GENERATED come from that model. Every value is **EE-REVIEW** — nothing here is a checked electrical design. DRAFT — needs Masood's review.

**In one line:** one small board with an ESP32-S3, a probe on a lead, a screen, a buzzer, two lights, a button, a battery — plus a tiny timer and a capacitor that can sound the buzzer when everything else has failed.

## 1. What the hardware must keep doing (essential performance, cl. 4.3)
Measure the fridge air and **alarm** an excursion within the time budget (ADR-0014). Everything else (screen, history, USB) supports that. Losing the alarm without an alarm about it is the one thing a single fault must never cause (cl. 4.7 → 08-safety/failure-mode-assessment.md §1).

## 2. The pictures (from the model, drawn by Sanad)
| Picture | Shows |
|---|---|
| `06-design/views/rendered/mrtmHwBlocks.svg` | Every chosen component and every wiring definition with its pin attributes |
| `06-design/views/rendered/mrtmHwInterfaces.svg` | The board and its connections (see F-60: redefined parts and wires are drawn without names) |
| `06-design/views/rendered/mrtmInterfaces.svg` | The Phase 4/5 physical wiring, incl. the backup alarm path |

## 3. Tables (GENERATED from the model by `tools/hw-tables.cjs`)
| File | What | Check it runs |
|---|---|---|
| pin-map.md | 15 pin assignments on the ESP32-S3 | no pin used twice; no strapping / flash / USB pin |
| power-budget.md | Normal 42.5 mA, alarm 80.5 mA | battery ≥ 4 h (ENV-001), hold-up ≥ 60 s (SAF-013) |
| bom.md | 12 modelled components | — |
| hardware-trace-matrix.md | 29 requirements × 28 hardware elements, 46 marks | — |

## 4. Power (cl. 8, cl. 4.7)
- **Input:** external 5 V adapter. It must be a medical-grade supply (2 × MOPP, IEC 60601-1 cl. 8.5) — the board itself then works at safety extra-low voltage. EE-REVIEW.
- **Battery:** one protected Li-ion cell, load-sharing charger; change-over with no gap (SYS-016). Mains-present line to GPIO 2 (SAF-005).
- **Rails:** 3.3 V LDO for the logic. At a 3.4 V cell the LDO has almost no headroom — a buck-boost may be needed (R-13).
- **Hold-up rail:** 4 F supercapacitor at 5.0 V, charged through a current limiter; feeds only the backup timer and the buzzer's backup input.

## 5. Alarm hardware (ADR-0017)
Buzzer stage = piezo + low-side MOSFET + two gate inputs diode-OR-ed (firmware GPIO 11, backup timer output) + 1 Ω shunt + comparator → GPIO 16 (current sense, SAF-014). Backup timer = watchdog IC, 10 s timeout, kicked on GPIO 15, supplied from the hold-up rail. Red LED on GPIO 12 is the diverse second signal (SAF-015).

## 6. Passives and mechanics (MANUAL — not in the model, F-58)
| Item | Value (EE-REVIEW) | Where |
|---|---|---|
| 1-Wire pull-up | 4.7 kΩ to 3.3 V | probeLink (value is in the model) |
| I²C pull-ups | 2 × 4.7 kΩ | displayLink / clockLink (in the model) |
| Battery divider | 2 × 100 kΩ, ratio 0.5 | batterySenseLine (ratio in the model) |
| Mains-present divider | 10 kΩ / 20 kΩ | mainsSenseLine |
| Buzzer MOSFET, 2 OR diodes, shunt 1 Ω, comparator | logic-level N-MOSFET, Schottky | buzzer stage |
| LED resistors | 2 × 330 Ω | redLine, greenLine |
| Supercap charge limiter | 100 Ω | hold-up rail |
| ESD protection | TVS on USB and probe connector | cl. 8, IEC 60601-1-2 |
| Enclosure | wall-mount, IP22, cleanable; probe lead through a door gasket | cl. 11, 15 |

## 7. Everything waiting for an electrical engineer (EE-REVIEW list)
Every current in power-budget.md · battery capacity and ageing · LDO dropout (R-13) · supercap size, leakage, life · buzzer loudness at 1 m · 5 mA sense threshold · watchdog timeout tolerance · pin map against the module datasheet · adapter isolation (2 × MOPP) · EMC (IEC 60601-1-2) · probe accuracy at the band edge · flash endurance (A-17).

## Four blocks
- **Assumptions:** A-05, A-11, A-15, A-17, A-18, A-25. **Risks:** R-08, R-11, R-13. **Open questions:** Q-14.
- **Trace links:** 06-design/hardware/MrtmHardware.sysml; component-selection.md; pin-map.md; power-budget.md; bom.md; hardware-trace-matrix.md; ADR-0015…0017; 08-safety/.
