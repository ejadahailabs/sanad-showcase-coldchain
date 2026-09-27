# ADR-0012 — A 3 × 3 risk matrix: how bad × how likely

- **Status:** Accepted (DRAFT — needs Masood's review) · **Date:** 2026-09-27 · **Phase:** 5 · **MANUAL** ADR shape (F-09) · ISO 14971:2019 cl. 4.2 (criteria for risk acceptability), 5.5 (risk estimation), 6 (risk evaluation)
- **Model:** `MrtmSafety::Hazard` (attributes `severity`, `probability`, `residualProbability`); picture `06-design/views/rendered/mrtmSafetyBlocks.svg`
- **Supersedes:** the 4-column synthetic table in `00-project/risk-management-plan.md` (A-09). Answers Q-05 with a coordinator assumption (A-20).

## Context
ISO 14971 asks every maker to write down, before looking at hazards, how bad and how likely is "too much". Think of a weather forecast: "light rain, likely" is fine; "storm, likely" is not.

## Decision
Two scales of three steps. Risk = severity × probability.

| Severity (harm) | Meaning for this product |
|---|---|
| 1 Minor | Stock is lost or re-checked; no patient harm |
| 2 Serious | Vaccination delayed or repeated; staff time lost |
| 3 Critical | A patient receives vaccine with lost potency without anyone knowing |

| Probability (per monitor per year, SYNTHETIC) | Meaning |
|---|---|
| 1 Remote | Not expected in the product's life |
| 2 Occasional | May happen once in the product's life |
| 3 Probable | Expected more than once |

| Severity \ Probability | 1 Remote | 2 Occasional | 3 Probable |
|---|---|---|---|
| **3 Critical** | 3 review | 6 **unacceptable** | 9 **unacceptable** |
| **2 Serious** | 2 acceptable | 4 review | 6 **unacceptable** |
| **1 Minor** | 1 acceptable | 2 acceptable | 3 review |

- **Acceptable (1–2):** no further control needed.
- **Review (3–4):** reduce as far as possible; keep only with a written benefit-risk reason (ISO 14971 cl. 7.4).
- **Unacceptable (6–9):** a risk control is mandatory before release.

## Consequences
- Every hazard in `08-safety/01-risk-analysis.md` carries both numbers before and after control; the SysML concerns carry the same numbers as attributes.
- Software failure is scored at probability 3 before control (IEC 62304 cl. 4.3 note: assume software fails), then reduced only by a control outside that software item.
- Sanad has no place for the matrix or the numbers (F-48); `tools/hazard-link-check.py` keeps only the links consistent.

## Four blocks
- **Assumptions:** A-20 (scales synthetic). **Risks:** R-04. **Open questions:** Q-05 (answered by assumption).
- **Trace links:** 08-safety/01-risk-analysis.md, 00-project/risk-management-plan.md, 06-design/system/MrtmSafety.sysml.
