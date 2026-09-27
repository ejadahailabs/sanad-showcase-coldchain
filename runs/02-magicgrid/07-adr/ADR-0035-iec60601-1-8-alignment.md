# ADR-0035 — Alarm signals aligned to IEC 60601-1-8: one requirement changed, four deltas held as assumptions

- **Status:** Proposed (DRAFT — needs Masood's review; touches risk controls, so the owner decides) · **Date:** 2026-09-27 · **Job:** MODEL-LEVELS
- **Standard:** IEC 60601-1-8:2006+A1:2012+A2:2020 — edition ASSUMED (A-39); figures from memory, to confirm · Check: `13-assessment/iec60601-1-8-check.md`

## Context
The run chose its alarm signals before checking the alarm standard: red 1 Hz early light, continuous buzzer, 15 min re-sound, 1 s on/off probe-fault tone. The standard gives each priority its own colour, flash rate and sound pattern.

## Decision
- **D-2 changed through Sanad:** new MRTM-ALM-006 (alarm subsystem) — the confirmed excursion sounds as bursts of 10 pulses, repeated every 2.5 s to 15 s — derived from MRTM-SYS-003, source = the standard. Left undecomposed and unimplemented on purpose: it is a visible gap until Masood answers Q-20.
- **D-1 (early light colour), D-4 (audio-paused indicator), D-5 (probe-fault priority), D-6 (delays in the IFU):** held as assumptions A-42, A-45, A-46, A-47 — each touches a risk control or the hardware.
- **D-3 (red 2 Hz):** compliant, to confirm the duty cycle.

## Consequences
- The overall residual risk stays "not accepted" until Q-20 is answered (08-safety/05).
- If the monitor is not ME equipment (A-41), the standard is still the design target.

## Four blocks
- **Assumptions:** A-39, A-41, A-42, A-45…A-47. **Risks:** R-20. **Open questions:** Q-20.
- **Trace links:** MRTM-ALM-006, MRTM-SYS-003/004/019/024, MRTM-SAF-011, ADR-0030.
