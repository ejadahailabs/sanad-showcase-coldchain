# Run 03 — Arcadia (Medical Refrigerator Temperature Monitor)

**In one line:** the same monitor as runs 1 and 2, broken down the Arcadia way — five fixed layers, each once: clinic → device → logical parts → real parts → what we ship.

| Rule | Detail |
|---|---|
| Read first | `06-design/DECOMPOSITION.md`, then `DOGFOOD-STATE.md` (RESUME HERE). |
| Framework | `.ejadah/rew/framework.yaml` — Arcadia, `shape: step`, `repeat: false`, depth 5. Checked by `python3 tools/level-check.py` (Sanad does not read it yet, F-3-001). |
| Build the model | `python3 tools/arcadia.py satisfy|transitions|index`; views `tools/arcadia-views.sh write|render [view]`; layouts `python3 tools/arcadia-layouts.py [view]`. |
| Requirements | Only through Sanad's allocator: `tools/arcadia-author.cjs` from `tools/arcadia-spec.json` (log: `03-requirements/allocation-log.json`). |
| Checks | Pilot `tools/pilot-headless.cjs … --with-profile` (SYSML_PILOT_HOME=~/.cache/sysml-v2-pilot); gate `bash tools/sanad-checks.sh 13-assessment/sanad-runs/<name>` (waits while 2 `npm run check` run); tests `tools/run-10b.sh <date>`. |
| File names matter | Pilot resolves qualified names only backwards in file order (F-3-004): `*Trace.sysml` must sort after a layer's model files. |
| Kit from run 2 | tools/, 10-src/, 11-verification/, .ejadah/rew/, 01, 07, 08, 09, library model — reused; only what the framework demands changed. |
| House rules | Root `../../CLAUDE.md`: memory cap on every Node/Chrome command, no /tmp (`~/.cache/tmp-run3`), no VS Code, synthetic data, nothing deleted, never touch other runs. |
