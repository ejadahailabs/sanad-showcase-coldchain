# Scope — MRTM

> **MANUAL** — no Sanad scope template (FINDINGS F-03). DRAFT — needs Masood's review.

## In scope (version 1)
| # | Item | Plain words |
|---|---|---|
| IN-1 | Temperature sensing inside one fridge | One probe, read on a fixed timer |
| IN-2 | Allowed band check | Is it too warm or too cold? |
| IN-3 | Local alert | Buzzer and red light on the device |
| IN-4 | Local display | Small screen with the temperature and the warning |
| IN-5 | Event log and excursion history | A diary the device keeps of every problem |
| IN-6 | Acknowledge button | A person says "I have seen it" |
| IN-7 | History readout | Someone can read the diary out over a cable |

## Out of scope (version 1)
| # | Item | Why |
|---|---|---|
| OUT-1 | Remote alerts (SMS, app, cloud) | Needs a network and a service; later version (Q-03) |
| OUT-2 | Controlling the fridge | The monitor watches; it never switches the fridge |
| OUT-3 | More than one fridge per device | Keep version 1 small |
| OUT-4 | Regulatory certification | Dogfood run only |

## Four blocks
- **Assumptions:** A-05, A-06.
- **Risks:** R-03.
- **Open questions:** Q-03.
- **Trace links:** charter.md, 02-conops/ (Phase 1).
