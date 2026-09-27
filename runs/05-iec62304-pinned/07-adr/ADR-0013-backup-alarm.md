# ADR-0013 — A hardware backup alarm that sounds when the firmware goes quiet

- **Status:** Accepted (DRAFT — needs Masood's review; Q-12 assumed YES, A-18) · **Date:** 2026-09-27 · **Phase:** 5 · **MANUAL** ADR shape (F-09) · ISO 14971 cl. 7.1 b (protective measure) · IEC 62304 cl. 5.3.5 (segregation), 4.3 (a hardware control lowers the software class need) · IEC 60601-1-8 frame (alarm systems) · IEC 60601-1 cl. 4.7 (single-fault condition)
- **Model:** `MrtmPhysical::BackupAlarm`, `HoldUpCapacitor`, `MrtmUnit::backupAlarm / holdUpCap / wdtKickLine / backupBuzzerLine / buzzerSenseLine`; `MrtmSafety::MrtmRiskControls`; pictures `rendered/mrtmInterfaces.svg`, `rendered/mrtmSafetyReqs.svg`
- **Requirements:** MRTM-SAF-009, -010, -013, -014, -023

## Context
One processor does everything (ADR-0008, R-08). If it hangs, the on-chip watchdog restarts it (MRTM-SAF-004). But if the processor is dead, or the restart loops, nothing can sound. A smoke alarm with a dead battery beeps; our monitor would just go quiet.

## Decision
1. **An outside timer (the backup alarm) must be pulsed by the firmware.** If the pulses stop for 10 s, the timer drives the buzzer itself (MRTM-SAF-009). It needs no processor and no bus.
2. **Only the alarm service sends the pulses.** A processor that runs but whose alarm job is stuck also trips it (MRTM-SAF-010).
3. **The buzzer has two OR-ed drive inputs** (`drive`, `backupDrive`), so either path can sound it.
4. **A hold-up capacitor** keeps the backup alarm sounding 60 s after all power is gone (MRTM-SAF-013). Value EE-REVIEW.
5. **Latent faults are hunted:** the firmware tests the backup path at every power-up (MRTM-SAF-023) and checks the buzzer current every time it drives it (MRTM-SAF-014).

## Alternatives rejected
- *Second processor running a copy of the check:* more code at Class C, and a common software fault can hit both.
- *Rely on the on-chip watchdog alone:* it lives on the same chip it guards.

## Consequences
- Adds 2 parts and 5 connections to the physical model; Phase 6 picks the timer and capacitor (EE-REVIEW).
- The backup alarm does not know the temperature; it says "the monitor is not working", which is the right message (fault tree: it removes the single-point cut set "firmware stops").
- Every power-up now beeps twice (buzzer test + backup test); users must be told why (instructions for use, Phase 12).

## Four blocks
- **Assumptions:** A-18. **Risks:** R-08 (reduced), R-11. **Open questions:** Q-12 (answered by assumption, owner to confirm).
- **Trace links:** HAZ-003, HAZ-005; MRTM-SAF-009, -010, -013, -014, -023; ADR-0008, ADR-0010, ADR-0014.
