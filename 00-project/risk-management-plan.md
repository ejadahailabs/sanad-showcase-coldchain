# Risk Management Plan — MRTM (skeleton)

> **Standard:** ISO 14971:2019 clause 4.4 (risk management plan); IEC 62304 clause 7; IEC 60601-1 clause 4.2 as the device frame.
> **MANUAL** — Class-C artifact "risk management plan / file" has no Sanad home (FINDINGS F-06). DRAFT — needs Masood's review.

Risk management means: list what could hurt someone, decide how bad it is, add a fix, and prove the fix works.

## Scope
The monitor, its firmware and its alert chain. The fridge itself is outside scope (it is the thing watched).

## Chain every risk must complete (the risk file, built in Phase 5)
```
Hazard (08-safety) → hazardous situation → harm → risk control measure
   → safety requirement (03-requirements/safety, MRTM-SAF-*) → verification case (11-verification)
```
Sanad carries the last two links (`uplinks`, `verifies`). The first four are MANUAL until Sanad has a safety capability.

## Acceptability rule (SYNTHETIC, owner-to-confirm — A-09)
| Severity \ Probability | Improbable | Remote | Occasional | Probable |
|---|---|---|---|---|
| Critical (spoiled vaccine given) | review | control | control | control |
| Serious | accept | review | control | control |
| Minor | accept | accept | review | control |

## Activities
| ISO 14971 clause | Activity | Phase |
|---|---|---|
| 5 | Risk analysis (hazards, FMEA, fault tree) | 5 |
| 6 | Risk evaluation against the table above | 5 |
| 7 | Risk control → safety requirements | 2, 5 |
| 8 | Overall residual risk | 12 |
| 10 | Production and post-production information | out of scope for this run |

## Four blocks
- **Assumptions:** A-09. **Risks:** R-04. **Open questions:** Q-05.
- **Trace links:** 08-safety/, 03-requirements/safety/, software-development-plan.md.
