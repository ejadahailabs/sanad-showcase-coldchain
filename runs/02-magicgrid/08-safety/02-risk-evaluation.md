# 02 — Risk evaluation (ISO 14971:2019 cl. 6)

> **Standard:** ISO 14971:2019 cl. 6 (risk evaluation), against the acceptability criteria of cl. 4.2 (ADR-0012). **MANUAL** — Sanad has no risk-evaluation record (F-48). DRAFT — needs Masood's review. Added by MODEL-LEVELS (was folded into 01-risk-analysis.md).

**In one line:** for each danger, look up its score in the agreed table and decide "must we reduce it?". Like checking a temperature against the fever line before deciding on medicine.

| Hazard | S | P (before control) | R | Region (ADR-0012) | Decision (cl. 6) |
|---|---|---|---|---|---|
| HAZ-001 Excursion not detected | 3 | 2 | 6 | unacceptable | reduce — controls in 03 |
| HAZ-002 Alarm fatigue | 2 | 3 | 6 | unacceptable | reduce |
| HAZ-003 Silent failure | 3 | 2 | 6 | unacceptable | reduce |
| HAZ-004 Sensor drift | 3 | 2 | 6 | unacceptable | reduce |
| HAZ-005 Power loss | 3 | 3 | 9 | unacceptable | reduce |
| HAZ-006 Annunciator failure | 3 | 2 | 6 | unacceptable | reduce |
| HAZ-007 Wrong limits | 3 | 2 | 6 | unacceptable | reduce |
| HAZ-008 History loss | 2 | 2 | 4 | review | reduce as far as practicable (cl. 7.1 applies to "review" too) |

**Result:** all 8 hazards need risk control. None is accepted without it.

## Four blocks
- **Assumptions:** A-09, A-20 (the scales and probabilities are synthetic). **Risks:** R-04. **Open questions:** none.
- **Trace links:** 01-risk-analysis.md (scores come from there), ADR-0012 (criteria), 03-risk-control.md.
