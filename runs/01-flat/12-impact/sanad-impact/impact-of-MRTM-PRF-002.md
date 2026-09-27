# Impact of a Requirement

**Export schema:** `sanad/impact-of/1`

**Subject:** `MRTM-PRF-002` — End-to-end alert time

**Walk depth:** 1 hop(s) — every dependent edge, followed until nothing new was reached; no limit is applied.

4 artifact(s) shown rest on it.

| Artifact | Kind | Hops | Via | Basis |
|---|---|---:|---|---|
| `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` | `codeSymbol` | 1 | `MRTM-PRF-002` → `10-src/firmware/components/alarm_mgr/src/alarm_mgr.c#alarm_mgr_step` | declared |
| `SP-01` | `verificationCase` | 1 | `MRTM-PRF-002` → `SP-01` | declared |
| `SP-01-H` | `verificationCase` | 1 | `MRTM-PRF-002` → `SP-01-H` | declared |
| `test_int_chains.test_int01_excursion_chain` | `verificationCase` | 1 | `MRTM-PRF-002` → `test_int_chains.test_int01_excursion_chain` | declared |
