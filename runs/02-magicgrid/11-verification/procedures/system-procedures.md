# System test procedures — MRTM

> **Standard:** IEC 62304 §5.7.1–5.7.4 (software system testing), ISO 14971 §7.2 (risk-control verification), Class C.
> **Status:** DRAFT — needs Masood's review. Hand-written: Sanad's test drafting needs an AI provider and none is configured (**UI-ONLY / NO KEY**, F-95).
> **How to read:** one row per procedure. The table is the index Sanad reads (via `tools/verif-matrix.py` → `../cases/verification-cases.csv`); the sections below are the steps. "H" = host dry run on the stubs, "T" = target bench, "I" = inspection.

| Case | Title | Verifies | Level | Category | Environment | Minutes | Pass criterion |
|---|---|---|---|---|---|---|---|
| SP-01 | Excursion, alarm, acknowledge, re-alarm, end | MRTM-SYS-001 MRTM-SYS-002 MRTM-SYS-003 MRTM-SYS-004 MRTM-SYS-005 MRTM-SYS-006 MRTM-SYS-007 MRTM-SYS-008 MRTM-SYS-009 MRTM-SYS-010 MRTM-SYS-018 MRTM-SYS-019 MRTM-PRF-002 MRTM-IFC-002 MRTM-SAF-019 MRTM-STK-001 MRTM-STK-002 MRTM-STK-003 MRTM-SYS-024 MRTM-SEN-001 MRTM-IND-001 MRTM-IND-002 | system | normal-range | H + T | 25 (H: 1) | all 11 checks of §SP-01 pass |
| SP-01-H | Excursion cycle — host dry run on the stubs (`sim_main excursion`) | MRTM-SYS-001 MRTM-SYS-002 MRTM-SYS-003 MRTM-SYS-004 MRTM-SYS-005 MRTM-SYS-006 MRTM-SYS-008 MRTM-SYS-009 MRTM-SYS-010 MRTM-SYS-018 MRTM-SYS-019 MRTM-PRF-002 MRTM-IFC-002 MRTM-SYS-024 | system | normal-range | H | 1 | the runner prints 11 CHECK … PASS lines and RESULT PASS |
| SP-02 | Probe fault: no CRC for 30 s, reading out of range | MRTM-SYS-012 MRTM-SYS-013 MRTM-SAF-002 MRTM-SAF-003 MRTM-SAF-011 MRTM-STK-007 MRTM-SEN-004 | system | fault-injection | T | 15 | fault declared ≤ 30 s after the last good sample (+1 sample period); message ≤ 5 s; buzzer 1 s on / 1 s off ±0.1 s |
| SP-03 | Firmware hang → watchdog restart and backup alarm | MRTM-SAF-004 MRTM-SAF-009 MRTM-SAF-010 MRTM-SAF-013 MRTM-ALM-005 MRTM-ALM-008 MRTM-BKA-001 MRTM-BKA-002 MRTM-BKT-001 MRTM-BKD-001 MRTM-BKH-001 MRTM-SUP-001 MRTM-MCU-001 | system | fault-injection | T | 20 | restart ≤ 2 s; pulses stop ≤ 2 s after the alarm task stops; backup buzzer ≤ 10 s after the last pulse; backup sounds ≥ 60 s with no power |
| SP-04 | Mains loss, battery, low battery | MRTM-SYS-016 MRTM-SYS-023 MRTM-SAF-005 MRTM-SAF-008 MRTM-ENV-001 MRTM-STK-008 MRTM-PWR-001 MRTM-PWR-002 MRTM-BAT-001 MRTM-PPT-001 | system | normal-range | T | 300 | switch-over ≤ 100 ms (scope); POWER_LOSS logged ≤ 1 s; runs ≥ 4 h on battery; buzzer ≤ 5 s after 3.4 V |
| SP-05 | Power-up: self-tests, band + version, corrupt band, clock stop, restore | MRTM-SAF-006 MRTM-SAF-007 MRTM-SAF-016 MRTM-SAF-017 MRTM-SAF-022 MRTM-SAF-023 MRTM-MNT-003 MRTM-DSP-003 MRTM-SUP-002 | system | fault-injection | T | 20 | buzzer test ≤ 5 s; backup test ≤ 15 s; band 3 s and version 3 s on screen; corrupt band → buzzer ≤ 5 s; CLOCK_FAULT logged ≤ 2 s; unacknowledged alarm back ≤ 2 s after restart |
| SP-06 | Buzzer loudness and buzzer fault | MRTM-SAF-001 MRTM-SAF-014 MRTM-SAF-015 MRTM-BZR-001 | system | fault-injection | T | 15 | ≥ 65 dB(A) at 1 m; buzzer disconnected → fault ≤ 5 s; red light 4 Hz ≤ 5 s after |
| SP-07 | Event log: 10 000 records, two copies, corrupt record, 9 000 warning | MRTM-SYS-015 MRTM-SYS-021 MRTM-SYS-022 MRTM-SAF-018 MRTM-LOG-001 MRTM-LOG-002 | system | boundary | T | 30 | 10 000 newest records readable after 12 000 written; each record in both copies ≤ 1 s; corrupt record reported ≤ 1 s; warning shown at 9 000 |
| SP-08 | USB export, read-only | MRTM-SYS-014 MRTM-IFC-003 MRTM-PRF-003 MRTM-STK-005 MRTM-STK-006 MRTM-LOG-003 | system | normal-range | T | 15 | volume mounts read-only; copy of HISTORY.CSV with 10 000 lines ≤ 30 s; every write/delete refused; file unchanged afterwards |
| SP-09 | Display: temperature, refresh, digit height, battery, calibration due, I2C recovery | MRTM-SYS-011 MRTM-PRF-004 MRTM-IFC-004 MRTM-MNT-002 MRTM-SAF-012 MRTM-SAF-021 MRTM-STK-004 MRTM-DSP-002 MRTM-DSP-003 MRTM-OLD-001 | system | normal-range | T + I | 25 | 0.1 °C shown; refresh every 10 s ±0.5 s; digits ≥ 5 mm (calliper); battery in 10 % steps; message at day 365; bus reset ≤ 1 s after a forced SDA-low |
| SP-10 | Measurement accuracy, probe swap, 1-Wire bus | MRTM-PRF-001 MRTM-MNT-001 MRTM-IFC-001 MRTM-ENV-004 MRTM-SEN-003 MRTM-PRB-001 MRTM-PRB-002 MRTM-PRB-003 | system | boundary | T | 120 | the error is ≤ 0.5 °C at 0, 2, 5, 8, 15 °C with two probes, no recalibration; bus capture shows 1-Wire; probe works −30…50 °C |
| SP-11 | Ambient temperature and humidity | MRTM-ENV-002 MRTM-ENV-003 | system | boundary | T | 480 | SP-01 checks pass at 10 °C / 15 %RH and 35 °C / 85 %RH |
| SP-12 | Clock drift over 7 days | MRTM-SYS-020 MRTM-LOG-004 MRTM-RTC-001 | system | normal-range | T | 15 (+7 days wait) | drift ≤ 14 s after 7 days against a time reference |
| SP-13 | Allowed band 2–8 °C, edges | MRTM-SYS-017 | system | boundary | T | 30 | 2.0 °C and 8.0 °C are in band; 1.9 °C and 8.1 °C for 7 samples raise the alarm |
| SP-14 | Instructions for use: probe position | MRTM-SAF-020 | system | inspection | I | 10 | IFU text says middle of the air space, ≥ 5 cm from the walls |

