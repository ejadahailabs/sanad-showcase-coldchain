# Failure-mode assessment and residual risk

> **Standard:** ISO 14971:2019 cl. 7.3 (residual risk evaluation), 7.4 (benefit-risk), 7.6 (completeness of risk control), 8 (overall residual risk — first pass; final in Phase 12); IEC 60601-1 cl. 4.7 (single-fault safe); IEC 62304 cl. 4.3 (software safety classification stays C, ADR-0003).
> **MANUAL** — Sanad has no residual-risk or benefit-risk record (F-48). DRAFT — needs Masood's review; the benefit-risk sentences are an owner decision (legal/clinical), drafted here, not decided.

**In one line:** after all the fixes, what risk is left, is every single fault caught, and is what is left worth the benefit?

## 1. Single-fault check (IEC 60601-1 cl. 4.7)
| Single fault | Caught by | Time to alarm | Safe? |
|---|---|---|---|
| Firmware stops | backup alarm (SAF-009) | ≤ 10 s | yes |
| Alarm task stuck | watchdog pulses stop (SAF-010) → backup | ≤ 12 s | yes |
| Probe open / noisy | probe fault (SYS-012, SAF-002) | ≤ 35 s | yes |
| Probe out of physical range | SAF-003 → SAF-002 | ≤ 5 s | yes |
| Probe drift in range | calibration due (SAF-012) | up to 365 days | **no — residual R1** |
| Buzzer open | SAF-014 → SAF-015 | ≤ 10 s | yes |
| Buzzer weak | none in service | — | **no — residual R2** |
| Button stuck | SAF-019 | 60 s | yes |
| Band corrupt | SAF-017 | at power-up | yes |
| Mains lost | SYS-016, battery | 0 s (no gap) | yes |
| Battery flat in outage | SAF-008 warning, then SAF-013 power-fail alarm | ≤ 5 s | yes |
| Backup alarm dead | SAF-023 | at next power-up | latent until then — **residual R3** |
| Hold-up capacitor degraded | derating only | — | **no — residual R4** |

## 2. Residual risks (all in the "review" region of ADR-0012, R = 3)
| # | Residual | Why no further control | Benefit-risk reason (DRAFT, owner decision) |
|---|---|---|---|
| R1 | Slow in-range probe drift between calibrations | A second probe doubles cost and 1-Wire load; calibration yearly is the clinic norm (A-04 synthetic) | Monitoring with yearly calibration is far safer than no monitoring |
| R2 | Buzzer loses loudness in service | No microphone on board; production test SAF-001 + red light + screen remain | Two other signals remain |
| R3 | Backup alarm fails between power-ups | A periodic in-service test would sound the buzzer during use (nuisance, HAZ-002) | Needs a second, simultaneous fault (firmware stop) to matter |
| R4 | Hold-up capacitor ages | Design rule (2× derating, EE-REVIEW) instead of a check | Needs mains loss **and** flat battery **and** aged capacitor |

## 3. Completeness (cl. 7.6)
- 8 hazards, each with ≥ 1 control requirement carrying a `hazard:` link: Sanad Safety engine `safety.hazardCoverage` = 100 %.
- 23 safety requirements (MRTM-SAF-001…023), all `safetyClass: C`; 15 added in Phase 5.
- 27 FMEA rows, each ends in a named requirement or a residual above.
- `tools/hazard-link-check.py`: Markdown links = SysML links (28 = 28).
- Not yet: every control verified (Phase 10 — each has a `## Verification` seed). ISO 14971 cl. 7.2 "verification of effectiveness" stays open until then.

## 4. Overall residual risk (cl. 8, first pass)
No hazard is unacceptable after control. Four residuals sit in "review". Overall residual risk is judged **acceptable subject to Masood's review** and Phase 10 verification.

## Four blocks
- **Assumptions:** A-04, A-18, A-20. **Risks:** R-08, R-11, R-12. **Open questions:** none new; owner confirms the benefit-risk sentences.
- **Trace links:** hazard-analysis.md, fmea.md, fault-tree.md, ADR-0012, ADR-0013, ADR-0014.
