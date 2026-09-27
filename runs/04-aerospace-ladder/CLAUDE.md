# Run 4 — aerospace ladder (ARP4754A + DO-178C shape)

**In one line:** the fridge monitor built on a fixed ladder — product → system → items → software design — with a DAL per item.

- Read `DOGFOOD-STATE.md` (RESUME HERE) first; the framework is `.ejadah/rew/framework.yaml`.
- Rules of the repository root `CLAUDE.md` apply: this folder only, commits as Masood, memory cap on every Node/Chrome command, no /tmp (scratch `~/.cache/tmp-run4`), nothing deleted.
- Rebuild order (run folder): `python3 tools/aero-build.py spec …` + `tools/author-requirements.cjs` (Sanad create path) → `aero-build.py fix-system` → `aero-build.py markers` → `tools/aero_model.py` → `tools/aero-views.sh write|render` → `tools/aero-layouts.py` → `tools/aero-index.py` → `tools/level-check.py` → code index → `tools/sanad-checks.sh 13-assessment/sanad-runs/<name>`.
- Never write the words "implements", "satisfies" or "traces to" followed by an id-like token in a tool comment (F-4-010).
- Keep `06-design/common/` sorting before the node folders (F-4-006).
