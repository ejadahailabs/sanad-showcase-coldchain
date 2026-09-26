# Dogfood run — Medical Refrigerator Temperature Monitor (built with Sanad)

You are Claude running in the VS Code terminal of this folder. Masood is at the keyboard. This folder is a Sanad dogfood project: the goal is to build the product **inside Sanad** and record, phase by phase, what Sanad did, what was manual, and what only a click could do.

## Read first, every session
1. `PROMPT.md` — the phases and the rules. It is the plan; do not re-plan.
2. `DOGFOOD-STATE.md` — where the run is. Resume from its RESUME HERE line; never restart a finished phase.
3. `FINDINGS.md` — the gap list so far.

## The tool
- Sanad extension: installed in THIS VS Code window from `sanad-sysml-r4int3-d388e43e.vsix` (sha256 starts b91589d3b69f80fc). Sanad main = `745ef793`.
- Sanad source checkout for the CLI and the headless checks: `/home/masood/Masood/Office_Projects/Sanad` (read-only for this run; never commit there). CLI entry: see its `package.json` scripts and `src/cli.ts`; run Node with the memory cap below.
- Repo conventions Sanad expects: `.ejadah/rew/config.yaml` (Setup writes it); folders are numbered 00–13 in development order, see STRUCTURE.md, requirements as Markdown with front matter, SysML v2 files under the design roots named in `config.yaml`, tests and results in the layout Setup chooses.

## How each phase runs
1. Claude prepares every file the phase needs and runs every Sanad CLI check it can.
2. Steps that exist only as a click (Setup wizard, review round, canvas editing, test-drafting proposals, verification-plan window): Claude says exactly what to press, in one line, and waits. Masood presses. Claude then reads the files the extension wrote and verifies.
3. The phase ends with the four lines from PROMPT.md rule 8: `SANAD DID` · `PROVED BY` · `MANUAL` · `UI-ONLY`. Copy them into DOGFOOD-STATE.md and every MANUAL / UI-ONLY item into FINDINGS.md with the phase number.
4. Commit at the end of every phase: `git add -A && git commit -m "phase N: <title>"`. Local repo only until Masood adds a remote.

## Rules
- Never write a document Sanad could have produced. Sanad is the workbench; you fill only the gaps.
- Org configures, tool recommends: every rule pack, template, threshold is Masood's choice in Phase 0; ask, do not assume. Record answers in the Assumptions Register.
- Ids only from Sanad's allocator. No hand-typed requirement ids.
- SysML v2 in Sanad for architecture pictures; Mermaid only inside documents.
- Synthetic values only: no real patient, device or vendor data.
- Every Node command runs as `systemd-run --user --scope -q -p MemoryMax=6G -p MemorySwapMax=1G <cmd>` (a runaway test process killed this machine three times on 2026-09-26). If a job dies with rc 137, split it, never raise the cap.
- Never launch a second VS Code window, never run git stash, never pkill by pattern, never touch `~/Masood/Office_Projects/Sanad/.git` or any credential file.
- Reply style for Masood: table or list first, ELI5, one next step at the end, and the three closing lines (what I did · what I take on next · what is left with you).
- Findings are filed as GitHub issues by the coordinator session after the run, not by you.

## Files you own
- `PROMPT.md` (read-only copy of `../DOGFOOD-FRIDGE-PROMPT.md`), `DOGFOOD-STATE.md`, `FINDINGS.md`, `ASSUMPTIONS.md`, `RISKS.md`, `OPEN-QUESTIONS.md` and everything Sanad creates here.
