# Baseline REQ-BL-1 — the requirement set before design

> IEC 62304 cl. 8.1.1 / 8.3 (configuration identification, status accounting). Taken with Sanad's baseline code, headless (`tools/baseline-headless.cjs`, the logic behind "Sanad: Set Baseline").

A baseline is a photo of the project at one moment. Later we compare against it to see what moved.

| Field | Value |
|---|---|
| Baseline id (label) | **REQ-BL-1** |
| Commit it names | `1f9fd908dcd34a2894f43de40728858d50240b88` ("phase 2: …"), git tag `REQ-BL-1` |
| Working tree when taken | clean |
| Taken at | 2026-09-26T17:46:34Z (system clock) |
| Stored in | `.ejadah/rew/baselines.json` (Sanad's file) |
| What Sanad stores | the commit + 24 finding identities (0 errors, 0 warnings, 24 info) |
| Requirement set | 46 requirements: STK 8 · SYS 16 · SAF 7 · PRF 4 · ENV 4 · MNT 3 · IFC 4, all safetyClass C |

## Proof it works
- `erew --report traceability-audit --baseline REQ-BL-1` → section "Trace changes since baseline REQ-BL-1": no trace changes (13-assessment/sanad-runs/phase-2b/).
- `erew --diff-config REQ-BL-1` resolves the label to the commit and diffs the configuration.

Phase 11 measures drift against this baseline.
