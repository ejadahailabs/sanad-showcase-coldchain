# User stories — MRTM

> **MANUAL** — Sanad has no user-story artefact or capture flow (F-13). DRAFT. Each story names its stakeholder (00-project/stakeholders.md) and the use case it becomes.

| # | As a … | I want … | So that … | Use case | Source |
|---|---|---|---|---|---|
| US-1 | nurse (SH-1) | to be alerted when the fridge goes out of band | I can move the stock before it spoils | RaiseAlert | assumed (A-06) |
| US-2 | nurse (SH-1) | not to be alerted when the door is opened briefly | I trust the alert when it sounds | DetectExcursion | assumed |
| US-3 | nurse (SH-1) | to silence the buzzer once I have seen it | I can work while I fix the problem | AcknowledgeAlert | assumed |
| US-4 | nurse (SH-1) | to see the temperature and any warning at a glance | I know the state without tools | MonitorTemperature | assumed |
| US-5 | clinic manager (SH-2) | to read the whole excursion history | I can prove to an auditor that stock stayed cold | ReviewHistory | assumed |
| US-6 | quality officer (SH-3) | the history to be impossible to edit | the record can be trusted | ReviewHistory | assumed |
| US-7 | technician (SH-4) | to know when the probe has failed | I replace it before it misses an excursion | ServiceMonitor | assumed |
| US-8 | technician (SH-4) | the monitor to keep working through a short power cut | no excursion is missed during an outage | MonitorTemperature | assumed (Q-07) |
