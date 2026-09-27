# 05 — Overall residual risk (ISO 14971:2019 cl. 8)

> **Standard:** ISO 14971:2019 cl. 8. **MANUAL** (F-48). DRAFT — needs Masood's review. **Owner decision:** the acceptance sentence below is his to make; it is drafted, not made.

**In one line:** look at all the leftover dangers together — do they add up to something too big?

| Question | Answer (draft) |
|---|---|
| Any hazard unacceptable after control? | No (04-residual-risk.md) |
| Residuals in "review" | 7 hazards; 4 named residuals R1–R4 |
| Do residuals combine? | R3 and R4 both touch the backup alarm: a failed backup alarm AND a firmware stop AND a power loss would leave no alarm. Needs three faults at once. |
| Controls not yet verified | SAF-001, SAF-013, SAF-020 (bench) — **overall residual risk cannot be accepted until these pass** |
| Standards alignment open | IEC 60601-1-8 deltas D-1…D-5 (13-assessment/iec60601-1-8-check.md) |

**Draft conclusion:** acceptable **subject to** (1) the three bench verifications, (2) Masood's answer to Q-20 on the alarm signals, (3) his benefit-risk decision in 04. Until then: **not accepted**.

## Four blocks
- **Assumptions:** A-20, A-39. **Risks:** R-11, R-18. **Open questions:** Q-19, Q-20.
- **Trace links:** 04-residual-risk.md, 06-risk-management-report.md.
