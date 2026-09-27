# ADR-0006 — Freeze the requirements as REQ-BL-1 before design

- **Status:** Accepted · **Date:** 2026-09-27 · **Phase:** 2b · **MANUAL** ADR shape (F-09) · IEC 62304 cl. 8

## Decision
Take Sanad baseline `REQ-BL-1` at the clean phase-2 commit, and tag that commit with the same name so git and Sanad agree.

## Consequences
Every later trace change is reported against REQ-BL-1 by `--report traceability-audit --baseline REQ-BL-1`.

## Four blocks
- **Assumptions:** none. **Risks:** R-06. **Open questions:** none. **Trace links:** 04-baselines/REQ-BL-1.md, CM plan.
