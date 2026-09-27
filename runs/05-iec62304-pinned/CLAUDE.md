# Run 05 — IEC 62304 pinned stack (worker rules)

**In one line:** this folder builds the fridge monitor with the four floors IEC 62304 names; work only here. Root `../../CLAUDE.md` rules apply.

- Read first: `PROMPT.md`, `DOGFOOD-STATE.md` (RESUME HERE), `FINDINGS.md`, `06-design/DECOMPOSITION.md`.
- Rebuild order (run folder): `python3 tools/pinned-build.py templates|spec|markers` → `node tools/author-requirements.cjs` → `python3 tools/pinned_model.py` → `tools/pinned-views.sh write|render` → `python3 tools/pinned-layouts.py` → `python3 tools/pinned-index.py` → `python3 tools/level-check.py` → code index → `bash tools/sanad-checks.sh 13-assessment/sanad-runs/<name>`.
- Every Node/Chrome command under `systemd-run --user --scope -q -p MemoryMax=6G -p MemorySwapMax=1G`. No /tmp (use `~/.cache/tmp-run5`). No VS Code, no git stash, no pkill by pattern.
- Findings `F-5-nnn`. Sanad wording: a build in progress.
