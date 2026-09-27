# Unity — SOUP record (IEC 62304 §5.3.3, §8.1.2)

| Field | Value |
|---|---|
| Name | Unity (ThrowTheSwitch.org) |
| Version | v2.6.1 |
| Source | https://github.com/ThrowTheSwitch/Unity, tag v2.6.1, commit cbcd08fa7de711053a3deec6339ee89cad5d2697 |
| Files vendored | unity.c, unity.h, unity_internals.h, LICENSE.txt (MIT), unmodified |
| sha256 | unity.c b90e735a54cf3b3765ab6caa955d11a1488ee73d9c6152cdc98576c2d17cb871 · unity.h 9db174d3c2c6424fd35c0980c5941d124c5ebb0f48e8172f997a2aa9554b64ea · unity_internals.h fcd8b3f6b412ac0ab599547eb8a30b6d7f3f0af77aab31f7a1822a2a8fc9a2b2 |
| Fetched | 2026-09-27 by DOGFOOD-5 (git clone --depth 1) |
| Use | Test harness only (host build + ESP-IDF unit-test app). Never linked into the product image. |
| Why Unity | ESP-IDF ships Unity as its own unit-test framework (ADR-0023); the same test files run on host and target. GoogleTest is not installed on this box. |
| Known anomalies checked | None relevant to a test-only harness (no release-notes item affects the assertion or reporting logic used here). |
| Register | SOUP-7 in 00-project/soup-list.md |
