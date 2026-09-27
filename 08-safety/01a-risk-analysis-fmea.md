# FMEA — failure modes and effects, per part of the physical architecture

> **Standard:** IEC 60812:2018 (FMEA method) used as ISO 14971:2019 cl. 5.4 input; IEC 60601-1 cl. 4.7 (single-fault condition); IEC 62304 cl. 7.1.2 (hardware failures the software must handle).
> **MANUAL** — Sanad has no FMEA table or check (F-48). Parts are the usages of `MrtmPhysical::MrtmUnit` (Phase 4, plus the Phase 5 backup alarm). Scores use ADR-0012. DRAFT — needs Masood's review; every hardware failure rate is EE-REVIEW.

**In one line:** go part by part, ask "how can this break?", follow the break to the patient, and check a requirement catches it.

| ID | Part (model) | Failure mode | Cause | Local effect | System effect | Hazard | S | P | R | Detection / control | P after | R after |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| FM-01 | `esp32` | Firmware hangs | Software fault, stack overflow | Tasks stop | No alarm, frozen screen | HAZ-003 | 3 | 3 | 9 | SAF-004 (restart), SAF-010, SAF-009 (backup alarm) | 1 | 3 |
| FM-02 | `esp32` | Chip dead / latch-up | Supply spike, ESD | Nothing runs | No alarm | HAZ-003 | 3 | 2 | 6 | SAF-009, SAF-013 | 1 | 3 |
| FM-03 | `esp32` (flash) | Log sector worn or corrupt | Wear, power cut during write | Records unreadable | History gap | HAZ-008 | 2 | 2 | 4 | SYS-021 (CRC-32), SAF-018 (2 copies) | 1 | 2 |
| FM-04 | `esp32` (flash) | Stored band corrupt | Bit flip, bad write | Wrong limits | Wrong range watched | HAZ-007 | 3 | 2 | 6 | SAF-017 (CRC at power-up), SAF-016 (shown) | 1 | 3 |
| FM-05 | `esp32` (`buzzerPin`) | Output stuck low | Pin damage | Buzzer cannot be driven by firmware | Silent alarm | HAZ-006 | 3 | 1 | 3 | SAF-014 (current sense), SAF-015 (red flash) | 1 | 3 |
| FM-06 | `probe` | Open circuit / unplugged | Lead cut, connector | No reply on 1-Wire | No samples | HAZ-001 | 3 | 2 | 6 | SYS-012 (30 s), SAF-002 (alarm) | 1 | 3 |
| FM-07 | `probe` | Reads a fixed wrong value | Short, power-on reset value | Samples out of physical range | Wrong reading | HAZ-001 | 3 | 2 | 6 | SAF-003 (range fault), SYS-012 (CRC) | 1 | 3 |
| FM-08 | `probe` | Drifts inside range | Ageing | Offset 1–2 °C | Band edge moves | HAZ-004 | 3 | 2 | 6 | SAF-012 (calibration due), PRF-001, MNT-001 | 1 | 3 |
| FM-09 | `probe` (installed) | Wrong position | Placed against wall or in door | Reads the wrong air | Excursion missed or false | HAZ-001 | 3 | 2 | 6 | SAF-020 (instructions for use) | 1 | 3 |
| FM-10 | `oled` | Blank or frozen | Panel failure | No text | Warning not seen | HAZ-006 | 2 | 2 | 4 | Buzzer + red light are the primary alarm (SYS-003/004); SAF-015 | 1 | 2 |
| FM-11 | `displayLink`, `clockLink` (one I²C bus) | Bus hang | Glitch mid-transfer | Display and clock stop | Frozen screen, wrong time stamps | HAZ-006, HAZ-008 | 2 | 2 | 4 | SAF-021 (bus reset ≤ 1 s) | 1 | 2 |
| FM-12 | `rtc` | Clock drifts or stops | Crystal, temperature | Wrong time | Wrong audit times | HAZ-008 | 2 | 2 | 4 | SYS-020 (≤ 2 s/day), SAF-022 (stop logged) | 1 | 2 |
| FM-13 | `rtc` coin cell | Flat | Age | Time lost at power cut | Wrong audit times | HAZ-008 | 2 | 3 | 6 | SAF-022 | 1 | 2 |
| FM-14 | `buzzer` | Open / driver dead | Wire, component | No sound | Alarm not heard | HAZ-006 | 3 | 2 | 6 | SAF-007 (power-up test), SAF-014, SAF-015 | 1 | 3 |
| FM-15 | `buzzer` | Weak sound | Ageing, blocked port | Quieter than 65 dB(A) | Alarm not heard in a noisy room | HAZ-006 | 3 | 1 | 3 | SAF-001 (production test); residual — see failure-mode-assessment.md | 1 | 3 |
| FM-16 | `redLed` | Dead | LED failure | No flash | One of three signals lost | HAZ-006 | 2 | 1 | 2 | Buzzer + screen remain | 1 | 2 |
| FM-17 | `greenLed` | Dead | LED failure | "All good" light off | Staff call a technician | — | 1 | 2 | 2 | none needed | 2 | 2 |
| FM-18 | `ackButton` | Stuck pressed | Jammed, liquid | Button always "pressed" | Alarm silenced | HAZ-006 | 3 | 2 | 6 | SAF-019 (button fault at 60 s), SYS-019 (re-sound) | 1 | 3 |
| FM-19 | `battery` | Flat or aged | Age, deep discharge | Short run time | Monitor stops in outage | HAZ-005 | 3 | 3 | 9 | SAF-008 (low-battery alarm), MNT-002, SAF-013 | 1 | 3 |
| FM-20 | `powerPath` (charger) | Not charging | Charger fault | Battery drains | Monitor stops in outage | HAZ-005 | 3 | 2 | 6 | MNT-002 (charge shown), SAF-008 | 1 | 3 |
| FM-21 | `powerPath` (change-over) | Switch too slow | Component | Brown-out reset | Restart, alarm state lost | HAZ-003, HAZ-005 | 3 | 2 | 6 | SYS-016 (≤ 100 ms), SAF-006 (state restored) | 1 | 3 |
| FM-22 | `powerPath` | Over-voltage passed on | Adapter fault | Chip damage | Monitor dead | HAZ-003 | 3 | 1 | 3 | SAF-009, SAF-013; protection part EE-REVIEW (IEC 60601-1 cl. 8) | 1 | 3 |
| FM-23 | `backupAlarm` | Fails silent (latent) | Component | Backup channel gone | Only matters if the firmware also dies | HAZ-003 | 3 | 2 | 6 | SAF-023 (tested at every power-up) | 1 | 3 |
| FM-24 | `backupAlarm` | False trigger | Noise on the pulse line | Short spurious sound | Nuisance alarm | HAZ-002 | 2 | 1 | 2 | Self-clears at next pulse; acceptable | 1 | 2 |
| FM-25 | `holdUpCap` | Capacitance lost | Ageing, heat | Power-fail alarm shorter | Dead monitor may go unannounced | HAZ-005 | 3 | 2 | 6 | Capacitor derated 2× for life at 35 °C (EE-REVIEW, design rule, not a requirement) — see failure-mode-assessment.md | 1 | 3 |
| FM-26 | `usb` | Host writes to the log | Tampering, OS bug | Records changed | Audit untrue | HAZ-008 | 2 | 2 | 4 | SYS-014, IFC-003 (read-only volume) | 1 | 2 |
| FM-27 | `probeLink` | Noise on 1-Wire | Long lead, interference | Bad CRC | Samples dropped | HAZ-001 | 3 | 3 | 9 | SYS-012 (fault after 30 s of bad CRC), SAF-002 | 1 | 3 |

**Counts:** 27 rows over 16 model elements (12 parts, 3 interfaces, 1 port). After control no row is unacceptable; 18 rows stay in "review" (R = 3) and are argued in failure-mode-assessment.md.

## Four blocks
- **Assumptions:** A-17, A-18, A-23; every P is SYNTHETIC. **Risks:** R-08, R-10, R-11. **Open questions:** none new.
- **Trace links:** hazard-analysis.md, 06-design/system/MrtmPhysical.sysml, MrtmSafety.sysml, 03-requirements/safety/.