## SP-01 — Excursion, alarm, acknowledge, re-alarm, end (H + T)

**Set-up.** Monitor provisioned with band 2.0–8.0 °C. Host: `10-src/build/bin/sim_main excursion`. Bench: probe in a stirred water bath at 5.0 °C; stopwatch; USB host.
**Steps and checks** (the host runner prints one CHECK line for each):
1. Run 60 s in band → buzzer off, green light on (SP-01.1).
2. Move the probe to 9.5 °C. → early alarm (red light 1 Hz, buzzer still off) ≤ 5 s after the probe first reads above 8.0 °C (SP-01.11, SYS-024, CR-001 — bench: time 10 trials); then buzzer ≤ 65 s after the first sample above 8.0 °C (SP-01.2, PRF-002; SYS-002 confirmation after 31 samples spanning 60 s, SYS-003 ≤ 5 s after it); red light 2 Hz (SP-01.3); excursion warning on the screen (SP-01.4).
3. Tap the button for < 50 ms → nothing changes (SP-01.5, IFC-002).
4. Press the button → buzzer off ≤ 1 s (SP-01.6, SYS-006).
5. Wait → buzzer on again 15 min after the press (SP-01.7, SYS-019).
6. Move the probe back to 5.0 °C → excursion ends after 31 in-band samples, 60–80 s (SP-01.8, SYS-018).
7. Read the history over USB → one start, one acknowledgement, one re-alarm and one end record, each with a UTC stamp to the second (SP-01.9, SYS-008/010); the end record's peak = 9.5 °C (SP-01.10, SYS-009).
8. Bench only: hold the button 60 s → BUTTON_FAULT logged, further presses ignored until release (SAF-019; host: unit test).
**Pass:** all checks pass. **Minutes:** host 1, bench 25.
**Two cases, two verdicts (A-36):** `SP-01-H` is the host dry run (steps 1–7 on the stubs, automated); `SP-01` is the bench run. A host pass never closes the bench case.

