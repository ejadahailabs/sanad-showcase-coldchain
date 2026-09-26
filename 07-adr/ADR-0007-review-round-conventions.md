# ADR-0007 — How a requirements review round is run and recorded

- **Status:** Accepted · **Date:** 2026-09-27 · **Phase:** 3 · **MANUAL** ADR shape (F-09) · IEC 62304 §5.2.6 (verify software requirements), §9 (problem resolution)

## Context
Sanad's Review capability reads a pull request on GitHub or GitLab. This repo has no remote yet. Think of it like a classroom where the teacher marks the homework in the school's online system — and the school has no internet today.

## Decision
1. `review:` is declared in `.ejadah/rew/config.yaml` through Sanad's own config writer (`applyConfigEdits`): platform github, project `local/dogfood-fridge` (placeholder until Masood adds a remote), checklists `05-reviews/checklists`, records `05-reviews/records`.
2. One thread per finding. The first line carries Sanad's severity marker `**major**`, `**minor**` or `**note**`, then the kind in brackets: `[ambiguous]`, `[missing]`, `[conflicting]`, `[verification]`.
3. A **major** is always fixed (Sanad refuses `noted` on a major — SAN-REV-019). A minor or note may be closed `Noted — <reason>`.
4. Fixes are answered `Fixed in <commit> — <action>`, the shape Sanad reads (`fixTrail`).
5. The reviewer accepts each file with `sanad-review-accept: <path> @ <commit>` and approves; Sanad then writes its approval and merge evidence records, each in its own commit.
6. While there is no remote, the platform half (the comment text) lives in `05-reviews/round-N/round.json` in Sanad's `ReviewSnapshot` shape. When a remote exists, the next round is a real pull request and the replica stops.

## Consequences
- The review evidence is Sanad's own record file, read back by `erew --report review-records`.
- The comment text is in the repo only because there is no platform (FINDINGS F-27).
- No independence: the same worker drafted and reviewed (owner order 2026-09-27 00:05, item 3).

## Four blocks
- **Assumptions:** A-13 (15 min re-alarm), A-14 (clock drift 2 s/day), A-15 (3.4 V low-battery threshold).
- **Risks:** R-07 (a placeholder review project name is read as a real one).
- **Open questions:** Q-11 (which platform and project the real remote will be).
- **Trace links:** 05-reviews/round-1/, 05-reviews/records/, 05-reviews/checklists/requirements-review.md, tools/review-headless.cjs.
