# ADR-0003 — Software Safety Class C for the whole product

- **Status:** Accepted (owner order 2026-09-27 00:05) · **Phase:** 0 · **MANUAL** ADR shape (F-09)
- **Standards:** IEC 62304 clause 4.3 (class C), ISO 14971, IEC 60601-1 frame.

## Decision
Every requirement carries `safetyClass` (default C, inherited down the uplinks). Sanad maps C to rigour 4, its strictest band.
All Class-C artifacts must exist with trace links; reviewer independence is not required.

## Consequences
Rigour 4 turns on Sanad's strictest band rules for every requirement. Artifacts with no Sanad home are MANUAL findings.

## Four blocks
- **Assumptions:** A-07. **Risks:** R-04. **Open questions:** Q-04. **Trace links:** software-development-plan.md.
