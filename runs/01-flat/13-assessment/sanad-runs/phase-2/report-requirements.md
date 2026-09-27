# Requirements Export

**Export schema:** `sanad/requirements-export/2`

**Mode:** Engineering — generated on a workstation, outside the certification recipe; this report carries no certification credit.

**Generated from commit:** `50eef729f1ca302dae1791aaa3988ca467e53ed4`

**Commit date:** `2026-09-26T23:15:22+05:30`

**Tool version:** `sanad 0.6.3`

**Configuration hash:** `ebf3e5fe67dcf76102b7001ccd2a8c241728342cb922b10f503c3020dd625274`

**Input hash:** `b411f2e57cb24b8715a037bc046d18427da5d718c79d63ecdd324a645fe35b65`

**Inputs:** `46 requirements`, `glossary`, `data dictionary`

**Index**

- [Environmental Requirement (4)](#environmental-requirement-4)
- [Interface Requirement (4)](#interface-requirement-4)
- [Maintainability Requirement (3)](#maintainability-requirement-3)
- [Performance Requirement (4)](#performance-requirement-4)
- [Safety Requirement (7)](#safety-requirement-7)
- [Stakeholder Requirement (8)](#stakeholder-requirement-8)
- [System Requirement (16)](#system-requirement-16)

## Environmental Requirement (4)

| ID | Name | status | priority | author | created | modified | tags | safetyClass | derived | Description | Rationale | Verification |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| MRTM-ENV-001 | Battery endurance | draft | medium | Masood (drafted by Claude, DOGFOOD-1) | 2026-09-27 |  |  | C | false | The monitor shall operate from the internal battery for 4 h. | A-11 assumes 4 h until Q-07 is answered. | Test: run on a fully charged battery at 25 °C for 4 h. |
| MRTM-ENV-002 | Ambient temperature | draft | medium | Masood (drafted by Claude, DOGFOOD-1) | 2026-09-27 |  |  | C | false | The monitor shall operate at an ambient temperature from 10 °C to 35 °C. | Clinic rooms; IEC 60601-1 cl. 7.9.3.1 frame. | Test: climatic chamber at 10 °C and 35 °C. |
| MRTM-ENV-003 | Humidity | draft | medium | Masood (drafted by Claude, DOGFOOD-1) | 2026-09-27 |  |  | C | false | The monitor shall operate at a relative humidity from 15 % to 85 % non-condensing. | Clinic rooms; IEC 60601-1 frame. | Test: climatic chamber at 15 % and 85 %. |
| MRTM-ENV-004 | Probe environment | draft | medium | Masood (drafted by Claude, DOGFOOD-1) | 2026-09-27 |  |  | C | false | The temperature probe shall operate at a fridge air temperature from -30 °C to 50 °C. | Covers freezer faults and defrost cycles. | Test: probe in a chamber at -30 °C and 50 °C. |

## Interface Requirement (4)

| ID | Name | status | priority | author | created | modified | tags | safetyClass | derived | Description | Rationale | Verification |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| MRTM-IFC-001 | Probe bus | draft | medium | Masood (drafted by Claude, DOGFOOD-1) | 2026-09-27 |  |  | C | false | The monitor shall read the temperature probe over a 1-Wire bus. | DS18B20-class digital probe (Phase 6 assumption). | Inspection: bus capture of one sample. |
| MRTM-IFC-002 | Acknowledge input | draft | medium | Masood (drafted by Claude, DOGFOOD-1) | 2026-09-27 |  |  | C | false | The monitor shall debounce the acknowledge button input for 50 ms. | A momentary contact bounces; one press must be one acknowledgement. | Test: apply a bouncing contact and count acknowledgements. |
| MRTM-IFC-003 | USB readout | draft | medium | Masood (drafted by Claude, DOGFOOD-1) | 2026-09-27 |  |  | C | false | The monitor shall present the event log to the USB host as a read-only mass-storage volume. | A-10: readout needs no special software. | Test: connect to a USB host and attempt to write. |
| MRTM-IFC-004 | Display character height | draft | medium | Masood (drafted by Claude, DOGFOOD-1) | 2026-09-27 |  |  | C | false | The monitor shall draw the temperature digits at a character height of 5 mm or more. | Readable from 1 m. | Inspection: measure the digit height on the display. |

## Maintainability Requirement (3)

| ID | Name | status | priority | author | created | modified | tags | safetyClass | derived | Description | Rationale | Verification |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| MRTM-MNT-001 | Probe replacement | draft | medium | Masood (drafted by Claude, DOGFOOD-1) | 2026-09-27 |  |  | C | false | The monitor shall meet the measurement accuracy with a replacement temperature probe without recalibration. | The technician must swap a failed probe on site. | Test: swap the probe and repeat the accuracy test. |
| MRTM-MNT-002 | Battery level | draft | medium | Masood (drafted by Claude, DOGFOOD-1) | 2026-09-27 |  |  | C | false | The monitor shall show the battery charge level on the display in steps of 10 %. | The technician plans the battery change. | Inspection: read the display at three charge levels. |
| MRTM-MNT-003 | Firmware version | draft | medium | Masood (drafted by Claude, DOGFOOD-1) | 2026-09-27 | 2026-09-27 |  | C | false | The monitor shall show the firmware version on the display for 3 s at power-up. | Configuration identification in the field (IEC 62304 cl. 8.1.1). | Inspection: power up and read the version. |

## Performance Requirement (4)

| ID | Name | status | priority | author | created | modified | tags | safetyClass | derived | Description | Rationale | Verification |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| MRTM-PRF-001 | Measurement accuracy | draft | medium | Masood (drafted by Claude, DOGFOOD-1) | 2026-09-27 |  |  | C | false | The monitor shall measure the fridge air temperature with an accuracy of ±0.5 °C over the range 0 °C to 15 °C. | Measurement Accuracy in the data dictionary; the band edges must be judged correctly. | Test: compare with a reference thermometer at 0 °C, 5 °C and 15 °C. |
| MRTM-PRF-002 | End-to-end alert time | draft | medium | Masood (drafted by Claude, DOGFOOD-1) | 2026-09-27 |  |  | C | false | The monitor shall sound the buzzer within 65 s of the first sample outside the allowed band. | 60 s confirmation plus 5 s alert time. | Test: step the probe out of band and time the buzzer. |
| MRTM-PRF-003 | Log readout time | draft | medium | Masood (drafted by Claude, DOGFOOD-1) | 2026-09-27 |  |  | C | false | The monitor shall deliver the complete event log to the USB host within 30 s. | An audit readout must not keep staff waiting. | Test: fill the log to 10000 events and time the readout. |
| MRTM-PRF-004 | Display refresh | draft | medium | Masood (drafted by Claude, DOGFOOD-1) | 2026-09-27 |  |  | C | false | The monitor shall refresh the displayed temperature at a period of 10 s. | The display follows the sampling period. | Test: time 20 display updates. |

## Safety Requirement (7)

| ID | Name | status | priority | author | created | modified | tags | safetyClass | derived | Description | Rationale | Verification |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| MRTM-SAF-001 | Buzzer loudness | draft | medium | Masood (drafted by Claude, DOGFOOD-1) | 2026-09-27 |  |  | C | false | The monitor shall sound the buzzer at a sound pressure level of 65 dB(A) or more at 1 m. | Risk control for hazard 'alert not heard' (ISO 14971 cl. 7; IEC 60601-1-8 frame). | Test: measure the sound pressure level at 1 m in an anechoic box. |
| MRTM-SAF-002 | Probe fault raises alert | draft | medium | Masood (drafted by Claude, DOGFOOD-1) | 2026-09-27 |  |  | C | false | The monitor shall sound the buzzer within 5 s of the probe fault declaration. | Risk control for hazard 'silent loss of monitoring'. | Test: disconnect the probe and time the buzzer. |
| MRTM-SAF-003 | Implausible sample | draft | medium | Masood (drafted by Claude, DOGFOOD-1) | 2026-09-27 |  |  | C | false | The monitor shall declare the probe fault when a sample falls outside the range -40 °C to 60 °C. | Risk control for hazard 'false in-band reading from a damaged probe'. | Test: inject samples at -41 °C and 61 °C through the probe simulator. |
| MRTM-SAF-004 | Watchdog restart | draft | medium | Masood (drafted by Claude, DOGFOOD-1) | 2026-09-27 |  |  | C | false | The monitor shall restart the monitoring software within 2 s of a software watchdog timeout. | Risk control for hazard 'firmware hang stops monitoring' (IEC 62304 cl. 5.3.6). | Test: force a firmware hang and time the restart. |
| MRTM-SAF-005 | Log power loss | draft | medium | Masood (drafted by Claude, DOGFOOD-1) | 2026-09-27 |  |  | C | false | The monitor shall log the power loss event within 1 s of mains power loss. | Risk control for hazard 'unexplained gap in the history'. | Test: remove mains power and read the logged event. |
| MRTM-SAF-006 | Alert survives restart | draft | medium | Masood (drafted by Claude, DOGFOOD-1) | 2026-09-27 | 2026-09-27 |  | C | false | The monitor shall restore the unacknowledged alert state within 2 s of the restart. | Risk control for hazard 'a restart silences an open alert'. | Test: restart the monitor during an unacknowledged alert and confirm the buzzer resumes. |
| MRTM-SAF-007 | Buzzer self-test | draft | medium | Masood (drafted by Claude, DOGFOOD-1) | 2026-09-27 | 2026-09-27 |  | C | false | The monitor shall test the buzzer within 5 s of power-up. | Risk control for hazard 'broken buzzer found only when needed'. | Test: power up with the buzzer disconnected and confirm the fault indication. |

## Stakeholder Requirement (8)

| ID | Name | status | priority | author | created | modified | tags | safetyClass | derived | Description | Rationale | Verification |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| MRTM-STK-001 | Alert on excursion | draft | medium | Masood (drafted by Claude, DOGFOOD-1) | 2026-09-27 |  |  | C | false | The monitor shall alert the nurse at the fridge when the fridge air temperature leaves the allowed band. | US-1: a spoiled vaccine looks the same as a good one, so staff must be told. | Test: drive the probe outside the allowed band and confirm the alert reaches the nurse position. |
| MRTM-STK-002 | No alert on brief door opening | draft | medium | Masood (drafted by Claude, DOGFOOD-1) | 2026-09-27 | 2026-09-27 |  | C | false | The monitor shall raise no alert for the temperature departure shorter than the excursion confirmation time. | US-2: false alarms teach staff to ignore the alarm (R-05). | Test: hold the probe outside the band for 30 s and confirm no alert. |
| MRTM-STK-003 | Silence the alert | draft | medium | Masood (drafted by Claude, DOGFOOD-1) | 2026-09-27 |  |  | C | false | The monitor shall let the nurse silence the alert. | US-3: the nurse must be able to work while fixing the fridge. | Demonstration: press the acknowledge button during an alert. |
| MRTM-STK-004 | See the temperature | draft | medium | Masood (drafted by Claude, DOGFOOD-1) | 2026-09-27 |  |  | C | false | The monitor shall display the current fridge air temperature to the nurse. | US-4: the state must be visible without tools. | Inspection: read the display during operation. |
| MRTM-STK-005 | Audit history | draft | medium | Masood (drafted by Claude, DOGFOOD-1) | 2026-09-27 |  |  | C | false | The monitor shall give the clinic manager the excursion history for audit. | US-5: the clinic must prove the stock stayed cold. | Demonstration: read out the history after a recorded excursion. |
| MRTM-STK-006 | History cannot be edited | draft | medium | Masood (drafted by Claude, DOGFOOD-1) | 2026-09-27 |  |  | C | false | The monitor shall protect the excursion history from change by the user. | US-6: an editable record cannot be trusted by an auditor. | Test: attempt to change a logged event through each user interface. |
| MRTM-STK-007 | Probe failure is visible | draft | medium | Masood (drafted by Claude, DOGFOOD-1) | 2026-09-27 |  |  | C | false | The monitor shall tell the technician when the temperature probe fails. | US-7: a failed probe misses excursions silently. | Test: disconnect the probe and confirm the fault indication. |
| MRTM-STK-008 | Monitoring through a power cut | draft | medium | Masood (drafted by Claude, DOGFOOD-1) | 2026-09-27 |  |  | C | false | The monitor shall keep monitoring during a mains power loss of up to 4 h. | US-8: power cuts happen at night; A-11 assumes 4 h until Q-07 is answered. | Test: remove mains power for 4 h and confirm samples continue. |

## System Requirement (16)

| ID | Name | status | priority | author | created | modified | tags | safetyClass | derived | Description | Rationale | Verification |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| MRTM-SYS-001 | Sampling period | draft | medium | Masood (drafted by Claude, DOGFOOD-1) | 2026-09-27 | 2026-09-27 |  | C | false | The monitor shall sample the fridge air temperature at the sampling period of 10 s. | Sampling Period in the data dictionary (A-04). | Test: time 100 consecutive samples; each interval is 10 s ± 0.5 s. |
| MRTM-SYS-002 | Excursion confirmation | draft | medium | Masood (drafted by Claude, DOGFOOD-1) | 2026-09-27 |  |  | C | false | The monitor shall confirm the excursion when consecutive samples stay outside the allowed band for 60 s. | Excursion Confirmation Time filters door openings (US-2). | Test: hold the probe out of band for 59 s and 61 s; only the second confirms. |
| MRTM-SYS-003 | Buzzer on excursion | draft | medium | Masood (drafted by Claude, DOGFOOD-1) | 2026-09-27 |  |  | C | false | The monitor shall sound the buzzer within 5 s of excursion confirmation. | The buzzer is the alert that reaches a nurse out of sight of the device. | Test: measure the time from confirmation to buzzer onset. |
| MRTM-SYS-004 | Red indicator on excursion | draft | medium | Masood (drafted by Claude, DOGFOOD-1) | 2026-09-27 |  |  | C | false | The monitor shall flash the red indicator within 5 s of excursion confirmation. | A visual alert for a noisy room. | Test: measure the time from confirmation to the first red flash. |
| MRTM-SYS-005 | Warning on excursion | draft | medium | Masood (drafted by Claude, DOGFOOD-1) | 2026-09-27 |  |  | C | false | The monitor shall show the excursion warning on the display within 5 s of excursion confirmation. | The warning tells the nurse which way the temperature went and since when. | Test: measure the time from confirmation to the warning on the display. |
| MRTM-SYS-006 | Acknowledge silences buzzer | draft | medium | Masood (drafted by Claude, DOGFOOD-1) | 2026-09-27 |  |  | C | false | The monitor shall stop the buzzer within 1 s of the acknowledge button press. | Acknowledgement silences the alert; it does not end the excursion. | Test: press acknowledge during an alert and time the buzzer stop. |
| MRTM-SYS-007 | Warning stays while excursion is open | draft | medium | Masood (drafted by Claude, DOGFOOD-1) | 2026-09-27 | 2026-09-27 |  | C | false | The monitor shall keep the excursion warning on the display for the duration of the excursion. | Silencing the buzzer must not hide the problem. | Test: acknowledge an alert and confirm the warning stays until the temperature returns to band. |
| MRTM-SYS-008 | Log excursion start | draft | medium | Masood (drafted by Claude, DOGFOOD-1) | 2026-09-27 | 2026-09-27 |  | C | false | The monitor shall log the excursion start event with the UTC time stamp at 1 s resolution. | The history is built from the event log. | Test: confirm an excursion and read the logged start event. |
| MRTM-SYS-009 | Log excursion end | draft | medium | Masood (drafted by Claude, DOGFOOD-1) | 2026-09-27 | 2026-09-27 |  | C | false | The monitor shall log the excursion end event with the peak temperature of the excursion at 0.1 °C resolution. | Auditors need the worst value to judge the stock. | Test: end an excursion with a known peak and read the logged end event. |
| MRTM-SYS-010 | Log acknowledgement | draft | medium | Masood (drafted by Claude, DOGFOOD-1) | 2026-09-27 | 2026-09-27 |  | C | false | The monitor shall log the acknowledgement event with the UTC time stamp at 1 s resolution. | The history shows who reacted and when. | Test: acknowledge an alert and read the logged event. |
| MRTM-SYS-011 | Display resolution | draft | medium | Masood (drafted by Claude, DOGFOOD-1) | 2026-09-27 | 2026-09-27 |  | C | false | The monitor shall display the current temperature at 0.1 °C resolution. | Staff compare the value with the 2 °C to 8 °C band. | Inspection: read the display at three probe temperatures. |
| MRTM-SYS-012 | Probe fault detection | draft | medium | Masood (drafted by Claude, DOGFOOD-1) | 2026-09-27 |  |  | C | false | The monitor shall declare the probe fault when no valid sample arrives for 30 s. | Three missed samples mean the probe cannot be trusted. | Test: disconnect the probe and time the fault declaration. |
| MRTM-SYS-013 | Probe fault message | draft | medium | Masood (drafted by Claude, DOGFOOD-1) | 2026-09-27 |  |  | C | false | The monitor shall show the probe fault message on the display within 5 s of the probe fault declaration. | The technician must see which part failed. | Test: disconnect the probe and time the message. |
| MRTM-SYS-014 | Read-only event log | draft | medium | Masood (drafted by Claude, DOGFOOD-1) | 2026-09-27 |  |  | C | false | The monitor shall restrict the user access to the event log to read-only. | US-6: the record must be trustworthy. | Test: attempt to write, delete and rename log entries over USB. |
| MRTM-SYS-015 | Event log capacity | draft | medium | Masood (drafted by Claude, DOGFOOD-1) | 2026-09-27 |  |  | C | false | The monitor shall retain 10000 events in the event log. | Event Log Capacity in the data dictionary covers one year of heavy use. | Test: write 10000 events and read them all back. |
| MRTM-SYS-016 | Battery operation | draft | medium | Masood (drafted by Claude, DOGFOOD-1) | 2026-09-27 | 2026-09-27 |  | C | false | The monitor shall switch to the internal battery within 100 ms of mains power loss. | US-8: monitoring must continue through a power cut. | Test: remove mains power and confirm sampling continues. |
