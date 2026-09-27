# Operational concept — MRTM

> **MANUAL** — no Sanad ConOps template (F-12). DRAFT. The use-case and context pictures are SysML v2 in `06-design/` (not redrawn here).

## How it is used, day to day
1. A technician fixes the monitor on the fridge and puts the probe inside.
2. The monitor reads the probe every 10 seconds.
3. While the temperature is inside the allowed band (2–8 °C), the screen shows the temperature and a green light.
4. When the temperature stays outside the band for 60 seconds, that is an **excursion**:
   the buzzer sounds, the red light flashes, the screen shows the warning, and the event is logged.
5. A nurse presses **Acknowledge**. The buzzer stops. The warning stays until the temperature is back in band.
6. When the temperature is back in band, the excursion ends and its record is completed.
7. Once a week, or for an audit, the clinic manager reads out the excursion history over a USB cable.

## Modes (the state machine itself is drawn in SysML in Phase 7)
| Mode | Meaning |
|---|---|
| Normal | In band, no open excursion |
| Excursion | Out of band for longer than the confirmation time |
| Acknowledged | Excursion still open, alert silenced by a person |
| Fault | Probe missing or reading impossible values |

## Model links
- Use cases: `06-design/views/MrtmUseCasesView.sysml` (view) over `06-design/system/MrtmUseCases.sysml` (model).
- Context: `mrtmContext` view over `MrtmUseCases::MrtmContext`.

## Four blocks
- **Assumptions:** A-04, A-05, A-10. **Risks:** R-05. **Open questions:** Q-06, Q-07.
- **Trace links:** use-case model, user-stories.md, scenarios.md.
