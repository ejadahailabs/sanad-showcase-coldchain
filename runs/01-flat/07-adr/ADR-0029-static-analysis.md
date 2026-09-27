# ADR-0029 — Static analysis: gcc `-fanalyzer` now, cppcheck when installed

- **Status:** Accepted (DRAFT — needs Masood's review) · **Date:** 2026-09-27 · **Phase:** 9 · **MANUAL** ADR shape (F-09) · IEC 62304 §5.5.3 (acceptance criteria), §5.5.5 (verification of units)

## Context
The plan asked for cppcheck. It is not installed on this box and installing packages is outside this run's rules. gcc 15.2 is installed and has a built-in path-sensitive analyzer. Like using the spell-checker you have while the better one is on order.

## Decision
Run `gcc -fanalyzer` with the strict warnings of ADR-0028 over every product C/C++ file (target HAL excluded — needs ESP-IDF headers). Output kept in 13-assessment/sanad-runs/phase-9/static-analysis-gcc-fanalyzer.txt. First pass found 3 issues (1 possible uninitialised read in the alarm queue, 2 incomplete enum switches); all fixed; second pass: 0.

## Consequences
- cppcheck (and later a MISRA checker) is a CLICK-LIST/owner item: install, run, compare.
- Sanad has no static-analysis lane of its own to read these results (F-91).
