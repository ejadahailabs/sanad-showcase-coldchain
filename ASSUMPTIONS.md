# Assumptions Register

| # | Date | Phase | Assumption | Why needed | Owner to confirm |
|---|---|---|---|---|---|
| A-01 | 2026-09-26 | 0 | The packaged build `sanad-sysml-r4int3-d388e43e.vsix` (sha256 b91589d3…) is the Sanad under test; source read from commit 745ef793 | The checkout's working tree sits at f02784b8, 1615 commits older | Yes |
| A-02 | 2026-09-26 | 0 | Seven requirement kinds with tags STK SYS SAF PRF ENV MNT IFC, prefix MRTM- | Owner said "choose and record" | Yes |
| A-03 | 2026-09-26 | 0 | Uplink order: system→stakeholder; safety, performance, environmental, maintainability, interface→system | Sanad needs one parent kind per kind | Yes |
| A-04 | 2026-09-26 | 0 | Allowed band 2–8 °C, sample every 10 s, 60 s confirmation, accuracy 0.5 °C, log 10 000 events — all SYNTHETIC | Numbers are needed to make requirements testable | Yes |
| A-05 | 2026-09-26 | 0 | Version 1 has local alerts only (buzzer, light, screen); no network | Keeps the product small | Yes |
| A-06 | 2026-09-26 | 0 | Stakeholder needs are assumed from roles, not from interviews | No stakeholder is available | Yes |
| A-07 | 2026-09-27 | 0 | IEC 62304 class C mapped to Sanad rigour 4; A→0, B→2 | Sanad needs a number 0–4 per class | Yes |
| A-08 | 2026-09-27 | 0 | Rule pack `requirements-writing` adopted unchanged; `design-review` pack deferred to Phase 4 | Sanad's recommended set | Yes |
| A-09 | 2026-09-27 | 0 | Risk acceptability table in risk-management-plan.md is synthetic | ISO 14971 needs one before Phase 5 | Yes |
| A-10 | 2026-09-27 | 1 | The history is read out over a USB cable as a read-only file | Needed for the ReviewHistory use case | Yes |
| A-11 | 2026-09-27 | 2 | Battery endurance 4 h (STK-008, ENV-001) | Q-07 unanswered; a number is needed to test | Yes |
| A-12 | 2026-09-27 | 2 | Every requirement is safetyClass C (explicit), pending Q-04 | Owner order: top class | Yes |
| A-13 | 2026-09-27 | 3 | A silenced alarm comes back after 15 min while the excursion continues (MRTM-SYS-019) | Review T09 needs a number; IEC 60601-1-8 leaves the pause time to the maker | Yes |
| A-14 | 2026-09-27 | 3 | The clock drifts 2 s per day or less (MRTM-SYS-020) | Review T10; a typical RTC crystal does this; how the clock is set stays Q-10 | Yes |
| A-15 | 2026-09-27 | 3 | Low-battery alarm threshold 3.4 V (MRTM-SAF-008) — EE-REVIEW | Review T11; synthetic value for a single Li-ion cell | Yes |
| A-16 | 2026-09-27 | 4 | One ESP32 has enough time and memory for all eight software items at a 10 s sampling period | ADR-0008 partitioning | Yes |
| A-17 | 2026-09-27 | 4 | Internal flash endurance covers the event write rate over the product life — EE-REVIEW | ADR-0011 data retention | Yes |
