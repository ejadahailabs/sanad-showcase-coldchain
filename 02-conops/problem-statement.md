# Problem statement — MRTM

> **MANUAL** — Sanad has no ConOps template (FINDINGS F-12). Frame: ISO 14971 cl. 5.2 (intended use), IEC 62304 cl. 5.2.1 input. DRAFT — needs Masood's review. Synthetic.

## The problem in one breath
Clinics keep vaccines and medicines in fridges.
If the fridge gets too warm or too cold, the medicine can stop working.
Nobody can see this by looking at the vial.
Today staff read a thermometer by hand, a few times a day.
A problem at night or at the weekend is found hours late, or never.

## Who feels it
| Who | Pain |
|---|---|
| Pharmacist / nurse | Finds out too late; must throw stock away or, worse, gives a spoiled dose |
| Clinic manager | Cannot prove to an auditor that stock stayed cold |
| Patient | Gets a dose that may not protect them |

## What "solved" looks like
- The fridge is watched every 10 seconds, day and night (A-04).
- A real problem raises an alert within about a minute; a door opened briefly does not.
- Every problem is written down with its start, end and worst temperature.

## Intended use (ISO 14971 cl. 5.2)
A stand-alone monitor that watches the air temperature of one medical refrigerator and alerts staff on site. It does not control the fridge and does not decide whether stock is usable; a person decides that from the history.

## Four blocks
- **Assumptions:** A-04, A-05. **Risks:** R-01. **Open questions:** Q-01, Q-06.
- **Trace links:** stakeholder requirements (Phase 2), 00-project/charter.md.
