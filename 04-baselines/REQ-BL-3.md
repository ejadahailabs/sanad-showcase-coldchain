# Baseline REQ-BL-3 — the product broken down into nodes (MODEL-LEVELS)

> IEC 62304 cl. 8.1.1–8.1.3 / 8.3. Taken with Sanad's baseline code, headless (`tools/baseline-headless.cjs`, the logic behind "Sanad: Set Baseline"). DRAFT — needs Masood's review.

A baseline is a photo of the project at one moment. REQ-BL-3 is the photo after the model was rebuilt as a decomposition story.

| Field | Value |
|---|---|
| Baseline id (label) | **REQ-BL-3** |
| Commit it names | `cab2514` ("MODEL-LEVELS step 5 (run) …"), git tag `REQ-BL-3` (by hand, F-25) |
| Stored in | `.ejadah/rew/baselines.json` beside REQ-BL-1 and REQ-BL-2 |
| What Sanad stores | the commit + 420 finding identities (3 errors, 194 warnings, 223 info — MODEL-LEVELS gate, snapshot `6abc54b2`) |
| Requirement set | 132 = 70 unchanged (byte-identical) + 62 node requirements (SEN 4 · ALM 8 · DSP 3 · LOG 4 · PWR 3 · SUP 4 · BKA 2 · 34 on leaves); 130 class C, 2 class B (usb-item) |
| Model | 28 nodes (19 leaves), 116 SysML files, OMG Pilot 0 issues; 23 views; `tools/level-check.py` 0 violations |
| Known open | 3 gate errors (2 rigour: class B under C, F-133 — owner decision; 1 false trace claim in a tool docstring, F-135); 46 bench-blocked; MRTM-ALM-006 unverified (Q-20) |
