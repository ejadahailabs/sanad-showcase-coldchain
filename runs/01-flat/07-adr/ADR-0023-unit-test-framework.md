# ADR-0023 — Unit tests: Unity (the framework ESP-IDF ships), run on the host and on the target

- **Status:** Accepted (DRAFT — needs Masood's review) · **Date:** 2026-09-27 · **Phase:** 8 · **MANUAL** ADR shape (F-09) · IEC 62304 §5.5.2 (unit verification process), §5.5.3 (acceptance criteria), §8.1.2 (SOUP) · PROMPT owner order 6
- **Model:** each unit contract's "Unit tests to write in Phase 9" section (10-src/firmware/components/*/contracts.md); SOUP-7
- **Requirements:** every requirement a unit satisfies (the `@verifies` markers go in the test files)

## Context
Class C needs every unit tested against its detailed design. The owner asked for a C/C++ framework that ESP-IDF supports. Like choosing the ruler everybody in the workshop already owns.

## Options
| Option | For | Against |
|---|---|---|
| **Unity (ThrowTheSwitch)** | Ships inside ESP-IDF as the `unity` component; plain C; tiny; the same tests run on the host (gcc) and on the ESP32-S3 | Fewer features (no built-in mocks — CMock exists if needed) |
| GoogleTest | Rich matchers, fixtures | C++ only; not ESP-IDF's own; heavier on target |

## Decision
**Unity.** Tests in C, one `test/test_<unit>.c` per unit. The pure-logic units (limit_evaluator, history_ring's index maths, alarm_mgr's state table, wdt_kicker, config_mgr CRC) are compiled and run on the host with gcc for speed; the hardware-touching units run on the target with `idf.py -T <unit> flash monitor`. The C++ display classes are tested through their C interface. Each test file carries `@verifies <id>` comments.

## Consequences
- Unity joins the SOUP list as SOUP-7 (version pinned with ESP-IDF in Phase 9).
- No mocking library in Phase 9; units take their hardware through small function pointers where a host test needs to fake it (only if a test asks for it).
