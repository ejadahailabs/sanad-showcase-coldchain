# Dogfood runs repository — rules for workers

**In one line:** one fridge monitor, one folder per framework; you work inside ONE run folder and never disturb the others — like separate lanes in a pool.

| Rule | Why |
|---|---|
| **Each run is self-contained.** Work only inside `runs/<nn>-<name>/`. Its own `CLAUDE.md`, `PROMPT.md` and `DOGFOOD-STATE.md` apply there. | Runs must not leak into each other. |
| **`shared/` is read-only truth.** Copy from it; never edit it. A change to a need is Masood's decision. | Every run must start from the same needs. |
| **New runs copy run 2's `tools/` and `10-src/`**, then change `.ejadah/rew/framework.yaml` and what follows from it. | Same code and tests; only the decomposition differs. |
| **Findings from run 3 on are numbered `F-<run>-nnn`** (e.g. `F-03-001`). Runs 1 and 2 keep their `F-nnn`. | No clashes between runs. |
| **Never move a running worker's folder.** Check for live workers first. Moves go in one commit. | A move under a worker breaks its paths. |
| **Nothing is deleted.** Archive, never `rm`. Run 1 stays as it was tagged. | The "before" must stay honest. |
| **Update `COMPARE.md` (one row) and `LESSONS.md` (four headings)** when a run ends. | The comparison is the point. |

## Working rules (from the runs)
- Every Node command: `systemd-run --user --scope -q -p MemoryMax=6G -p MemorySwapMax=1G <cmd>`.
- Tools run from inside the run folder: `bash tools/sanad-checks.sh 13-assessment/sanad-runs/<name>`, `python3 tools/level-check.py`.
- After changing code comments or `@implements` markers, refresh the code index (`tools/code-index-headless.cjs`) before the gate (F-139).
- Baseline reads across the 2026-09-27 move do not work yet (F-140): `--diff-config REQ-BL-1` fails from `runs/02-magicgrid/`.
- Commits: `git -c user.name="Ejadah AI Labs" -c user.email=ejadahailabs@gmail.com commit …`. Local repository; no remote unless Masood adds one.
- Synthetic data only. No VS Code, no `git stash`, no `pkill` by pattern, no `/tmp` (use `~/.cache/tmp-<task>`).
- Sanad wording: a build in progress. Never say built, complete or qualified.
- Replies to Masood: table first, plain words, one next step.
