# verification/evidence

> **Standard:** IEC 62304 §5.5.5, §5.6.7, §5.7.5 (records), §8 (configuration identification), Class C. **Status:** DRAFT — needs Masood's review.
> Everything here was produced by `tools/run-10b.sh 2026-09-27` at build **6d35bae** (git sha of the code; `10-src` clean). Tester: DOGFOOD-5 (agent, no independence).

| Folder | What | Read by |
|---|---|---|
| build/ | host build log (gcc 15.2, `-Werror`) and the `make test` summary | people |
| unit/, integration/ | raw Unity output per runner (`file:line:test:PASS`) | `tools/results-junit.py` → ../results/ (Sanad reads those) |
| system/ | SP-01-H trace: every CHECK line with its timing | results + ../records/system-verification-record.md |
| coverage/ | LCOV of the host unit + integration runs (`tools/gcov2lcov.py`) | **Sanad** `producers.coverage` |
