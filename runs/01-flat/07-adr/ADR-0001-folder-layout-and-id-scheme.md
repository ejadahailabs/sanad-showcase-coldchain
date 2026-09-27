# ADR-0001 — Folder layout and requirement id scheme

- **Status:** Proposed (owner to confirm) · **Date:** 2026-09-26 · **Phase:** 0
- **MANUAL** — Sanad offers no ADR template; MADR shape (FINDINGS F-09).

## Context
The repo needs one place for each kind of work, and every requirement needs an id that never changes.
Sanad reads requirement folders from each template's `rew.folder` and ids from the file name.

## Decision
1. Folders are numbered 00–13 in the order the product is built (STRUCTURE.md). Setup did not move any.
2. Requirements: one Markdown file per requirement in `03-requirements/<kind>/`, seven kinds.
3. Ids: `ids: provided` with project prefix `MRTM-` and a per-kind tag: STK, SYS, SAF, PRF, ENV, MNT, IFC. Example: `MRTM-SYS-001`. Fits Sanad's grammar `^[A-Z]{2,5}(-[A-Z]{2,6})?-\d+$`.
4. Serials: taken by Sanad's own allocator rule (`planSerials` / `reserveId` in `src/ids.ts`): next number after the highest used, zero-padded to 3, never reused. Run headless by `tools/allocate-ids.cjs` (Phase 2).
5. README.md files are ignored by Sanad (`ignore: ["README.md"]`).

## Consequences
- An id is never typed by hand; the allocator claims the file atomically.
- `ids: provided` means Sanad's New Requirement asks for the id; the headless path supplies the allocator's answer.

## Four blocks
- **Assumptions:** A-02, A-03. **Risks:** R-02. **Open questions:** none.
- **Trace links:** `.ejadah/rew/config.yaml`, STRUCTURE.md.
