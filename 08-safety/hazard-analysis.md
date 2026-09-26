# Hazard analysis — MRTM

> **Standard:** ISO 14971:2019 cl. 5.2 (intended use), 5.3 (safety characteristics), 5.4 (hazards and hazardous situations), 5.5 (risk estimation), 6 (risk evaluation), 7.1–7.3 (risk control and residual risk). IEC 62304 cl. 7.1 (software contribution to hazards).
> **MANUAL** — Sanad has no hazard register (F-48). The hazard ↔ control links live in Sanad (the `hazard:` field of every safety requirement, read by Sanad's Safety engine) and in the SysML model (`06-design/system/MrtmSafety.sysml`). DRAFT — needs Masood's review.

**In one line:** a hazard is "what could go wrong"; the hazardous situation is "someone is exposed to it"; the harm is "someone gets hurt". Each row below walks that chain, scores it with the 3 × 3 matrix of ADR-0012, and names the fix.

## Intended use (cl. 5.2)
Watch the air in a clinic fridge that holds vaccines and medicines (2 °C to 8 °C). Alarm local staff when it leaves the band. Keep a history for audit. Used by nurses, pharmacists and technicians. Not a controller: it never changes the fridge.

## Hazard table
S = severity, P = probability, R = S × P (ADR-0012). "Before" is without the listed controls; "after" is with them.

| Hazard | Sequence of events → hazardous situation | Harm | S | P before | R before | Risk-control measures (Sanad requirements) | P after | R after |
|---|---|---|---|---|---|---|---|---|
| **HAZ-001** Excursion not detected | Probe damaged, loose, badly placed, or bus errors → monitor reads in-band while air is warm → stock exposed, no alarm | Patient gets vaccine with lost potency | 3 | 2 | 6 ✗ | MRTM-SAF-002, SAF-003, SAF-020 · also SYS-012, PRF-001, IFC-001 | 1 | 3 review |
| **HAZ-002** Alarm fatigue | Short door-openings or confusing sounds alarm often → staff learn to silence → real excursion ignored | Delayed action; exposed stock used or lost | 2 | 3 | 6 ✗ | MRTM-SAF-011 · also SYS-002 (60 s confirmation), SYS-018, SYS-019 (re-sound) | 2 | 4 review |
| **HAZ-003** Silent failure | Firmware hangs or processor dies → no sound, screen frozen on a good value → excursion unalarmed | Patient gets vaccine with lost potency | 3 | 2 | 6 ✗ | MRTM-SAF-004, SAF-006, SAF-009, SAF-010, SAF-013, SAF-023 | 1 | 3 review |
| **HAZ-004** Sensor drift | Probe reads 1–2 °C off inside its plausible range → band edge moves → excursion near the edge missed | Patient gets vaccine with lost potency | 3 | 2 | 6 ✗ | MRTM-SAF-003, SAF-012 · also PRF-001, MNT-001 | 1 | 3 review |
| **HAZ-005** Power loss | Mains fails, battery runs flat → monitor stops while fridge warms → unmonitored excursion | Patient gets vaccine with lost potency | 3 | 3 | 9 ✗ | MRTM-SAF-005, SAF-006, SAF-008, SAF-013 · also SYS-016, ENV-001, SYS-023 | 1 | 3 review |
| **HAZ-006** Annunciator failure | Buzzer, red light or screen broken or not heard → detected excursion not noticed | Patient gets vaccine with lost potency | 3 | 2 | 6 ✗ | MRTM-SAF-001, SAF-007, SAF-014, SAF-015, SAF-019, SAF-021 · also SYS-004, SYS-005 | 1 | 3 review |
| **HAZ-007** Wrong limits | Stored band wrong or corrupted → monitor watches the wrong range → real excursion judged in-band | Patient gets vaccine with lost potency | 3 | 2 | 6 ✗ | MRTM-SAF-016, SAF-017 · also SYS-017 (band fixed at 2–8 °C, not user-set) | 1 | 3 review |
| **HAZ-008** History loss | Flash wear, corruption, bus hang or clock stop → excursion record missing or wrong → audit cannot show exposure | Exposed stock used, or good stock discarded | 2 | 2 | 4 review | MRTM-SAF-005, SAF-018, SAF-021, SAF-022 · also SYS-014, SYS-021, SYS-022 | 1 | 2 ✓ |

✗ = unacceptable before control; ✓ = acceptable. No hazard stays unacceptable after control.

## Reading the "also" column
Only safety requirements can carry a `hazard:` field today (the field was added to the safety template, F-47). System and performance requirements that also act as controls (SYS-002, SYS-012, PRF-001 …) cannot declare it, so Sanad's Safety engine counts HAZ-002 as resting on one requirement (`single-point-failure`, info) although four requirements defend it (F-50).

## What Sanad proves here
- `safety.hazardCoverage` = 100 % over HAZ-001…HAZ-008, `safety.rigourViolations` = 0 (13-assessment/sanad-runs/phase-5/).
- It cannot prove a hazard exists that no requirement names: a hazard with no control never appears, because the only hazard list Sanad has is the set of ids the requirements name (F-48).

## Four blocks
- **Assumptions:** A-04, A-18, A-19, A-20, A-21. **Risks:** R-04, R-05, R-08, R-09, R-10, R-11. **Open questions:** Q-05, Q-12, Q-13 (answered by assumption).
- **Trace links:** 03-requirements/safety/ (23 controls), 06-design/system/MrtmSafety.sysml, fmea.md, fault-tree.md, failure-mode-assessment.md, ADR-0012, ADR-0013, ADR-0014. Verification cases: Phase 10 (each control's `## Verification` section is the seed).
