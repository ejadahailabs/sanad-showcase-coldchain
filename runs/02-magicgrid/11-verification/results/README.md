# verification/results

> **Standard:** IEC 62304 §5.5.5, §5.6.7, §5.7.5, Class C. **Status:** DRAFT — needs Masood's review.

Result rows in the format Sanad's results producer reads: JUnit XML, one file per runner, declared in `.ejadah/rew/config.yaml` `producers.results` (written with Sanad's own config writer): `unit/` = verification-ll, `integration/` = verification-component, `system/` = systems-verification-results. Each suite carries tester, date, build (git sha) and evidence as properties; a case is pass, fail (`<failure>`) or blocked (`<skipped>` with the reason). Made by `tools/results-junit.py` from what ran (tools/run-10b.sh) — never typed.

Build 6d35bae, 2026-09-27, tester DOGFOOD-5 (agent, no independence): unit 75 pass · integration 5 pass · system 1 pass (SP-01-H host dry run), 14 blocked (bench / IFU).
