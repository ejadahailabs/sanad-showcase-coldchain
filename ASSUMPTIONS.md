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
| A-18 | 2026-09-27 | 5 | **Q-12 → YES (coordinator ruling, owner to confirm):** the product has an independent hardware backup alarm — an outside watchdog timer the firmware must pulse; when the pulses stop it sounds the buzzer; a hold-up capacitor keeps it sounding 60 s after all power is lost | Removes the single-point failure "firmware stops" from the top event (fault tree); ADR-0013; MRTM-SAF-009/010/013/023 | Yes |
| A-19 | 2026-09-27 | 5 | The excursion alarm is a continuous tone; the probe fault alarm is 1 s on / 1 s off (MRTM-SAF-011) | Two sounds staff can tell apart (HAZ-002) | Yes |
| A-20 | 2026-09-27 | 5 | **Q-05 → coordinator assumption:** severity and probability scales of ADR-0012 (3 × 3, synthetic) | ISO 14971 cl. 4.2 needs criteria before evaluation | Yes |
| A-21 | 2026-09-27 | 5 | **Q-13 → coordinator assumption:** when the log is full the oldest record is overwritten; the 9000-event warning (SYS-022) gives staff time to export first; every record is written twice (MRTM-SAF-018) | HAZ-008; stopping logging would lose the newest (most important) excursion | Yes |
| A-22 | 2026-09-27 | 5 | **Q-01/Q-02/Q-09 → coordinator assumptions:** users are nurses and pharmacists on all shifts incl. nights; the history must convince a clinic auditor or an inspector that stock was or was not exposed; the screen shows English only in version 1 | Hazard analysis needs a user and an audience | Yes |
| A-23 | 2026-09-27 | 5 | **Q-10 → coordinator assumption:** the clock is a battery-backed RTC set by the technician over USB; an oscillator stop is logged (MRTM-SAF-022) | FMEA FM-12/13 | Yes |
| A-24 | 2026-09-27 | 5 | **Q-11 → coordinator assumption:** the review project stays the placeholder `local/dogfood-fridge` until Masood adds a remote; no real platform is named | Naming a real project would be a claim nobody made | Yes |
| A-25 | 2026-09-27 | 6 | The "ESP32" of the brief is an **ESP32-S3** class module, because only the S3 has the native USB device MRTM-IFC-003 needs for a mass-storage volume | Component selection; pin map | Yes |
| A-26 | 2026-09-27 | 7 | Limit evaluation uses **time hysteresis only**: 7 samples in a row to enter (SYS-002) and 7 to leave (SYS-018); no °C dead band, because a dead band would keep an excursion open at 7.9 °C that SYS-018 says has ended. The dead band stays a config constant fixed at 0 (`MRTM_HYSTERESIS_TENTHS`) so a later requirement can set it | Limit evaluator design (Phase 8) | Yes |
| A-27 | 2026-09-27 | 7 | The acknowledge button raises a GPIO interrupt that wakes the alarm task at once; a 1 s polling cycle alone cannot meet MRTM-SYS-006 (ADR-0020) | Alarm task design | Yes |
| A-28 | 2026-09-27 | 7 | Both ESP32-S3 cores are used: safety tasks on core 1, slow I/O on core 0 (ADR-0019) | Task partitioning | Yes |
