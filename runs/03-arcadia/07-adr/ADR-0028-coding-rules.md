# ADR-0028 — Coding rules: a small MISRA-C:2012-like subset, checked by the compiler

- **Status:** Accepted (DRAFT — needs Masood's review) · **Date:** 2026-09-27 · **Phase:** 9 · **MANUAL** ADR shape (F-09) · IEC 62304 §5.1.4 (standards, methods and tools), §5.5.3 (acceptance criteria: coding standard)

## Context
Class C code needs written coding rules. Full MISRA needs a paid checker we do not have. Like house rules for a kitchen: few, clear, and checked every time.

## Decision — the rules, and what checks each
| # | Rule (MISRA-C:2012 nearest) | Checked by |
|---|---|---|
| R1 | No dynamic memory after start-up; no `malloc`/`new` in product code (Dir 4.12, R21.3) | grep in review; C++ `new` absent (display objects are static) |
| R2 | Every switch on an enum lists every value (R16.4 spirit) | `-Wswitch-enum` |
| R3 | No implicit narrowing or sign change in arithmetic (R10.3, R10.4) | `-Wconversion` (sign-conversion off: too noisy for bit masks) |
| R4 | No shadowed names (R5.3) | `-Wshadow` |
| R5 | Every function that can fail returns `mrtm_err_t`; the caller checks it or casts to `(void)` on purpose (Dir 4.7, R17.7) | review; unit tests per error code |
| R6 | No variable read before it is set (R9.1) | `gcc -fanalyzer` |
| R7 | Prototypes for every external function (R8.4) | `-Wmissing-prototypes`, `-Wstrict-prototypes` |
| R8 | Constants only from `mrtm_config.h` or the generated code headers — no magic numbers for requirement values (Dir 4.9 spirit) | review |
| R9 | C++ only in display_mgr: no exceptions, no RTTI, no heap, no C-style casts (ADR-0022) | `-fno-exceptions -fno-rtti -Wold-style-cast` |
| R10 | Shared ISR/task data only inside `MRTM_ENTER/EXIT` (Dir 5.1 spirit) | review (`REVIEW` marks) |
| R11 | Every function that satisfies a requirement carries `/* @implements <ids> */` on the line(s) directly above it, ids only on that line | Sanad's code index (F-84) |

All builds use `-Werror`: a warning stops the build.

## Consequences
- This is NOT MISRA compliance; a qualified MISRA checker is a later purchase decision (owner).
- Deviations are allowed only with a `REVIEW` comment naming the rule.
