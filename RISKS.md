# Risk Register

| # | Date | Phase | Risk | Effect | Mitigation | Owner |
|---|---|---|---|---|---|---|
| R-01 | 2026-09-26 | 0 | Stakeholder needs are guessed, not heard | Requirements may solve the wrong problem | Q-01/Q-02 to Masood; mark stakeholder reqs as assumed | Masood |
| R-02 | 2026-09-26 | 0 | Headless setup differs from what the Setup form would write | The click session finds a different config | CLICK-LIST C-01 re-opens Setup on this file | Masood |
| R-03 | 2026-09-26 | 0 | Scope creep into remote alerts | Phases grow past the run's budget | OUT-1 in scope.md | Claude |
| R-04 | 2026-09-27 | 0 | Class C needs artifacts Sanad has no home for | Many MANUAL files; trace breaks between them | Each is a FINDINGS row; links kept as ids in text | Claude |
| R-05 | 2026-09-27 | 1 | Alarm fatigue: too many alerts make staff ignore them | A real excursion is missed | 60 s confirmation time (A-04); acknowledge button | Claude |
| R-06 | 2026-09-27 | 2 | Suppressions hide a real problem later | A true defect stays silent | Each has a reason; missing-decomposition expires 2026-10-31; reviewed in Phase 3 | Masood |
| R-07 | 2026-09-27 | 3 | The placeholder review project `local/dogfood-fridge` is taken for a real one | The Review view shows a platform error in the click session | Named in ADR-0007 and CLICK-LIST C-08; replace when a remote exists | Masood |
