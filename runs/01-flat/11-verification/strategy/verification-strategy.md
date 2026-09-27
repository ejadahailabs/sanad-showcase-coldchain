# Verification strategy and environment — MRTM

> **Standard:** IEC 62304 §5.1.6 (verification planning), §5.5.2–5.5.5 (unit verification), §5.6 (integration testing), §5.7 (system testing), §5.1.3 / Class C. ISO 14971 §7.2 (verification of risk controls).
> **Status:** DRAFT — needs Masood's review. **Independence:** not required (owner order 3, 2026-09-27); the same agent wrote and verified, and every record says so.
> **Plain words:** this page says *how* we prove each promise the product makes, *where* (on this PC or on the real board), and *what counts as a pass*. Like a driving test plan: which manoeuvres, on which road, what the examiner checks.

## 1. Levels — what each one proves

| Level | IEC 62304 | What is tested | Where | How many | Automated? |
|---|---|---|---|---|---|
| Unit | §5.5.5 | One unit's functions against its contract (10-src/firmware/components/*/contracts.md) | Host PC: gcc + Unity + hardware stubs | 75 tests in 13 files | Yes — `make test` |
| Integration | §5.6 | Units working together through the six task bodies (`mrtm_app`) on the host scheduler | Host PC | 5 tests (INT-01…05) | Yes |
| System | §5.7 | Each requirement end-to-end, as the user sees it | Target bench (ESP32-S3 board, probe, water bath, power supply, meters); SP-01 also as a host dry run | 14 procedures (SP-01…14) covering all 69 requirements | SP-01 host dry run automated; bench runs manual |
| Inspection / analysis | §5.7.1 | Things a test cannot show: labelling, measured digit height, component ratings | Desk + bench | inside SP-06, SP-09, SP-10, SP-11, SP-14 | No |

**Rule of thumb:** logic is proved on the host (fast, repeatable). Anything that depends on real hardware — sound level, battery hours, accuracy, timing on the real CPU — is proved on the bench. A host result never stands in for a bench result.

## 2. Methods per requirement kind

| Kind | Main method | Why |
|---|---|---|
| System (SYS) | Test: host dry run + bench | Behaviour visible at the outside |
| Safety (SAF) | Test incl. fault injection (probe unplugged, buzzer disconnected, CRC corrupted, firmware hang) | Each risk control must be shown to work when the fault happens (ISO 14971 §7.2) |
| Performance (PRF) | Test with timing / reference instruments | Numbers need instruments |
| Environmental (ENV) | Test in a climatic chamber; battery run-down | Hardware property |
| Maintainability (MNT) | Test + inspection | |
| Interface (IFC) | Test + bus capture / measurement | |
| Stakeholder (STK) | Covered through their children, plus one acceptance pass of SP-01 and SP-08 | Validation is out of scope of IEC 62304 (§5.7 is verification) |

## 3. Pass / fail rules

- A test **passes** only if every check in it passes. One failed check = **fail**. Could not run = **blocked** (never "pass").
- A requirement is **verified** when every case linked to it has a **pass** result row at the build under review, at every level the table in §1 asks for.
- Timing criteria use the requirement's own number with no margin added (e.g. SYS-006 "within 1 s" → measured ≤ 1.0 s).
- Every result row names: case id, date, build (git sha), tester, verdict, evidence file. (11-verification/results/, Sanad's results producer reads the JUnit XML.)
- A failed test opens a defect (05-reviews/defect-log.md) before anything is changed.

## 4. Environment

| Item | Host (used) | Target bench (planned — NOT available in this run) |
|---|---|---|
| Computer | Linux x86-64, gcc/g++ 15.2, GNU make 4.4 | same PC + ESP-IDF v5.x (A-30) |
| Test framework | Unity v2.6.1 (SOUP-7), vendored | ESP-IDF `unity` component + unit-test app |
| Hardware | `host/hal_host.c` models: fake clock, probe with CRC, buzzer current, backup alarm 10 s timer, NOR flash, NVS, I2C, RTC | ESP32-S3 board built to 09-hardware/, DS18B20 probe |
| Instruments | none | reference thermometer ±0.1 °C (calibrated), stirred water bath 0–15 °C, climatic chamber 10–35 °C / 15–85 %RH, sound level meter class 2, bench power supply with current readout, oscilloscope / logic analyser (1-Wire, I2C, GPIO timing), stopwatch app with 0.1 s, USB host PC |
| Configuration | `mrtm_config.h` at the build sha; synthetic band 2–8 °C in NVS stub | same band written by the technician command |
| Data | synthetic only | synthetic only |

## 5. Traceability of verification

requirement → case → result is held in Sanad: cases in `11-verification/cases/verification-cases.csv` (declared as `producers.verification`), results as JUnit XML under `11-verification/results/<level>/` (declared as `producers.results`). The matrix and coverage views come from Sanad's `test-coverage` and `traceability-audit` reports (13-assessment/sanad-runs/phase-10*/). Hazard → control → requirement → test: `hazard-chain.md`.

## 6. What is NOT covered here (gaps we know)

- Structural (code) coverage is measured on the host (gcov → LCOV → Sanad) but only for the host build; target coverage is not planned.
- Timing on the real CPU (task deadlines, ISR latency) — only on the bench.
- Independence of the verifier — not required by the owner; recorded on every row.
