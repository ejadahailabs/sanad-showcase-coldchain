# ADR-0016 — Display bus: OLED and clock share one I²C bus at 100 kHz

- **Status:** Accepted (DRAFT — needs Masood's review; EE-REVIEW) · **Date:** 2026-09-27 · **Phase:** 6 · **MANUAL** ADR shape (F-09) · IEC 60601-1 cl. 4.7 · IEC 62304 cl. 5.3.3 · ISO 14971 cl. 7.1 (HAZ-006, HAZ-008)
- **Model:** `MrtmHardware::I2cWiring`, `Oled128x64`, `TcxoRtc`; `MrtmBoard::displayLink` (address 60 = 0x3C) and `clockLink` (address 104 = 0x68), both SDA 8 / SCL 9, 100 kHz, 4.7 kΩ
- **Requirements:** MRTM-IFC-004, SYS-005, SYS-011, SYS-020, SAF-021, SAF-022

## Context
The screen and the clock both need a bus. Two buses cost pins and code; one bus means one fault can hit both. Like two flats sharing a staircase: cheaper, but a blocked stair blocks both.

## Decision
1. One I²C bus on GPIO 8 (SDA) / 9 (SCL), 100 kHz (not 400 kHz: more margin on a board near a fridge compressor), 4.7 kΩ pull-ups.
2. The firmware resets the bus within 1 s of a timeout (MRTM-SAF-021) — nine clock pulses and a stop, then re-initialise both devices.
3. **The alarm never uses this bus.** Buzzer and red light are plain GPIO lines (ADR-0010), so a hung bus cannot silence the alarm.

## Alternatives rejected
- *SPI display:* 4 more pins; no safety gain because the alarm is already off-bus.
- *Separate bus per device:* more code for a fault already handled by SAF-021.

## Consequences
FMEA FM-11 (bus hang) is a two-device effect, covered by SAF-021; residual acceptable (R = 2).

## Four blocks
- **Assumptions:** A-23. **Risks:** R-13. **Open questions:** none.
- **Trace links:** 09-hardware/pin-map.md; 08-safety/01a-risk-analysis-fmea.md FM-10…FM-13.
