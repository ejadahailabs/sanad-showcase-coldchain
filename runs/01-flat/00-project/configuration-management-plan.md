# Configuration Management Plan — MRTM (skeleton)

> **Standard:** IEC 62304 clause 8 (software configuration management). **MANUAL** — no Sanad plan template (FINDINGS F-08). DRAFT.

Configuration management means: always know exactly which version of every file you are talking about.

| 62304 clause | How this repo does it |
|---|---|
| 8.1.1 identify items | Every file is in this git repo; every requirement id comes from Sanad's allocator rule (ADR-0001) |
| 8.1.2 SOUP | soup-list.md |
| 8.1.3 system configuration documentation | `.ejadah/rew/config.yaml` + `sanad-product.yaml`, committed |
| 8.2 change control | one commit per phase; later changes through Sanad review rounds (Phase 3) |
| 8.3 status accounting | Sanad baselines in `.ejadah/rew/baselines.json`, copies in 04-baselines/ (Phase 2b) |

Commits are made as `Masood <mohd.masood26@gmail.com>`. Local repo only; no remote until Masood adds one.
