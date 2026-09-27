# Alarm behaviour against IEC 60601-1-8 (alarm systems)

> **RUN-03 copy:** carried unchanged from run 2 (the alarm behaviour did not change with the framework); ids rewritten to this run's layer ids by `tools/remap-ids.py`. Every figure stays an assumption (A-3-06).

> **Standard:** IEC 60601-1-8:2006+A1:2012+A2:2020 — edition ASSUMED (A-39). **Every figure below is from memory of that edition and is to be confirmed against the customer's edition.** No copy of the standard was read in this run. DRAFT — needs Masood's review. MODEL-LEVELS, 2026-09-27.
> **Frame question first (Q-20):** 60601-1-8 applies to alarm systems of ME equipment. A fridge monitor touches no patient; it may instead fall under IEC 61010-1 with 60601-1-8 used as good practice. This check treats 60601-1-8 as the design target either way (A-41).

**In one line:** the standard gives every alarm a priority (high / medium / low) and says how each one must look and sound, so that staff everywhere read alarms the same way — like traffic lights meaning the same in every city.

## What the standard asks (as remembered) vs. what this run chose

| # | Topic | Standard (assumed edition, to confirm) | This run | Delta | Resolution |
|---|---|---|---|---|---|
| D-1 | Low-priority visual (early tier) | cyan or yellow; **constant** (not flashing) | red, flashing 1 Hz (MRTM-SYS-024 via ADR-0030, MRTM-SW-001) | colour **and** pattern differ; red is reserved for high priority | **Assumption A-42** + Q-20: a yellow indicator is a hardware change (a third LED). Not changed now. |
| D-2 | High-priority auditory (confirmed excursion) | burst of 10 pulses; burst repeated every 2.5 s to 15 s; pulse spectrum with harmonics | continuous tone (MRTM-SYS-003, A-19) | pattern differs | **Requirement changed through Sanad's create path:** MRTM-LA-006 derived from MRTM-SYS-003 with this standard as its source. Not yet decomposed to a leaf or implemented — a real, visible gap (Q-20). |
| D-3 | High-priority visual | red, flashing 1.4 Hz to 2.8 Hz, duty cycle 20 % to 60 % | red, 2 Hz (MRTM-SYS-004), 50 % duty (alarm_mgr) | none if 50 % is confirmed | compliant (to confirm) |
| D-4 | Audio paused (acknowledge) | audio-paused state must be **indicated**; its duration is set by the maker and disclosed | buzzer off, re-sounds after 15 min (MRTM-SYS-019, A-13); no audio-paused indicator | no indicator | **Assumption A-45**: the display shows "ALARM SILENCED" while paused — to add as a display requirement after Q-20. |
| D-5 | Technical alarm (probe fault) | a technical alarm also takes a priority; medium = yellow flashing 0.4–0.8 Hz, 3-pulse burst | 1 s on / 1 s off tone (MRTM-SAF-011), no own light | pattern not from the priority scheme | **Assumption A-46**: kept (staff can tell it apart, HAZ-002) until Q-20. |
| D-6 | Alarm system delay | the alarm condition delay and the signal generation delay are **disclosed** in the instructions for use | 60 s confirmation + ≤ 5 s signal; not stated in the IFU | disclosure missing | **Assumption A-47**: IFU states "an alarm sounds 60 s to 65 s after the air leaves 2–8 °C; a quiet light shows within 5 s". IFU text is an owner deliverable. |
| D-7 | Sound pressure | maker states the range; measured per the standard's method | ≥ 65 dB(A) at 1 m (MRTM-SAF-001) | method not named | bench SP-06 to use the standard's method (to confirm) |

**Counts:** 7 topics · compliant 1 (D-3, to confirm) · changed through Sanad 1 (D-2 → MRTM-LA-006) · assumptions 4 (D-1, D-4, D-5, D-6) · bench method 1 (D-7).

## Why not change D-1, D-4, D-5 now
Each touches a risk control (HAZ-002 alarm fatigue, HAZ-006 annunciator failure). Changing a risk control is a safety decision for Masood, and D-1 needs new hardware. The deltas are recorded; nothing is closed.

## Four blocks
- **Assumptions:** A-39, A-41, A-42, A-45, A-46, A-47. **Risks:** R-20. **Open questions:** Q-20.
- **Trace links:** MRTM-LA-006, MRTM-SYS-003/004/019/024, MRTM-SAF-001/011, ADR-0030, ADR-0035, 08-safety/04-residual-risk.md.
