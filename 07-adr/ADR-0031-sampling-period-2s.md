# ADR-0031 — Sample every 2 s; confirmation stays 60 s (31 samples)

- **Status:** Accepted (DRAFT — needs Masood's review) · **Date:** 2026-09-27 · **Phase:** 11 (change CR-001) · **MANUAL** ADR shape (F-09) · IEC 62304 §5.4.2, §6.2.3 · IEC 60601-1 frame (EE-REVIEW)
- **Model:** `MrtmSoftware` sensor task `periodMs = 2000`; `MrtmHardware::Ds18b20` `normalMa = alarmMa = 0.56`

## Context
With one sample every 10 s the monitor can be blind for 10 s — longer than the 5 s the early alarm allows (ADR-0030). Like checking your mail once an hour and promising to answer in five minutes.

## Decision
- `MRTM_SAMPLE_PERIOD_MS = 2000` (MRTM-SYS-001 now says 2 s).
- The confirmation window stays **60 s**; the sample count is derived, not typed: `MRTM_CONFIRM_SAMPLES = 60000 / 2000 + 1 = 31` (MRTM-SYS-002 and MRTM-SYS-018 now say 31 samples spanning 60 s).
- DS18B20 stays at 12-bit (750 ms conversion fits inside 2 s).

## Consequences
- Probe average current 0.11 → 0.56 mA; battery life still far above the 4 h of ENV-001 (09-hardware/power-budget.md regenerated). **EE-REVIEW:** probe self-heating at 37 % conversion duty; 1-Wire bus load.
- Probe-fault time (30 s, MRTM-SYS-012) now spans 15 samples instead of 3 — unchanged in seconds.
- Five times more samples through `sensor_sampler`; the sensor task deadline (1 s) still holds (host timing only; target untested, A-30).
- Tests that counted "7" now use the constant; test names changed (seventh → nth), so three old cases left the matrix and three new names came in.

## Four blocks
- **Assumptions:** A-04 (numbers synthetic), A-37. **Risks:** R-17. **Open questions:** Q-14 (EE reviewer).
- **Trace links:** MRTM-SYS-001, SYS-002, SYS-018, SYS-024, ENV-001; ADR-0009, ADR-0014, ADR-0030.
