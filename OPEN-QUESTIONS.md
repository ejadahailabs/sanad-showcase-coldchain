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
