# ADR-0026 — Build system: ESP-IDF CMake for the target, a plain Makefile for the host

- **Status:** Accepted (DRAFT — needs Masood's review) · **Date:** 2026-09-27 · **Phase:** 9 · **MANUAL** ADR shape (F-09) · IEC 62304 §5.1.10 (supporting items / tools), §8.1 (configuration identification)
- **Requirements:** none directly; enables verification of all code-bearing requirements

## Context
The firmware must build for the ESP32-S3 (ESP-IDF) and its logic must run on this PC, where ESP-IDF, CMake and Ninja are not installed. Like having one recipe and two ovens.

## Options
| Option | For | Against |
|---|---|---|
| **ESP-IDF CMake (target) + GNU make (host)** | Each kitchen uses its native tool; make is on the box | Two build descriptions to keep in step |
| ESP-IDF CMake for both (linux target) | One description | Needs ESP-IDF + CMake on the box — not available (A-30) |
| PlatformIO | Popular | Adds a tool and a SOUP item for nothing we need |

## Decision
Target: an ESP-IDF project in `10-src/firmware/` (one component per unit). Host: `10-src/Makefile` compiles the same `components/*/src` files plus `host/` stubs with gcc/g++, strict warnings as errors, and runs Unity. The Makefile globs the component folders, so a new unit needs no Makefile edit.

## Consequences
- The target build is written but UNTESTED until someone installs ESP-IDF (A-30, CLICK-LIST).
- `make` checks that the C code headers match the SysML enums before building (ADR-0025).
