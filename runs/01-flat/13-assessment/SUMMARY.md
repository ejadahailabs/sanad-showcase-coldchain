# Dogfood run 1 — one-page summary for Masood

> DRAFT — needs Masood's review · 2026-09-27 · a medical fridge monitor (IEC 62304 Class C) built from nothing to REQ-BL-2 inside Sanad, headless, by 6 workers.
> In one line: **Sanad is strong where things are requirements, model, code or tests. It is weak where they are plans, hazards, records or changes.**

## The run in five numbers
| 70 | 40 | 99 | 96 | 118 |
|---|---|---|---|---|
| requirements, all with Sanad allocator ids | SysML files, OMG Pilot clean | test cases: 86 pass, 14 blocked (no board) | artifacts, 24 made by Sanad's own code | findings for the board |

## The ten scores (0–5)
| Requirements | Architecture | Safety | Hardware | Software | Verification | Traceability | Impact | Config mgmt | Knowledge |
|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|
| **4** | **3** | **1** | **1** | **3** | **2** | **3** | **1** | **2** | **2** |

Average 2.2. Reasons in 13-assessment/judgement.md.

## Top 10 findings by value
| # | Finding | Why it matters | Fix class |
|---|---|---|---|
| 1 | **F-106 / F-107** Impact shows 0 for a new requirement and never reaches the model, hazards or documents | The 5-second change clashed with 3 requirements; Sanad said nothing. 30 affected items were found by hand | Verification + Traceability engine |
| 2 | **F-48** A hazard is only an id; hazard coverage can never drop below 100 % | A confidently-wrong safety number on a Class-C product | Traceability engine |
| 3 | **F-93 / F-103** No C/C++ test lane; Unity output needs converters | Most embedded medical code is C | Verification engine + integration |
| 4 | **F-10 / F-94 / F-105 / F-117** Problem reports, verification records and release notes read Sanad's own ledger, not the customer's | 4 Class-C records have no home | Workflow |
| 5 | **F-64** Pilot and reader are not given the org's software profile | 179 false errors on a clean model | Workflow |
| 6 | **F-41 / F-73** Actions, states, transitions are not trace nodes | Behaviour design cannot be traced | Knowledge graph |
| 7 | **F-25 / F-30 / F-112** A baseline does not freeze text | 13 reworded requirements invisible in drift | Traceability engine |
| 8 | **F-102** "Blocked" and "missing result" disagree; a host run can cover a bench requirement | Coverage looks better than it is | Verification engine |
| 9 | **F-47 / F-71 / F-86 / F-100** Setup never offers the roles a Class-C repo needs | 21 findings are "already built, just not switched on" | Configuration |
| 10 | **F-57 / F-110** Pin, power and timing numbers are parsed but never checked | Budgets done by hand scripts | Verification engine |

## Class-C checklist (26 artifacts)
| | yes | partly | no |
|---|---:|---:|---:|
| Has a Sanad home | 8 | 5 | 13 |
| Relation links present | 14 | 8 | 4 |

## Phase 11 in one breath
The new requirement **MRTM-SYS-024** ("alarm within 5 s") clashed with the 60 s confirmation. **Ruling (ADR-0030): two tiers.** A silent red light at 1 Hz comes within 5 s. The buzzer still waits for the 60 s confirmation. Sampling went from 10 s to 2 s (ADR-0031). All tests pass. The new baseline is **REQ-BL-2**.

## Your click list
**29 clicks · 143 minutes** (133 without the optional AI step C-26). Order and details: CLICK-LIST.md.

## Questions only you can answer
| # | Question | Default we used |
|---|---|---|
| Q-19 | Is a silent early light enough for "alarm within 5 s"? May STK-002 say "no **audible** alert"? | yes (ADR-0030) |
| Q-17 | Add a backup-alarm sense line to the board (DEF-006)? | open — EE decision |
| Q-18 | Who runs the 14 bench procedures, on which board? | open — blocks 16 requirements |
| A-18 | Keep the hardware backup alarm? | yes |
| A-35 / A-36 | Verification stage values; host pass never closes a bench case | Sanad's recommended values |

---
**What I did** · I ran Phase 11 (the change, Sanad's impact check, drift, REQ-BL-2) and Phase 12 (this assessment, 96 artifacts, 118 findings). I tagged the run `dogfood-run-1`.
**What I have taken on next** · Nothing. The coordinator files the 118 findings as board headroom.
**What is left with you** · The click list, and Q-17, Q-18, Q-19.

**Your one next step (about 2½ hours, one sitting):** open CLICK-LIST.md and do the clicks in its recommended order. Skip C-26 unless you want AI test proposals.
