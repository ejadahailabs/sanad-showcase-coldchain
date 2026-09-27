# FHA — functional hazard assessment of the fridge monitor

> **Shape:** ARP4761 FHA, used as a SHAPE on a medical product (no certification claim, A-4-01). **Input:** run 2's hazard table, copied unchanged to `fha-input/01-risk-analysis.md`. **Output:** the five safety objectives `MRTM-SOB-001…005` (written through Sanad's create path). **MANUAL** — Sanad has no FHA table (F-4-008). DRAFT — needs Masood's review.

**In one line:** for each thing the monitor does, ask "how could this go wrong, and how bad would that be?" — like asking, for each job in a kitchen, what happens if the cook gets it wrong.

## The severity words (aerospace scale, used as an analogue — A-4-04)

| Aerospace word | DAL | What it means for this fridge monitor |
|---|---|---|
| Catastrophic | A | A patient may get a vaccine that lost its potency, **and nobody is told**. |
| Hazardous | B | The same can happen, but only near the band edge, or with a visible clue. |
| Major | C | Staff lose trust in the alarm, or an audit cannot prove what happened. |
| Minor | D | A copy of the history is lost or garbled; the original is safe. |
| No safety effect | E | Nothing. |

## Failure conditions

| Id | Function | Failure condition | Effect on the clinic | Severity | Hazards (run 2) | Safety objective |
|---|---|---|---|---|---|---|
| FC-1 | MRTM-FUN-002 warn, MRTM-FUN-005 power cut | Loss of the excursion warning, not annunciated | warm vaccines used, nobody knows | Catastrophic (A) | HAZ-001, HAZ-003, HAZ-005, HAZ-006 | **MRTM-SOB-001** no silent loss of warning |
| FC-2 | MRTM-FUN-002 warn | Misleading warning: judged against the wrong band | same as FC-1 | Catastrophic (A) | HAZ-007 | **MRTM-SOB-002** no silent wrong band |
| FC-3 | MRTM-FUN-001 monitor | Misleading temperature: probe drift inside the plausible range | an excursion near the edge is missed | Hazardous (B) | HAZ-004 | **MRTM-SOB-003** drift bounded and shown |
| FC-4 | MRTM-FUN-002 warn | Nuisance warning (door openings) | staff learn to ignore the alarm | Major (C) | HAZ-002 | **MRTM-SOB-004** nuisance limited |
| FC-5 | MRTM-FUN-004 history | Loss of history, not annunciated | audit cannot show the exposure | Major (C) | HAZ-008 | **MRTM-SOB-005** no silent loss of history |
| FC-6 | MRTM-FUN-004 history | Exported copy garbled | a report must be re-exported | Minor (D) | — | none (export-sw DAL D, PSSA §2) |
| FC-7 | MRTM-FUN-003 acknowledge | Silence that never ends (stuck button, no re-sound) | same as FC-1 | Catastrophic (A) | HAZ-006 | covered by MRTM-SOB-001 |

## What changed from run 2
- Run 2 scored each hazard 3 × 3 (ISO 14971). Here each **function** gets a failure condition and a **letter** (DAL). The letter then flows down to every requirement (`safetyClass` field, Sanad's native `do178c` scale).
- The five functions `MRTM-FUN-001…005` are new: run 2 went straight from needs to system requirements.
