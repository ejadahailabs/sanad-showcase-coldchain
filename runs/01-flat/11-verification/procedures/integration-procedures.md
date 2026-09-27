# Integration test procedures — MRTM

> **Standard:** IEC 62304 §5.6.2–5.6.5 (software integration and integration testing), Class C. **Status:** DRAFT — needs Masood's review. Hand-written (NO KEY, F-95).
> **Plain words:** the units are the bricks; these tests check the wall — that the six tasks pass the right messages to each other in time. Automated in `10-src/test/integration/test_int_chains.c`, run on the host scheduler (`10-src/host/sim.c`, 100 ms ticks, task periods from ADR-0019).

| Case | Chain (units in order) | Verifies | What is injected | Pass criterion | Minutes |
|---|---|---|---|---|---|
| test_int_chains.test_int01_excursion_chain | sensor_sampler → limit_evaluator → alarm_mgr → event_log/history_ring → display_mgr | MRTM-SYS-002 MRTM-SYS-003 MRTM-SYS-005 MRTM-SYS-008 MRTM-PRF-002 | probe steps from 5.0 to 9.0 °C | buzzer ≤ 65 s after the step; excursion banner; EXCURSION_START record with 9.0 °C | < 1 (auto) |
| test_int_chains.test_int02_watchdog_chain | alarm_mgr heartbeat → wdt_kicker → backup alarm (model) | MRTM-SAF-010 MRTM-SAF-009 | alarm task stops | last pulse ≤ 2.5 s after the hang (one 500 ms supervisor period of slack); backup alarm sounding ≤ 15 s | < 1 |
| test_int_chains.test_int03_corrupt_config_fail_safe | config_mgr → mrtm_app → alarm_mgr | MRTM-SAF-017 | one bit flipped in the stored band | failSafe, buzzer on at t ≤ 5 s, CONFIG_CRC_FAULT logged | < 1 |
| test_int_chains.test_int04_restart_restores_the_alarm | alarm_mgr (NVS) → mrtm_app power-up → diagnostics | MRTM-SAF-006 | restart during a sounding alarm | buzzer on ≤ 2 s after the restart and still on after the ~12 s self-test | < 1 |
| test_int_chains.test_int05_power_loss_logged_within_1_s | power_mon ISR → event_log → rtc_clock → history_ring | MRTM-SAF-005 | mains-sense edge | POWER_LOSS record within 1 s, UTC stamp ±1 s | < 1 |

Environment: see ../strategy/verification-strategy.md §4 (host). On the target the same chains are exercised by SP-01, SP-03, SP-05 and SP-04.
