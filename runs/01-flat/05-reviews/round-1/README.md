# Review round 1 — requirements baseline REQ-BL-1

- **Standard:** IEC 62304 §5.2.6 (verify software requirements) · ISO 14971 §7.1 (risk controls are requirements) · IEC 60601-1-8 as the alarm frame
- **Where the facts are:** Sanad's evidence records `05-reviews/records/github-1/*.yaml` (approval + merge, each in its own commit, written by Sanad). This page is the plain-words index.
- **Platform half:** no remote, so the conversation lives in `round.json` / `snapshot-close.json` (Sanad's own `ReviewSnapshot` shape) — see ADR-0007, FINDINGS F-26/F-27.

Think of it like a teacher's red pen on homework: each thread is one red mark, the action is what the student changed, and the record is the signed mark sheet.

## Counts
| What | Number |
|---|---|
| Requirements reviewed | 46 (all of REQ-BL-1) |
| Review threads (findings) | 17 — major 6 · minor 9 · note 2 |
| Kinds | ambiguous 3 · missing 8 · conflicting 2 · verification 4 |
| Closed `fixed` | 14 (6 reworded, 8 new requirements) |
| Closed `noted` | 3 (all minor/note — Sanad refuses `noted` on a major) |
| Open after close | 0 (record: major 0 · minor 0 · note 0) |
| Requirements after the round | 54 |

## Threads, actions, states
| Thread | On | Severity | Kind | Action | State | Change |
|---|---|---|---|---|---|---|
| T01 | MRTM-SYS-002 | minor | ambiguous | Reword SYS-002 to a sample count: 7 consecutive samples (= 60 s at the 10 s sampling period). | fixed | reworded |
| T02 | MRTM-STK-001 | major | missing | Add a system requirement that states the allowed band, parent STK-001. | fixed | added MRTM-SYS-017 |
| T03 | MRTM-SAF-003 | major | conflicting | Reword SAF-003 to the probe's own operating range, -30 °C to 50 °C. | fixed | reworded |
| T04 | MRTM-SYS-004 | minor | ambiguous | Reword SYS-004 to flash at 2 Hz. | fixed | reworded |
| T05 | MRTM-SYS-012 | minor | ambiguous | Reword SYS-012: no sample with a correct CRC for 30 s. | fixed | reworded |
| T06 | MRTM-SAF-001 | minor | verification | Rewrite the Verification section: background below 45 dB(A), class 2 meter, on axis at 1 m. | fixed | reworded |
| T07 | MRTM-PRF-003 | note | verification | Verification section: run it with 10000 events in the log. | fixed | reworded |
| T08 | MRTM-SYS-007 | major | missing | Add a system requirement: excursion end confirmed after 7 consecutive samples inside the band; fix the glossary entry. | fixed | added MRTM-SYS-018 |
| T09 | MRTM-SYS-006 | major | missing | Add a system requirement: the buzzer sounds again 15 min after acknowledge while the excursion continues (15 min is an assumption, A-13). | fixed | added MRTM-SYS-019 |
| T10 | MRTM-SYS-008 | major | missing | Add a system requirement on clock drift; Q-10 (how it is set) stays open. | fixed | added MRTM-SYS-020 |
| T11 | MRTM-SYS-016 | major | missing | Add a safety requirement: buzzer when the battery voltage falls below 3.4 V (EE-REVIEW, A-15). | fixed | added MRTM-SAF-008 |
| T12 | MRTM-SYS-014 | minor | missing | Add a system requirement: each log record carries a CRC-32 and a bad record is detected. | fixed | added MRTM-SYS-021 |
| T13 | MRTM-SYS-015 | minor | missing | Add a system requirement: log-nearly-full warning at 9000 events. The overwrite-or-stop choice goes to the data-retention ADR (Phase 4). | fixed | added MRTM-SYS-022 |
| T14 | MRTM-SAF-004 | minor | verification | Noted — the watchdog period is a software-architecture decision (IEC 62304 §5.3); it gets its own ADR and requirement in Phase 7. | noted | — |
| T15 | MRTM-ENV-001 | note | conflicting | Noted — the kind stays; renaming the id after baseline REQ-BL-1 would break the trace for no gain. | noted | — |
| T16 | MRTM-PRF-001 | minor | verification | Noted — the band applies to the reading; the residual risk of ±0.5 °C goes into the ISO 14971 hazard analysis in Phase 5 as a named hazard cause. | noted | — |
| T17 | MRTM-SAF-005 | minor | missing | Add a system requirement: log the power restore event with its UTC time stamp. | fixed | added MRTM-SYS-023 |

## What Sanad said about each file at close
14 files `accepted`, 40 files `changed-since-accepted`. The 40 are NOT changed: they were accepted at `a00038b` but last touched at `1f9fd90`, and Sanad compares the accept commit with the file's last commit by prefix instead of asking "is the last commit an ancestor of the accept commit?" (FINDINGS F-28). `git diff 1f9fd90 a00038b -- <file>` is empty for all 40.

## Four blocks
- **Assumptions:** A-13, A-14, A-15 (new numbers the review needed).
- **Risks:** R-06 (suppressions re-checked: one added, none removed), R-07.
- **Open questions:** Q-10 (how the clock is set), Q-11 (real review platform).
- **Trace links:** ADR-0007; `13-assessment/sanad-runs/phase-3/` (review-open.txt, review-close.txt, gate, traceability-audit since REQ-BL-1, review-records); 03-requirements/accepted-findings.md.
