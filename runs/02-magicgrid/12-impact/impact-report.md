# Impact report — change CR-001 "alarm within 5 seconds"

> **Standard:** IEC 62304 §6.2.3 (analyse change requests), §6.2.4 (change approval), §8.2.3 (verify changes) · ISO 14971 cl. 7.6, cl. 10 · Class C.
> **Status:** DRAFT — needs Masood's review. **Phase 11, 2026-09-27, DOGFOOD-6.**
> **What this is:** before you change one part of a machine, you list every other part it touches. Sanad made the first list. This page adds what Sanad's list missed.

## The change in one line
New requirement **MRTM-SYS-024** (id from Sanad's allocator, `createRequirement`, Class C, uplink MRTM-STK-001): *"The system shall raise an alarm within 5 seconds of a temperature excursion."*

## Picture first — Sanad's list vs the full list

| | Sanad found | Sanad missed (found by hand) |
|---|---|---|
| Impact of the new requirement itself | **0 artifacts** ("Nothing in the graph depends on MRTM-SYS-024") | the whole change: it clashes with 3 requirements |
| Impact of the 6 requirements it clashes with (STK-001, STK-002, SYS-001, SYS-002, SYS-003, PRF-002) | **100 artifacts**: 24 requirements, 24 code functions, 52 test cases; 2 through prose ("candidate") | — |
| Of those 100, really had to change | 4 code functions, 9 test cases, 0 of the 24 requirements | — |
| Items the change really touched that Sanad did not list | — | **30** (table below) |
| A conflict warning | none — the gate raised only `indefinite-article` (info) and `undeclared-id-prefix` ("CR") on MRTM-SYS-024 | the conflict with STK-002 / SYS-002 / PRF-002 |

Sanad's own outputs: `12-impact/sanad-impact/` (before the change: one "Impact of a Requirement" export per subject + the review's impact reading) and `12-impact/sanad-impact-after/` (after: MRTM-SYS-024 now reaches 4 code functions and 7 test cases). Tool: `tools/impact-headless.cjs` (Sanad's `impactView` / `impactReport` / `impactReading`, fed the same facts as the CLI).

**Why Sanad saw so little.** Sanad's impact walk goes *downstream* only (what rests on a requirement: children, code, tests). A brand-new requirement has nothing downstream yet, so its impact is empty by design. It has no idea that a *new* requirement can break an *old* one. And the walk never follows `satisfy` (the model), `mitigates` (hazards), dictionary values or plain documents. Like a map that shows the roads leaving your house, but not the house next door your new wall will block.

## What Sanad missed — the hand list (30)

| # | Area | Artifact | What changes | Applied? |
|---|---|---|---|---|
| R-1 | Requirement | MRTM-STK-002 "no alert shorter than confirmation" | **Direct conflict.** Reworded to "no **audible** alert" (owner to confirm, Q-19) | yes |
| R-2 | Requirement | MRTM-SYS-002 (7 samples / 60 s), MRTM-PRF-002 (buzzer ≤ 65 s) | Conflict; resolved by ADR-0030 (two tiers): SYS-002 → 31 samples spanning 60 s; PRF-002 unchanged | yes |
| R-3 | Requirement | MRTM-SYS-001 sampling period 10 s | 10 s cannot see an excursion inside 5 s → 2 s (ADR-0031); verification 2 s ± 0.1 s | yes |
| R-4 | Requirement | MRTM-SYS-018 end after 7 samples | → 31 samples spanning 60 s | yes |
| R-5 | Requirement | MRTM-SYS-012 probe fault 30 s | Checked: seconds unchanged (now 15 samples) | no change |
| R-6 | Requirement | MRTM-ENV-001 battery 4 h | Probe current ×5; still met (48.5 h) | checked |
| R-7 | Requirement | MRTM-SYS-015 log capacity | Early tier not logged (A-38), or door openings fill the log | decision |
| A-1 | Architecture | 5 satisfy targets: `limitEvaluator`, `alarmMgr`, `excursionDetector`, `alarmManager`, `excursionService` | New `satisfy 'MRTM-SYS-024'` links (satisfy is not in the walk) | yes |
| A-2 | Architecture | `MrtmSwStates::AlarmStates` | New state `early`, 4 transitions, 2 signals (states are not trace nodes, F-73) | yes |
| A-3 | Architecture | `MrtmSeqExcursion` (excursion → alarm) | New message `early` + successions; timing note | yes |
| A-4 | Architecture | `MrtmSoftware` sensor task `periodMs = 10000` | → 2000 (attribute values are not in the graph, F-57) | yes |
| A-5 | Architecture | `MrtmSwDetail` contracts of `sensor_sampler`, `limit_evaluator` | Regenerated from `tools/p8data.py` | yes |
| H-1 | Hardware | `MrtmHardware::Ds18b20` (750 ms conversion, 0.11 mA) | 2 s period still fits; average 0.56 mA; **EE-REVIEW** self-heating at 37 % duty | yes (model) |
| H-2 | Hardware | 09-hardware/power-budget.md | Regenerated: normal 42.93 mA, battery 48.5 h | yes |
| H-3 | Hardware | 1-Wire bus load ×5 | **EE-REVIEW** | listed |
| S-1 | Software | `mrtm_config.h` `MRTM_SAMPLE_PERIOD_MS`, `MRTM_CONFIRM_SAMPLES` | 2000; 31 derived from a 60 s window; budget constants (claims on `#define`s are dropped, F-89) | yes |
| S-2 | Software | `limit_evaluator.c` compile-time checks | Build refuses a period that breaks the 5 s budget | yes |
| S-3 | Software | `alarm_mgr.h` enums | `ALARM_EARLY` (appended, so saved NVS values keep their meaning), 2 signals | yes |
| S-4 | Software | `firmware/main/app_main.c` sensor task, `host/sim.c` | Use the constant; no code edit, but re-verified (no marker, invisible to Sanad) | checked |
| S-5 | Software | display pre-alarm text | Not built: only the red light shows the early tier | **follow-up** |
| S-6 | Software | `10-src/firmware/components/*/contracts.md` (2) | Regenerated | yes |
| T-1 | Test | 2 new limit-evaluator tests + 1 budget test + 2 alarm-manager tests (`@verifies MRTM-SYS-024`) | Sanad cannot propose them (no AI key, F-95) | yes |
| T-2 | Test | 3 test names that said "seventh" / "six" | Renamed → 3 cases left the matrix, 3 new names came in (94 → 99 cases with T-1) | yes |
| T-3 | Test | SP-01 procedure text + SP-01-H runner | New check SP-01.11 (early alarm ≤ 5 s, 10 bench trials); label of SP-01.8 | yes |
| T-4 | Test | SP-02 procedure text "+10 s sample period" | → +2 s (SP-02 is not reached: it verifies other requirements) | yes |
| D-1 | Document | 02-conops/scenarios.md SC-2 "door opened" | Early alarm lights, then clears by itself | yes |
| D-2 | Document | Risk file: HAZ-002 alarm fatigue, R-17 | New cause + control; residual unchanged (hazards are not in the walk) | yes |
| D-3 | Document | ADR-0014 alarm timing budget | Dated note appended; ADR-0030, ADR-0031 new | yes |
| D-4 | Document | Data dictionary "Sampling Period" `Range: 10..10` | → 2..2 (dictionary values are not reached) | yes |
| D-5 | Document | 02-conops/user-stories.md US-2 ("door openings filtered") | Still true for the buzzer; no edit | checked |

Count: 30 items; 25 applied, 4 checked with no edit, 1 follow-up (S-5).

## The ruling — ADR-0030 (owner to confirm, Q-19)
**Two tiers.** Low priority: red light 1 Hz, no sound, ≤ 5 s after the first out-of-band sample, clears by itself. High priority: unchanged — buzzer after the 60 s confirmation. Neither old rule "wins" outright: the new one gets its fast signal, the old one keeps the loud alarm honest.

## Proof after the change (one gate run)
| Check | Result |
|---|---|
| Host build `-Werror`, clean | 80 unit + 5 integration Unity tests, 0 failures (build `c32f4f1`) |
| SP-01-H host dry run | 11/11 CHECK PASS — early alarm 1.1 s after the change, buzzer 61.1 s |
| Line coverage | 581/598 (97 %) |
| OMG Pilot (with profile) | 0 issues over 40 files |
| Code trace | 53 requirements reached by code (was 52), 0 unexplained |
| Test coverage | required 70 · covered 54 · not covered 16 (the same 16 bench-blocked) |
| `erew --gate warning` | FAILED on purpose: 17 warnings = the 16 `missing-result` of Phase 10b + 1 `undeclared-id-prefix` ("CR-001" in the rationale, as F-54) |

Note: MRTM-SYS-024 counts as "covered" because the host dry run passed, although its real pass criterion is 10 timed bench trials (F-102, A-36).

## Four blocks
- **Assumptions:** A-37, A-38. **Risks:** R-17. **Open questions:** Q-19.
- **Trace links:** MRTM-SYS-024 → STK-001; conflicts STK-002, SYS-002, PRF-002; changed SYS-001, SYS-018; HAZ-002; ADR-0014, ADR-0030, ADR-0031; 13-assessment/sanad-runs/phase-11/.
