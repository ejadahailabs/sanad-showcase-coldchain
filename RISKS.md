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
| R-08 | 2026-09-27 | 4 | One processor runs every job, including the alarm | Processor dies → no alarm | Watchdog restart + alarm restore (SAF-004, SAF-006); Q-12 asks about a hardware backup alarm; Phase 5 hazard | Masood |
| R-09 | 2026-09-27 | 4 | Probe placement or self-heating reads the wrong air | Excursion missed or false | ADR-0009; Phase 5 hazard cause | Claude |
| R-10 | 2026-09-27 | 4 | Flash wear-out or partition corruption | History lost | CRC-32 per record (SYS-021), capacity warning (SYS-022); ADR-0011 | Claude |
| R-11 | 2026-09-27 | 5 | The backup alarm itself fails silent (latent) or false-triggers | No second channel when the firmware dies, or a nuisance alarm | Power-up test of the backup path (MRTM-SAF-023); false trigger scored in FMEA FM-24 (acceptable); part choice EE-REVIEW | Claude |
| R-12 | 2026-09-27 | 5 | The hazard list in Markdown and the hazard model in SysML drift apart | The risk file says one thing, the model another | Sanad does not compare them (F-49); `tools/hazard-link-check.py` does, run every phase | Claude |
| R-13 | 2026-09-27 | 6 | The 3.3 V LDO has almost no headroom at a 3.4 V cell, and the 5 V adapter must be medical-grade (2 × MOPP) | Brown-outs near the low-battery point; an unsafe adapter | EE-REVIEW; buck-boost as the fallback; adapter listed as a component to qualify (Q-14) | Masood (EE) |
| R-14 | 2026-09-27 | 7 | No static-analysis tool chosen for the MISRA / AUTOSAR subsets (ADR-0022) | Class C coding rules unchecked in Phase 9 | Choose in Phase 9; until then compiler warnings as errors | Masood |
| R-15 | 2026-09-27 | 7 | Sanad's sequence view joins messages by lifeline name across the whole model (F-67) | A sequence picture shows messages from another sequence | Unique lifeline names per sequence package; recheck every new sequence | Claude |
| R-16 | 2026-09-27 | 9 | The target HAL (`hal_esp32.c`) has never been compiled; battery ADC, RTC driver and USB callbacks are stubs | Host-verified logic meets untested drivers on first bring-up | Line-by-line REVIEW at bring-up; on-target unit tests before any system test |
| R-17 | 2026-09-27 | 11 | Staff learn to ignore the 1 Hz early light because it flashes on every door opening (CR-001) | The early tier adds nothing, or dulls attention to the 2 Hz high-priority flash | Silent and self-clearing (ADR-0030); watch in the first clinic trial; drop the tier if it is ignored | Masood |