## SP-02 — Probe fault (T)
**Set-up.** Bench as SP-01. **Steps.** 1) Short the DQ line to ground for 40 s → probe fault declared ≤ 30 s after the last good sample (+2 s sample period, CR-001), probe-fault message ≤ 5 s later, buzzer pattern 1 s on / 1 s off measured on the scope. 2) Release → fault clears on the next good sample, event PROBE_RECOVERED. 3) Put the probe in 55 °C water → fault at the first such sample (SAF-003). **Pass:** all three. **Minutes:** 15.

## SP-03 — Firmware hang (T)
**Set-up.** Debug build with a test command that stops the alarm task (never in the release build — REVIEW). **Steps.** 1) Trigger the hang; scope on GPIO 15 → last pulse ≤ 2 s after the alarm task's last 1 s cycle. 2) Stopwatch → backup buzzer ≤ 10 s after the last pulse. 3) Task WDT restarts the firmware ≤ 2 s after its 5 s timeout (console time stamps). 4) Remove mains and battery → backup buzzer sounds ≥ 60 s (SAF-013). **Minutes:** 20.

## SP-04 — Power (T)
**Steps.** 1) Pull mains; scope on the 3.3 V rail and mains-sense → switch-over ≤ 100 ms, no reset. 2) History shows POWER_LOSS stamped ≤ 1 s after the edge. 3) Leave on battery 4 h at room temperature → still monitoring. 4) Lower the bench supply standing in for the cell to 3.39 V → buzzer ≤ 5 s. 5) Restore mains → POWER_RESTORE logged. **Minutes:** 300 (mostly waiting).

## SP-05 — Power-up (T)
**Steps.** 1) Power up with the scope on the buzzer drive → 200 ms test pulse ≤ 5 s; pulses on GPIO 15 held ~12 s and backup alarm heard ≤ 15 s; SELF_TEST_PASS logged. 2) Screen shows band and firmware version in the first 3 s. 3) Corrupt the stored band (technician tool writes a bad CRC) and power up → buzzer ≤ 5 s, CONFIG_CRC_FAULT logged, no monitoring. 4) Remove the RTC backup cell, power up → CLOCK_FAULT logged ≤ 2 s. 5) Start an excursion alarm, do not acknowledge, reset the board → buzzer back ≤ 2 s. **Minutes:** 20.

## SP-06 — Buzzer (T)
**Steps.** 1) Sound level meter at 1 m, A-weighted → ≥ 65 dB(A). 2) Disconnect the buzzer during an alarm → BUZZER_FAULT ≤ 5 s, red light 4 Hz ≤ 5 s after. **Minutes:** 15.

## SP-07 — Event log (T)
**Steps.** 1) Technician command writes 12 000 synthetic records. 2) Export → the newest 10 000 are present, in order. 3) Flip one byte in copy A of one record → record still read (from B); flip in both → `CORRUPT` line and LOG_RECORD_CORRUPT logged ≤ 1 s. 4) At 9 000 records the capacity warning shows. 5) Time stamp of an event vs. flash write (debug log) ≤ 1 s, both copies. **Minutes:** 30.

## SP-08 — USB export (T)
**Steps.** 1) Plug into a PC → volume `MRTM LOG` read-only, one file HISTORY.CSV. 2) Copy it, stopwatch ≤ 30 s with 10 000 records. 3) Try to delete, rename, edit, format → all refused; re-read file is byte-identical. **Minutes:** 15.

## SP-09 — Display (T + I)
**Steps.** 1) Probe at 4.6 °C → screen 4.6. 2) Change bath by 1 °C and film the screen → updates only on 10 s ticks. 3) Calliper on the digits → ≥ 5 mm. 4) Bench supply sweep 3.4→4.2 V → battery icon in 10 % steps. 5) Set RTC to calibration date + 365 days → message. 6) Hold SDA low 200 ms → bus reset and screen back ≤ 1 s, I2C_BUS_RESET logged. **Minutes:** 25.

## SP-10 — Accuracy (T)
**Steps.** Bath at 0, 2, 5, 8, 15 °C, reference thermometer beside the probe; read 10 samples each with probe A, then probe B without recalibration; logic analyser on GPIO 4 shows 1-Wire; −30 °C and 50 °C in a chamber give valid samples. **Pass:** every error ≤ 0.5 °C. **Minutes:** 120.

## SP-11 — Ambient (T)
**Steps.** Chamber at 10 °C/15 %RH, then 35 °C/85 %RH, 2 h soak each; rerun SP-01 steps 1–4 in each. **Minutes:** 480.

## SP-12 — Clock drift (T)
**Steps.** Set UTC from a reference; after 7 days compare → drift ≤ 14 s either way. **Minutes:** 15 + 7 days.

## SP-13 — Band edges (T)
**Steps.** Bath at 2.0 and 8.0 °C for 7 samples each → no alarm; 1.9 and 8.1 °C for 7 samples → alarm. **Minutes:** 30.

## SP-14 — IFU inspection (I)
**Steps.** Read the IFU probe-position section; compare word for word with MRTM-SAF-020. **Minutes:** 10. **Blocked until the IFU exists** (not written in this run).
