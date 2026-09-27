# 04 — Residual risk per hazard (ISO 14971:2019 cl. 7.3–7.6)

> **Standard:** ISO 14971:2019 cl. 7.3 (residual risk evaluation), 7.4 (benefit-risk), 7.5 (risks arising from risk control), 7.6 (completeness). **MANUAL** (F-48). DRAFT — needs Masood's review. The benefit-risk sentences are clinical/legal judgements: drafted, **not decided** — owner action.

**In one line:** after the fixes, how much danger is left for each hazard, and is it OK?

| Hazard | P after | R after | Region | Residuals that remain (from 03b) | Verified? |
|---|---|---|---|---|---|
| HAZ-001 | 1 | 3 | review | — | SAF-020 bench-blocked |
| HAZ-002 | 2 | 4 | review | — (CR-001 kept the score, Q-19) | yes (unit + host) |
| HAZ-003 | 1 | 3 | review | R3 backup alarm fails between power-ups | SAF-013 bench-blocked |
| HAZ-004 | 1 | 3 | review | R1 slow drift between calibrations | yes |
| HAZ-005 | 1 | 3 | review | R4 hold-up capacitor ages | SAF-013 bench-blocked |
| HAZ-006 | 1 | 3 | review | R2 buzzer loses loudness | SAF-001 bench-blocked |
| HAZ-007 | 1 | 3 | review | — | yes |
| HAZ-008 | 1 | 2 | acceptable | — | yes |

## Cl. 7.4 benefit-risk (DRAFT — owner decision)
Seven hazards sit in "review" after control. Draft reasoning: a monitor with these residuals finds far more excursions than the paper chart it replaces; each remaining residual needs a second fault or a long drift to matter. **Masood to confirm or reject.**

## Cl. 7.5 risks arising from the controls
- Early silent tier (CR-001) adds flashes on every door opening → HAZ-002 cause, kept silent and self-clearing (ADR-0030).
- Backup alarm test at power-up sounds briefly → accepted nuisance at power-up only.
- 60601-1-8 alignment deltas (13-assessment/iec60601-1-8-check.md) may change signals → re-run this file when Q-20 is answered.

## Cl. 7.6 completeness
8 hazards, each with ≥ 1 control; 28 links equal in Markdown and SysML (`tools/hazard-link-check.py`); every control now reaches leaf requirements through the derive chain (`tools/level-check.py` 0 violations).

## Four blocks
- **Assumptions:** A-20. **Risks:** R-11. **Open questions:** Q-19, Q-20.
- **Trace links:** 03-risk-control.md, 03b-risk-control-single-fault-assessment.md, 05-overall-residual-risk.md.
