# verification/cases

> **Standard:** IEC 62304 §5.5.2, §5.6.3, §5.7.1, Class C. **Status:** DRAFT — needs Masood's review.

`verification-cases.csv` is the test-case list Sanad reads (`producers.verification` in .ejadah/rew/config.yaml, columns declared, never guessed). **Do not edit it by hand:** run `python3 tools/verif-matrix.py`. It is rebuilt from the `/* @verifies <ids> */` markers above each Unity test and from the index table of `../procedures/system-procedures.md`, because Sanad reads `@verifies` only in pytest files (F-93). Case ids of tests are `<file stem>.<function>` — the JUnit `classname.name` Sanad joins results on.

Written by hand, not by Sanad's test drafting: no AI provider is configured (NO KEY, F-95, A-34).
