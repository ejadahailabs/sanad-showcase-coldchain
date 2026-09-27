# ADR-0004 — One design root, `06-design`

- **Status:** Proposed (owner to confirm) · **Date:** 2026-09-27 · **Phase:** 1 · **MANUAL** ADR shape (F-09)

## Context
The brief asked for four design roots: `06-design/{system,hardware,software,views}`.
Sanad's view writer (`newViewFile`, `src/sysmlViews.ts`) always puts a new view in `<first root>/views/`.
With `06-design/system` first, views would land in `06-design/system/views/`, not `06-design/views/`.

## Decision
Declare one root, `06-design`. Every `.sysml` file under system/, hardware/, software/ and views/ is still read, once.
Views land in `06-design/views/` as STRUCTURE.md wants.

## Consequences
Same files read as the four-root plan. The views folder is not configurable in Sanad (FINDINGS F-14).

## Four blocks
- **Assumptions:** none new. **Risks:** none. **Open questions:** none. **Trace links:** ADR-0002, config.yaml `design.roots`.
