# ADR-0010 — The alarm path: buzzer + red light + screen, and it comes back after silence

- **Status:** Accepted · **Date:** 2026-09-27 · **Phase:** 4 · **MANUAL** ADR shape (F-09) · IEC 62304 §5.3.1 · ISO 14971 §7.1 (risk control: alert not noticed) · IEC 60601-1-8 as the alarm frame
- **Model:** `LogicalMonitor::alarmManager`, `MonitoringFirmware::alarmService`, `MrtmUnit::buzzer / redLed / buzzerLine / redLine`; pictures `rendered/mrtmDataFlow.svg`, `rendered/mrtmInterfaces.svg`

## Context
The whole product exists to make one noise at the right time. Like a smoke alarm: it must be loud, it must be hard to ignore, and pressing "hush" must not turn it off for ever.

## Decision
1. **Three signals, one decision:** once the excursion is confirmed (7 samples, 60 s), the alarm service drives the buzzer (≥ 65 dB(A) at 1 m), flashes the red LED at 2 Hz and shows the warning, all within 5 s (SYS-003/004/005, SAF-001).
2. **Silence is a pause:** the button stops the buzzer within 1 s; the buzzer returns after 15 min while the excursion continues (SYS-006, SYS-019, A-13). The red light and warning stay on (SYS-007).
3. **Faults alarm too:** probe fault (SAF-002) and low battery below 3.4 V (SAF-008) use the same buzzer.
4. **The alarm path tests itself:** buzzer self-test within 5 s of power-up (SAF-007); the supervisor restarts hung software within 2 s and restores an unacknowledged alarm (SAF-004, SAF-006).
5. The buzzer is driven through a plain GPIO line (`SignalLine`), no bus, so a bus fault cannot silence it.

## Consequences
The alarm still depends on the one processor (ADR-0008). A hardware-only backup (for example a watchdog output that sounds the buzzer when the firmware dies) is not in the design — Q-12 asks the owner.

## Four blocks
- **Assumptions:** A-13 (15 min), A-15 (3.4 V).
- **Risks:** R-05 (alarm fatigue), R-08 (single processor).
- **Open questions:** Q-12.
- **Trace links:** MRTM-STK-001, STK-003, SYS-003, SYS-004, SYS-005, SYS-006, SYS-007, SYS-019, SAF-001, SAF-002, SAF-004, SAF-006, SAF-007, SAF-008, PRF-002.
