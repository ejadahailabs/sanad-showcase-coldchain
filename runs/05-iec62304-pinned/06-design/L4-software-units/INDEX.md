# Level 4 — software units

**In one line:** the unit contracts (detailed design), the code and the unit tests.

| Node | Parent | Class | Requirements |
|---|---|---|---|
| [sensor-sampler](sensor-sampler/INDEX.md) | sensor-item | C | 2 |
| [limit-evaluator](limit-evaluator/INDEX.md) | excursion-item | C | 3 |
| [alarm-mgr](alarm-mgr/INDEX.md) | alarm-item | C | 4 |
| [display-mgr](display-mgr/INDEX.md) | display-item | C | 2 |
| [event-log](event-log/INDEX.md) | log-item | C | 2 |
| [history-ring](history-ring/INDEX.md) | log-item | C | 2 |
| [rtc-clock](rtc-clock/INDEX.md) | log-item | C | 1 |
| [usb-export](usb-export/INDEX.md) | usb-item | B | 2 |
| [power-mon](power-mon/INDEX.md) | power-item | C | 2 |
| [wdt-kicker](wdt-kicker/INDEX.md) | supervisor-item | C | 1 |
| [diagnostics](diagnostics/INDEX.md) | supervisor-item | C | 1 |
| [config-mgr](config-mgr/INDEX.md) | supervisor-item | C | 1 |

## Level pictures

| Picture | Grade | What it shows |
|---|---|---|
| ![L4_units_alarm_path_contracts](pictures/L4_units_alarm_path_contracts.png) `L4_units_alarm_path_contracts` | D | six unit contracts as named boxes only: the functions (actions) inside an interface def are not drawn (F-5-005) |
| ![L4_units_data_contracts](pictures/L4_units_data_contracts.png) `L4_units_data_contracts` | D | six unit contracts, names only (F-5-005) |

DRAFT — needs Masood's review.
