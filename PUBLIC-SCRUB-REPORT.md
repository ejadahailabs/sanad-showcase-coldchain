# Public-flip scrub report — dogfood-fridge

**In one line:** this repository was checked for anything unsafe to make public (private paths, secrets, proprietary Sanad code, leftover build junk) and for status wording that oversells Sanad; the unsafe things are fixed, the honesty (scores, findings) is untouched, and the decision to actually flip the repo public is still Masood's.

**Date:** 2026-09-27. **Scope:** all git-tracked files. `10-src/` is untracked (someone else's work in progress) and was left alone. `FINDINGS-ALL.md` and `COMPARE.md` were not touched (another worker owns them).

## Checks

| # | Check | Result | What was found / changed |
|---|---|---|---|
| 1 | Secrets, API keys, tokens, private keys | PASS | None found (checked `secret`, `password`, `api[_-]key`, AWS/GitHub token shapes, PEM headers). |
| 2 | Emails | PASS | Only Masood's own address as git commit author (left alone, per instructions) and two placeholder `git@example.com` lines already in `.ejadah/rew/config.yaml` templates (harmless examples). |
| 3 | Absolute home paths (`/home/masood/...`) | FAIL → FIXED | 1,335 lines across 261 tracked files (mostly `13-assessment/sanad-runs/*/evidence.json`, `gate.txt`, `*.stderr` logs, plus `baselines.json` and two `CLAUDE.md` files). Mechanically replaced with placeholders: `/home/masood/Masood/Office_Projects/dogfood-fridge` → `<REPO_ROOT>`, `/home/masood/.cache/tmp-dogfood1` → `<TMP_BUILD_DIR>`, `/home/masood/Masood/Office_Projects/Sanad` → `<SANAD_SOURCE_CHECKOUT>`. No other machine names or hostnames found. |
| 4 | Sanad's proprietary picture stylesheet (`tools/picture.css`) | FAIL → FIXED | Full copy of Sanad's design CSS was committed in `runs/{02-magicgrid,03-arcadia,04-aerospace-ladder,05-iec62304-pinned}/tools/picture.css`. Each replaced with a 3-line stub that says "copy Sanad's picture.css here"; `tools/render-view.sh` in each of those four runs now checks for the stub and exits with that same message instead of silently using it. Tested: stub → exit 1 with the message; a real stylesheet → passes through normally. Run 01 never had a `tools/` folder (predates the shared tooling), so nothing to fix there. |
| 5 | Sanad source embedded in a helper script (vs. just calling Sanad's packaged build) | PASS | Checked every `tools/*.cjs` for size and content. All are 20–80 lines and only `require()` the packaged extension's own `dist/*.js` (e.g. `design/canvas.js`, `analysis/sysmlProject.js`) — they call Sanad, they don't copy it. Only `picture.css` (check 4) was an actual copy. |
| 6 | `.vsix`, `dist/`, `node_modules`, `.cache` | PASS | None tracked. `10-src/build/` exists but is untracked (in `.gitignore` territory) and not part of the flip. |
| 7 | Large binaries (> 2 MB) | PASS | None tracked. |
| 8 | Build cruft that shouldn't be in version control | FAIL → FIXED | 6 compiled Python `__pycache__/*.pyc` files (156 KB total) were tracked despite `.gitignore` already listing `__pycache__/`. Removed from git tracking (`git rm --cached`); the ignore rule now actually keeps new ones out. |
| 9 | Status wording ("built", "complete", "qualified", "available", "production-ready" about **Sanad itself**) | FAIL → FIXED (2 lines) | Read every tracked root `.md`, every run's top-level `.md`, and every `13-assessment/SUMMARY.md`. Almost every hit was these words used about the *fridge monitor* ("built the monitor"), a *SysML term* ("qualified name"), a *run's* status ("run complete"), or a *stakeholder's* availability — none of those are claims about Sanad, so left as-is. Two real hits, both in `runs/{01-flat,02-magicgrid}/13-assessment/SUMMARY.md` line 29: `"21 findings are 'already built, just not switched on'"` → reworded to `"21 findings are existing Sanad features that just need turning on"`. Scores, counts and findings elsewhere are untouched — they're the honesty, not the overselling. |

## Files changed for public safety (checks 3, 4, 8)

- 261 files: path placeholder substitution (see check 3; full list is every file `git grep -l "/home/masood"` matched before the fix — mostly under `runs/*/13-assessment/sanad-runs/`).
- 4 files replaced with stubs: `runs/{02-magicgrid,03-arcadia,04-aerospace-ladder,05-iec62304-pinned}/tools/picture.css`.
- 4 files edited (one guard line added): the matching `tools/render-view.sh` in those same four runs.
- 6 files removed from tracking: the `__pycache__/*.pyc` files listed in check 8.

## Wording edits (check 9)

2 lines changed — see check 9 above. No other file needed a wording change.

## What I did not do — owner decisions

1. **Licence** — not picked. Two options drafted in `LICENSING-OPTIONS.md` (open CC BY 4.0 + Apache 2.0, or all-rights-reserved with a viewing licence); no `LICENSE` file added.
2. **Findings policy** — `README.md` states the current policy in one line ("findings are published with a status column") and notes Masood may change it.
3. **The flip itself** — no remote was added, nothing was pushed anywhere, nothing was made public. That switch is Masood's, when he's ready.
4. **`10-src/`** — untracked, not scrubbed (out of scope: not a tracked file, looked like someone else's in-progress work).

## README

`README.md` was rewritten for a stranger (1,403 words): what the product is, why five runs, the framework-file idea, the three work-buckets (Sanad did / manual / click-only), where findings live, how to read a run in ~10 minutes, how to render a picture (and why it needs your own Sanad build), the honesty paragraph, and the Ejadah AI Labs / Sanad positioning line ("the Engineering Intelligence Platform that generates, validates and governs the digital thread" — Masood's ruling, 2026-09-08).
