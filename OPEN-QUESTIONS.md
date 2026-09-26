# Open Questions

| # | Date | Phase | Question | Blocks | Answer (date) |
|---|---|---|---|---|---|
| Q-01 | 2026-09-26 | 0 | Who is the real user — pharmacist, nurse, or both — and do they work night shifts? | Stakeholder reqs STK-001..003 wording | Assumed: A-22 (coordinator, 2026-09-27) |
| Q-02 | 2026-09-26 | 0 | What must the audit record prove, and to whom (clinic, regulator)? | History export format | Assumed: A-22 (coordinator, 2026-09-27) |
| Q-03 | 2026-09-26 | 0 | Is a remote alert (SMS/app) needed in version 1? | Scope OUT-1 | Assumed: A-05 |
| Q-04 | 2026-09-27 | 0 | Is Class C right for the whole product, or only the alarm chain (with the display at B)? | safetyClass defaults | Assumed: A-12 (all Class C) |
| Q-05 | 2026-09-27 | 0 | What are the real severity and probability scales for the risk table? | Phase 5 evaluation | Assumed: A-20 / ADR-0012 (coordinator, 2026-09-27) |
| Q-06 | 2026-09-27 | 1 | How fast must staff react once alerted — is "about a minute" to alert acceptable to the users? | STK/SYS alert timing | Assumed: A-04 + ADR-0014 (65 s budget) |
| Q-07 | 2026-09-27 | 1 | How long must the monitor run with no mains power (battery hours)? | ENV/SYS power requirements | Assumed: A-11 (4 h) |
| Q-08 | 2026-09-27 | 1 | Does the clinic need the history as a file (CSV/PDF) or only on screen? | IFC history export format | Assumed: A-10 (read-only USB file) |
| Q-09 | 2026-09-27 | 1 | Which language(s) must the screen show? | display requirement | Assumed: A-22 (English only) |
| Q-10 | 2026-09-27 | 2 | How is the monitor's UTC clock set and kept accurate (RTC + manual set, or USB host sync)? | TBD-SYS-clock; SYS-008/010 time stamps | Assumed: A-23 (coordinator, 2026-09-27) |
| Q-11 | 2026-09-27 | 3 | Which platform and project will hold this repo's pull requests (GitHub or GitLab; name)? | `review:` block; real review rounds from round 2 | Assumed: A-24 (placeholder kept) |
| Q-12 | 2026-09-27 | 4 | Does the product need a hardware-only backup alarm that sounds when the firmware dies? | ADR-0008, ADR-0010, Phase 5 | Assumed: **YES — A-18 / ADR-0013 (coordinator ruling 2026-09-27, owner to confirm)** |
| Q-13 | 2026-09-27 | 4 | When the log is full: overwrite the oldest record, or stop logging and alarm? | ADR-0011, SYS-015 | Assumed: A-21 (overwrite oldest, coordinator 2026-09-27) |
| Q-14 | 2026-09-27 | 6 | Who does the electrical review (EE-REVIEW items in 09-hardware/hardware-design-description.md §7), and is the ESP32-S3 variant (A-25) acceptable? | Phase 6 values before any board is built; not blocking the document run | Assumed: S3 accepted (A-25); reviewer to be named by Masood |
| Q-15 | 2026-09-27 | 7 | Who may change the allowed band in the field, and how is that change approved and logged? | MonitorConfig write path (ADR-0024); MRTM-SYS-017 fixes 2–8 °C | Assumed: technician over USB with a logged config-change event; band stays 2–8 °C unless a new requirement says otherwise |
| Q-16 | 2026-09-27 | 9 | Where does the target build run — install ESP-IDF v5.x on this box, or a separate build machine? And which exact ESP-IDF tag (SOUP-1)? | Target build, on-target unit tests, SOUP-1/4/5/6 versions | Assumed: A-30 (host only for now) |
| Q-17 | 2026-09-27 | 9 | Add a backup-alarm sense line (GPIO 17 proposed) to the board? Without it MRTM-SAF-023 cannot be met as drawn | DEF-006, hardware design | Open — EE decision |
| Q-18 | 2026-09-27 | 10b | Who runs the 14 bench / inspection procedures (SP-01…SP-14), on which board, with which instruments — and is the IFU (SP-14) in scope before release? | 16 requirements stay unverified (blocked); gate stays red (F-102) | Open — needs hardware (A-30) |
| Q-19 | 2026-09-27 | 11 | CR-001 says "raise an alarm within 5 s". Is a silent low-priority alarm (red light 1 Hz) enough, with the buzzer still at 60 s (ADR-0030)? And may MRTM-STK-002 change to "no **audible** alert"? | MRTM-SYS-024 meaning; STK-002 wording; HAZ-002 | Assumed: yes, two tiers (ADR-0030) — owner to confirm |
