# Project Charter — Medical Refrigerator Temperature Monitor (MRTM)

> **MANUAL** — Sanad has no charter template (FINDINGS F-03). DRAFT — needs Masood's review. Synthetic project.

## Why this project exists
Vaccines and many medicines spoil if they get too warm or too cold.
A spoiled vaccine looks the same as a good one.
So a clinic can give a useless dose without knowing it.
This product watches the fridge and speaks up the moment the temperature goes wrong.
Think of it as a smoke alarm, but for fridge temperature.

## Goal
Build a small device that:
1. measures the temperature inside a medical fridge;
2. alerts the user when the temperature leaves the allowed band;
3. shows a warning on its own screen;
4. records every event and keeps a history of every excursion.

## Second goal (the real one for this run)
Build the product **inside Sanad**, and write down what Sanad did, what a person did by hand, and what only a click could do.

## Success looks like
| # | Measure | Target |
|---|---|---|
| S1 | Every requirement has a Sanad-allocated id and passes Sanad's analysis or has an accepted finding with a reason | 100 % |
| S2 | Every requirement reaches design, code and a test on Sanad's traceability view | 100 % by Phase 10 |
| S3 | Every manual step is a row in FINDINGS.md | 100 % |

## Out of bounds
Real patient data. Real device serial numbers. Real vendor data. Regulatory submission.

## People
| Role | Who |
|---|---|
| Owner / sponsor | Masood |
| Engineer (clicks in VS Code) | Masood |
| Workers (headless) | Claude agents |

## Four blocks
- **Assumptions:** A-01, A-05 (ASSUMPTIONS.md).
- **Risks:** R-01, R-02 (RISKS.md).
- **Open questions:** Q-01, Q-02 (OPEN-QUESTIONS.md).
- **Trace links:** scope.md, stakeholders.md, ADR-0001.
