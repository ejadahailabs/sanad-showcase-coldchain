# ADR-0005 — How requirements were authored, and how accepted findings are kept

- **Status:** Proposed (owner to confirm) · **Date:** 2026-09-27 · **Phase:** 2 · **MANUAL** ADR shape (F-09)
- **Standard:** IEC 62304 cl. 5.2 (software requirements analysis), cl. 5.2.6 (verify requirements).

## Decision
1. Each requirement is created by Sanad's `createRequirement` from its kind's template, with the id Sanad's allocator rule gives (`planSerials`), claimed atomically (`tools/author-requirements.cjs`). The text is then typed in, as an author would in the form.
2. One claim per requirement, "shall", a number and unit where the claim is measurable.
3. A finding we accept is written into Sanad's own `suppressions:` block with its reason (one expires 2026-10-31 to force a Phase-4 re-check). Nothing is silenced without a reason; Sanad carries every suppressed finding in the run's `suppressed` list.
4. Every requirement carries `safetyClass: "C"` explicitly (A-12).

## Consequences
The gate at `warning` is green; 24 info findings stay visible. The register is 03-requirements/accepted-findings.md.

## Four blocks
- **Assumptions:** A-11, A-12. **Risks:** R-06. **Open questions:** Q-04, Q-10. **Trace links:** ADR-0001, config.yaml `suppressions:`.
