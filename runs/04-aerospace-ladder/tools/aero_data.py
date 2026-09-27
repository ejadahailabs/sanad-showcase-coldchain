"""RUN-04 aerospace ladder data: every NEW requirement (aircraft functions, FHA safety objectives,
hardware item requirements, software HLR and LLR), in the order Sanad's allocator numbers them, plus how
the copied code, tests and bench procedures are re-pointed. Read by tools/aero-build.py.
Row: (key, type, node, parents, title, statement, rationale, verification, dal, extra)
  parents = keys of this file or existing ids (MRTM-SYS-001 ...); [] with extra["derived"] = derived requirement
  extra: hazards=[...], old=[run-2 ids this row re-homes], sites=[(file, line)] (LLR only: the implements-marker lines).
Statement text of re-homed rows is run 2's (tools/levels_data.py there) with the subject changed to the item.
DRAFT — needs Masood's review. Synthetic data only."""

C = "firmware/components/"
SS, LE, AM = C + "sensor_sampler/src/sensor_sampler.c", C + "limit_evaluator/src/limit_evaluator.c", C + "alarm_mgr/src/alarm_mgr.c"
APP, CRC = C + "mrtm_app/src/mrtm_app.c", C + "mrtm_common/src/mrtm_crc.c"
WK, DG, CM, PM = C + "wdt_kicker/src/wdt_kicker.c", C + "diagnostics/src/diagnostics.c", C + "config_mgr/src/config_mgr.c", C + "power_mon/src/power_mon.c"
DM = C + "display_mgr/src/display_mgr.cpp"
EL, HR, RC, UE = C + "event_log/src/event_log.c", C + "history_ring/src/history_ring.c", C + "rtc_clock/src/rtc_clock.c", C + "usb_export/src/usb_export.c"

R = []
def row(key, typ, node, parents, title, text, why, verify, dal, **extra):
    R.append((key, typ, node, parents, title, text, why, verify, dal, extra))

# ======================= AIRCRAFT LEVEL: product functions (ARP4754A §5.1) =======================
F = "The monitor plays the aircraft of ARP4754A: its functions are the top of the ladder (A-4-02)."
row("FUN1", "function", "aircraft", ["MRTM-STK-004", "MRTM-STK-007"], "Monitor the fridge air",
    "The monitor shall measure the fridge air temperature and show when the measurement is not valid.",
    F + " Serves the needs to see the temperature and to see a probe failure.", "Analysis: the system requirements derived from this function are all verified.", "A")
row("FUN2", "function", "aircraft", ["MRTM-STK-001", "MRTM-STK-002"], "Warn of an excursion",
    "The monitor shall warn clinic staff when the fridge air stays outside the allowed band longer than the confirmation time.",
    F + " Serves the needs to be alerted and not to be alerted for a brief door opening.", "Analysis: the system requirements derived from this function are all verified.", "A")
row("FUN3", "function", "aircraft", ["MRTM-STK-003"], "Acknowledge the warning",
    "The monitor shall let clinic staff silence an excursion warning without ending the watch on the excursion.",
    F + " Serves the need to silence the alert.", "Analysis: the system requirements derived from this function are all verified.", "A")
row("FUN4", "function", "aircraft", ["MRTM-STK-005", "MRTM-STK-006"], "Keep the history",
    "The monitor shall keep an unchangeable record of every excursion and alarm event.",
    F + " Serves the audit needs.", "Analysis: the system requirements derived from this function are all verified.", "C")
row("FUN5", "function", "aircraft", ["MRTM-STK-008"], "Watch through a power cut",
    "The monitor shall keep watching and warning while the mains power is lost.",
    F + " Serves the need to monitor through a power cut.", "Analysis: the system requirements derived from this function are all verified.", "A")

# ======================= AIRCRAFT LEVEL: FHA safety objectives (ARP4761) =======================
H = "FHA, 08-safety/01-fha.md. Severity names are the aerospace scale used as an analogue (A-4-04)."
row("SOB1", "safety-objective", "aircraft", ["FUN2", "FUN5"], "No silent loss of warning",
    "No single failure shall cause the loss of the excursion warning without an alarm signal to clinic staff.",
    H + " Failure condition FC-1 'loss of warning, not annunciated' — catastrophic analogue: a patient may receive a vaccine that lost its potency and nobody knows. Hazards HAZ-001, HAZ-003, HAZ-005, HAZ-006.",
    "Analysis: the PSSA fault tree shows a second, independent signal for every single failure.", "A", hazards=["HAZ-001", "HAZ-003", "HAZ-005", "HAZ-006"])
row("SOB2", "safety-objective", "aircraft", ["FUN2"], "No silent wrong band",
    "No single failure shall make the monitor judge the air against a band other than the stored band without an alarm signal.",
    H + " Failure condition FC-2 'misleading warning: wrong limits' — catastrophic analogue. Hazard HAZ-007.",
    "Analysis: the PSSA shows the band check refuses a corrupted band and forces the alarm.", "A", hazards=["HAZ-007"])
row("SOB3", "safety-objective", "aircraft", ["FUN1"], "Drift is bounded and shown",
    "The monitor shall bound probe drift by a calibration interval of 365 days and show staff when it has passed.",
    H + " Failure condition FC-3 'misleading temperature: drift' — hazardous analogue: an excursion near the band edge is missed. Hazard HAZ-004.",
    "Analysis: the calibration-due signal is traced to a verified requirement.", "B", hazards=["HAZ-004"])
row("SOB4", "safety-objective", "aircraft", ["FUN2"], "Nuisance warnings are limited",
    "The monitor shall not sound the buzzer for an out-of-band period shorter than the 60 s confirmation time.",
    H + " Failure condition FC-4 'nuisance warning' — major analogue: staff learn to ignore the alarm. Hazard HAZ-002.",
    "Test: the confirmation tests of the alarm software item.", "C", hazards=["HAZ-002"])
row("SOB5", "safety-objective", "aircraft", ["FUN4"], "No silent loss of history",
    "No single failure shall lose an excursion record without an event that shows the loss.",
    H + " Failure condition FC-5 'loss of history' — major analogue: an audit cannot show the exposure. Hazard HAZ-008.",
    "Analysis: two copies of every record and a corrupt-record event.", "C", hazards=["HAZ-008"])

# ======================= ITEM LEVEL: hardware item requirements (DO-254 shape) =======================
P = "PSSA 08-safety/02-pssa.md. Re-homed from run 2 "
row("HW1", "hardware-item", "sensor-hw", ["MRTM-SYS-024", "MRTM-SYS-001"], "Probe conversion time",
    "The sensor hardware item shall complete a 12-bit temperature conversion within 750 ms.",
    P + "MRTM-PRB-001. The sensing share of the 5 s early-alarm budget (ADR-0030). Figure from the part class, synthetic (A-40).",
    "Inspection of the part data; SP-10 bus capture.", "A", old=["MRTM-PRB-001", "MRTM-SEN-002", "MRTM-SEN-001"])
row("HW2", "hardware-item", "sensor-hw", ["MRTM-PRF-001", "MRTM-ENV-004"], "Probe accuracy",
    "The sensor hardware item shall read the air temperature with an accuracy of ±0.5 °C from -10 °C to 50 °C.",
    P + "MRTM-PRB-002. The accuracy is all probe; the firmware only converts units (A-40).",
    "Test: SP-10 at 0, 2, 5, 8, 15 °C against a reference thermometer.", "A", old=["MRTM-PRB-002", "MRTM-SEN-003"])
row("HW3", "hardware-item", "sensor-hw", ["MRTM-SYS-012", "MRTM-SAF-003"], "Probe scratchpad check",
    "The sensor hardware item shall send a CRC-8 value with every scratchpad read.",
    P + "MRTM-PRB-003. The CRC-8 lets the alarm software item tell a bad read from a real temperature (ADR-0009).",
    "Inspection of a bus capture in SP-10.", "A", old=["MRTM-PRB-003", "MRTM-SEN-004"])
row("HW4", "hardware-item", "alarm-hw", ["MRTM-SAF-001", "MRTM-SYS-003"], "Buzzer loudness",
    "The alarm hardware item shall produce a sound pressure level of 65 dB(A) or more at 1 m when either buzzer drive input is active.",
    P + "MRTM-BZR-001. Two drive inputs: the controller and the backup driver.", "Test: SP-03 sound level meter at 1 m.", "A", old=["MRTM-BZR-001", "MRTM-ALM-003", "MRTM-ALM-006"])
row("HW5", "hardware-item", "alarm-hw", ["MRTM-SYS-004", "MRTM-SYS-024"], "Red indicator response",
    "The alarm hardware item shall switch the red indicator within 10 ms of a change of its drive input.",
    P + "MRTM-IND-001.", "Test: SP-01 oscilloscope on the drive and the LED.", "A", old=["MRTM-IND-001", "MRTM-ALM-001"])
row("HW6", "hardware-item", "alarm-hw", ["MRTM-IFC-002", "MRTM-SYS-006"], "Acknowledge contact",
    "While a clinic staff member presses the acknowledge button, the alarm hardware item shall close the acknowledge contact.",
    P + "MRTM-IND-002.", "Test: SP-04 continuity while pressed.", "A", old=["MRTM-IND-002", "MRTM-ALM-004"])
row("HW7", "hardware-item", "alarm-hw", ["MRTM-SAF-009", "MRTM-SAF-010"], "Backup timer timeout",
    "The alarm hardware item shall assert the backup timeout 9 s ± 0.9 s after the last watchdog service pulse.",
    P + "MRTM-BKT-001 and MRTM-BKA-001: in this ladder the backup alarm is part of the alarm hardware item, not a node of its own (depth pinned).",
    "Test: SP-05 stop the pulses and time the timeout.", "A", old=["MRTM-BKT-001", "MRTM-BKA-001", "MRTM-ALM-005"])
row("HW8", "hardware-item", "alarm-hw", ["MRTM-SAF-009"], "Backup driver response",
    "The alarm hardware item shall drive the buzzer backup input within 100 ms of the backup timeout.",
    P + "MRTM-BKD-001.", "Test: SP-05.", "A", old=["MRTM-BKD-001"])
row("HW9", "hardware-item", "alarm-hw", ["MRTM-SAF-013"], "Backup hold-up",
    "The alarm hardware item shall supply the backup timer and the backup driver for 60 s or more after all power is lost.",
    P + "MRTM-BKH-001 and MRTM-BKA-002.", "Test: SP-07 remove mains and battery, time the sound.", "A", old=["MRTM-BKH-001", "MRTM-BKA-002", "MRTM-ALM-008"])
row("HW10", "hardware-item", "controller-hw", ["MRTM-SAF-004"], "Controller watchdog reset",
    "The controller hardware item shall reset the processor within 1 s of its hardware watchdog expiry.",
    P + "MRTM-MCU-001.", "Test: SP-06.", "A", old=["MRTM-MCU-001"])
row("HW11", "hardware-item", "controller-hw", ["MRTM-SYS-020", "MRTM-SAF-022"], "Clock drift",
    "The controller hardware item shall keep UTC time with a drift of 2 s per day or less from 10 °C to 35 °C.",
    P + "MRTM-RTC-001. The real-time clock sits on the controller board in this ladder.", "Test: SP-12 24 h against a reference.", "A", old=["MRTM-RTC-001"])
row("HW12", "hardware-item", "power-hw", ["MRTM-SYS-016"], "Switch to battery",
    "The power hardware item shall switch the load from mains to battery within 100 ms of mains loss.",
    P + "MRTM-PPT-001 and MRTM-PWR-001.", "Test: SP-08.", "B", old=["MRTM-PPT-001", "MRTM-PWR-001"])
row("HW13", "hardware-item", "power-hw", ["MRTM-ENV-001"], "Battery capacity",
    "The power hardware item shall store 2000 mAh or more at 3.7 V nominal.",
    P + "MRTM-BAT-001 and MRTM-PWR-002.", "Inspection of the cell data; SP-09 4 h run.", "B", old=["MRTM-BAT-001", "MRTM-PWR-002"])
row("HW14", "hardware-item", "display-hw", ["MRTM-IFC-004", "MRTM-SYS-011"], "Digit height",
    "The display hardware item shall draw the temperature digits at a character height of 5 mm or more.",
    P + "MRTM-OLD-001 and MRTM-DSP-002.", "Inspection with a ruler (SP-11).", "B", old=["MRTM-OLD-001", "MRTM-DSP-002"])

# ======================= ITEM LEVEL: software HLR (DO-178C §5.1) =======================
Q = "DO-178C §5.1 HLR. Re-homed from run 2 "
# ---- alarm-sw (DAL A) ----
row("A1", "hlr", "alarm-sw", ["MRTM-SYS-001", "MRTM-SYS-024"], "Sample period and read",
    "The alarm software item shall start one probe conversion at a period of 2 s and read the scratchpad 750 ms after the start.",
    Q + "MRTM-SNI-001 (ADR-0019, ADR-0031).", "Test: unit tests of sensor_sampler.", "A", old=["MRTM-SNI-001"])
row("A2", "hlr", "alarm-sw", ["MRTM-SYS-012", "MRTM-SAF-003"], "Invalid sample",
    "The alarm software item shall mark a sample invalid when its CRC-8 check fails or its value is outside -30 °C to 50 °C.",
    Q + "MRTM-SNI-002. An invalid sample never counts toward an excursion or its end (A-29).", "Test: unit tests of sensor_sampler.", "A", old=["MRTM-SNI-002"])
row("A3", "hlr", "alarm-sw", ["MRTM-SYS-012", "MRTM-SAF-002"], "Probe fault declaration",
    "The alarm software item shall declare a probe fault at once for an out-of-range sample and after 30 s without a valid sample.",
    "DO-178C §5.1 HLR. New in this ladder: run 2 held it only at system level (MRTM-SYS-012).", "Test: unit tests of sensor_sampler.", "A")
row("A4", "hlr", "alarm-sw", ["MRTM-SYS-024"], "Early excursion report",
    "The alarm software item shall report the early excursion at the first valid sample outside the allowed band.",
    Q + "MRTM-EXI-001 (ADR-0030).", "Test: unit tests of limit_evaluator.", "A", old=["MRTM-EXI-001"])
row("A5", "hlr", "alarm-sw", ["MRTM-SYS-002"], "Confirmed excursion report",
    "The alarm software item shall report the confirmed excursion at the 31st consecutive valid sample outside the allowed band, 60 s after the first of them.",
    Q + "MRTM-EXI-002 and MRTM-ALM-002 (ADR-0031).", "Test: unit tests of limit_evaluator; integration INT-01.", "A", old=["MRTM-EXI-002", "MRTM-ALM-002"])
row("A6", "hlr", "alarm-sw", ["MRTM-SYS-018", "MRTM-SYS-009"], "Excursion end report",
    "The alarm software item shall report the excursion end, with its peak, at the 31st consecutive valid sample inside the allowed band.",
    Q + "MRTM-EXI-003 and MRTM-ALM-007.", "Test: unit tests of limit_evaluator.", "A", old=["MRTM-EXI-003", "MRTM-ALM-007"])
row("A7", "hlr", "alarm-sw", ["MRTM-SYS-024", "MRTM-SYS-004"], "Early alarm light",
    "The alarm software item shall flash the red indicator at 1 Hz, without the buzzer, within one 1 s alarm cycle of the early excursion report.",
    Q + "MRTM-ALI-001 and MRTM-ALM-001 (low priority, IEC 60601-1-8 as the alarm-signal source).", "Test: unit tests of alarm_mgr.", "A", old=["MRTM-ALI-001", "MRTM-ALM-001"])
row("A8", "hlr", "alarm-sw", ["MRTM-SYS-003", "MRTM-PRF-002"], "Buzzer on",
    "The alarm software item shall switch the buzzer drive on, and the red indicator to 2 Hz, within one 1 s alarm cycle of the confirmed excursion report.",
    Q + "MRTM-ALI-002 and MRTM-ALM-003.", "Test: unit tests of alarm_mgr; integration INT-01.", "A", old=["MRTM-ALI-002", "MRTM-ALM-003"])
row("A9", "hlr", "alarm-sw", ["MRTM-SYS-006", "MRTM-IFC-002"], "Buzzer off on acknowledge",
    "The alarm software item shall switch the buzzer drive off within one 1 s alarm cycle of an acknowledge press stable for 50 ms.",
    Q + "MRTM-ALI-003 and MRTM-ALM-004.", "Test: unit tests of alarm_mgr.", "A", old=["MRTM-ALI-003", "MRTM-ALM-004"])
row("A10", "hlr", "alarm-sw", ["MRTM-SAF-010"], "Alarm heartbeat",
    "The alarm software item shall advance its heartbeat counter once per 1 s alarm cycle.",
    Q + "MRTM-ALI-004. The platform software item stops the watchdog pulses when it stops (HLR P1).", "Test: unit tests of alarm_mgr.", "A", old=["MRTM-ALI-004"])
row("A11", "hlr", "alarm-sw", ["MRTM-SYS-019"], "Re-sound after silence",
    "The alarm software item shall switch the buzzer drive on again 15 min after an acknowledge while the excursion is still open.",
    "DO-178C §5.1 HLR. New in this ladder: run 2 held it at system level only.", "Test: unit tests of alarm_mgr.", "A")
row("A12", "hlr", "alarm-sw", ["MRTM-SAF-002", "MRTM-SAF-011"], "Probe fault tone",
    "While a probe fault is declared, the alarm software item shall drive the buzzer 1 s on and 1 s off.",
    "DO-178C §5.1 HLR. The fault tone differs from the excursion tone (HAZ-002).", "Test: unit tests of alarm_mgr.", "A")
row("A13", "hlr", "alarm-sw", ["MRTM-SAF-014", "MRTM-SAF-015"], "Buzzer fault",
    "When the buzzer draws no current for 5 consecutive alarm cycles while driven, the alarm software item shall flash the red indicator at 4 Hz and log a buzzer fault.",
    "DO-178C §5.1 HLR. Diverse signal for a failed buzzer.", "Test: unit tests of alarm_mgr.", "A")
row("A14", "hlr", "alarm-sw", ["MRTM-SAF-006"], "Alarm survives restart",
    "The alarm software item shall sound an unacknowledged excursion alarm again within 2 s of a restart.",
    "DO-178C §5.1 HLR.", "Test: unit tests of alarm_mgr; integration INT-04.", "A")
row("A15", "hlr", "alarm-sw", ["MRTM-SAF-019"], "Stuck button",
    "The alarm software item shall ignore an acknowledge press held for 60 s until the button is released.",
    "DO-178C §5.1 HLR. Gate round 1 split the fail-safe half into A16 (atomicity).", "Test: unit tests of alarm_mgr.", "A")
# ---- platform-sw (DAL A) ----
row("P1", "hlr", "platform-sw", ["MRTM-SAF-010", "MRTM-SAF-009"], "Watchdog tied to the heartbeat",
    "The platform software item shall stop the watchdog service pulses within 2 s of the alarm heartbeat stopping.",
    Q + "MRTM-SVI-001 and MRTM-SUP-004.", "Test: unit tests of wdt_kicker; integration INT-02.", "A", old=["MRTM-SVI-001", "MRTM-SUP-004"])
row("P2", "hlr", "platform-sw", ["MRTM-SAF-004"], "Task watchdog restart",
    "The platform software item shall restart the monitoring software within 2 s of a task watchdog timeout.",
    Q + "MRTM-SUP-001.", "Test: unit tests of wdt_kicker; SP-06.", "A", old=["MRTM-SUP-001"])
row("P3", "hlr", "platform-sw", ["MRTM-SAF-007", "MRTM-SAF-023"], "Power-up tests",
    "The platform software item shall test the buzzer within 5 s and the backup alarm within 15 s of power-up.",
    Q + "MRTM-SVI-002 and MRTM-SUP-002.", "Test: unit tests of diagnostics.", "A", old=["MRTM-SVI-002", "MRTM-SUP-002"])
row("P4", "hlr", "platform-sw", ["MRTM-SAF-017", "MRTM-SYS-017"], "Band integrity",
    "The platform software item shall enter fail-safe, instead of monitoring, when the stored band fails its CRC-32 check.",
    Q + "MRTM-SVI-003 and MRTM-SUP-003. There is no default band on purpose.", "Test: unit tests of config_mgr; integration INT-03.", "A", old=["MRTM-SVI-003", "MRTM-SUP-003"])
row("P5", "hlr", "platform-sw", ["MRTM-SAF-005", "MRTM-SYS-023"], "Mains events",
    "The platform software item shall post the mains-lost and mains-restored events within 1 s of the mains sense edge.",
    Q + "MRTM-PWI-001 and MRTM-PWR-003.", "Test: unit tests of power_mon; integration INT-05.", "A", old=["MRTM-PWI-001", "MRTM-PWR-003"])
row("P6", "hlr", "platform-sw", ["MRTM-SAF-008"], "Battery low",
    "The platform software item shall post the battery-low signal after 2 consecutive battery readings below 3.4 V.",
    Q + "MRTM-PWI-002.", "Test: unit tests of power_mon.", "A", old=["MRTM-PWI-002"])
row("P7", "hlr", "platform-sw", ["MRTM-SAF-012", "MRTM-SYS-022", "MRTM-MNT-002"], "Maintenance flags",
    "The platform software item shall set the calibration-due flag 365 days after the stored calibration date and the log-capacity flag at 9000 records.",
    "DO-178C §5.1 HLR. The display software item shows the flags (HLR D4).", "Test: unit tests of display_mgr through the view.", "A")
row("P8", "hlr", "platform-sw", ["MRTM-SAF-016", "MRTM-MNT-003", "MRTM-SAF-006"], "Power-up order",
    "At power-up the platform software item shall restore the alarm state, read the clock and the band, and start monitoring only after the power-up tests pass.",
    "DO-178C §5.1 HLR.", "Test: integration INT-03, INT-04.", "A")
row("PD1", "hlr", "platform-sw", [], "Task priorities keep the alarm first",
    "The platform software item shall run the alarm, supervisor and sensor tasks on core 1 at priorities 18 to 22, above every task of the display, record and export software items.",
    "DO-178C §5.1.2 DERIVED requirement: no parent. It comes from the PSSA's partitioning decision (08-safety/02-pssa.md §4): lower-DAL items share the processor, so their tasks must not delay the DAL A items. Fed back to the safety assessment there.",
    "Inspection of the task table in MrtmSoftware and mrtm_config.h; analysis of worst-case response.", "A", derived=True)
# ---- display-sw (DAL B) ----
row("D1", "hlr", "display-sw", ["MRTM-SYS-005", "MRTM-SYS-007", "MRTM-SYS-013"], "Warning and fault messages",
    "The display software item shall show the excursion warning for the whole excursion and the probe fault message within 1 s of the state change.",
    Q + "MRTM-DSI-001 and MRTM-DSP-001, MRTM-DSP-003.", "Test: unit tests of display_mgr.", "B", old=["MRTM-DSI-001", "MRTM-DSP-001", "MRTM-DSP-003"])
row("D2", "hlr", "display-sw", ["MRTM-SYS-011", "MRTM-PRF-004"], "Temperature on screen",
    "The display software item shall show the temperature at 0.1 °C resolution in digits 32 pixels tall and change it at most once per 10 s.",
    Q + "MRTM-DSI-002.", "Test: unit tests of display_mgr.", "B", old=["MRTM-DSI-002"])
row("D3", "hlr", "display-sw", ["MRTM-SAF-016", "MRTM-MNT-003"], "Band at power-up",
    "The display software item shall show the allowed band and the firmware version for the first 3 s after power-up.",
    "DO-178C §5.1 HLR.", "Test: unit tests of display_mgr.", "B")
row("D4", "hlr", "display-sw", ["MRTM-SAF-012", "MRTM-SYS-022", "MRTM-MNT-002"], "Maintenance messages",
    "The display software item shall show the calibration-due and log-capacity messages when their flags are set, and the battery level in steps of 10 %.",
    "DO-178C §5.1 HLR. The calibration-due message is the only signal of FC-3, which is why this item is DAL B (PSSA).", "Test: unit tests of display_mgr.", "B")
row("D5", "hlr", "display-sw", ["MRTM-SAF-021"], "Display bus recovery",
    "The display software item shall recover the display bus within 1 s of a 100 ms bus timeout.",
    "DO-178C §5.1 HLR.", "Test: unit tests of display_mgr.", "B")
# ---- record-sw (DAL C) ----
row("R1", "hlr", "record-sw", ["MRTM-SAF-018", "MRTM-SYS-008", "MRTM-SYS-010"], "Two copies within 1 s",
    "The record software item shall write each event record with its CRC-32 to 2 separate flash sectors within 1 s of the event.",
    Q + "MRTM-LGI-001 and MRTM-LOG-001.", "Test: unit tests of event_log and history_ring.", "C", old=["MRTM-LGI-001", "MRTM-LOG-001"])
row("R2", "hlr", "record-sw", ["MRTM-SYS-015"], "Newest 10000 kept",
    "When the event log holds 10000 records, the record software item shall write each new record over the oldest one.",
    Q + "MRTM-LGI-002 and MRTM-LOG-002.", "Test: unit tests of history_ring.", "C", old=["MRTM-LGI-002", "MRTM-LOG-002"])
row("R3", "hlr", "record-sw", ["MRTM-SYS-020", "MRTM-SAF-022", "MRTM-SYS-023"], "Time stamps",
    "The record software item shall time-stamp each record with UTC at 1 s resolution and log a clock fault when the clock oscillator has stopped.",
    Q + "MRTM-LOG-004.", "Test: unit tests of event_log and rtc_clock.", "C", old=["MRTM-LOG-004"])
row("R4", "hlr", "record-sw", ["MRTM-SYS-021"], "Corrupt record",
    "The record software item shall read a record from whichever copy passes its CRC-32 check and log a corrupt-record event when neither does.",
    "DO-178C §5.1 HLR.", "Test: unit tests of history_ring.", "C")
row("R5", "hlr", "record-sw", ["MRTM-SYS-022"], "Capacity warning record",
    "The record software item shall log one capacity-warning event when the event log reaches 9000 records.",
    "DO-178C §5.1 HLR.", "Test: unit tests of history_ring.", "C")
# ---- export-sw (DAL D) ----
row("E1", "hlr", "export-sw", ["MRTM-SYS-014", "MRTM-IFC-003", "MRTM-PRF-003"], "Read-only volume",
    "The export software item shall present the event log as a read-only mass-storage volume within 30 s of connection.",
    Q + "MRTM-USI-001 and MRTM-LOG-003.", "Test: unit tests of usb_export.", "D", old=["MRTM-USI-001", "MRTM-LOG-003"])
row("E2", "hlr", "export-sw", ["MRTM-SYS-014"], "Host writes refused",
    "When the USB host sends a write request, the export software item shall refuse the write.",
    Q + "MRTM-USI-002.", "Test: unit tests of usb_export.", "D", old=["MRTM-USI-002"])
row("ED1", "hlr", "export-sw", [], "Read the log only through the accessor",
    "The export software item shall read the event log only through the record software item's read accessor.",
    "DO-178C §5.1.2 DERIVED requirement: no parent. It comes from the PSSA's partitioning decision (08-safety/02-pssa.md §4): a DAL D item must not write DAL C data. Fed back to the safety assessment there.",
    "Inspection of usb_export.c includes and calls.", "D", derived=True)

row("A16", "hlr", "alarm-sw", ["MRTM-SAF-008", "MRTM-SAF-017"], "Buzzer in fail-safe",
    "While a fail-safe or battery-low signal is set, the alarm software item shall drive the buzzer.",
    "DO-178C §5.1 HLR. Split from A15 in gate round 1 (atomicity).", "Test: unit tests of alarm_mgr.", "A")

# ======================= SOFTWARE DESIGN: LLR (DO-178C §5.2) — one per code site =======================
L = "DO-178C §5.2 LLR: enough detail to code from. Code: "
def llr(key, node, parents, title, text, site, dal, verify="Test: the unit tests of this function."):
    row(key, "llr", node, parents, title, text, L + f"{site[0].split('/')[-1]} line {site[1]}.", verify, dal, sites=[site])
N = "alarm-sw-design"
llr("LA1", N, ["A1"], "Bus start", "sensor_sampler_init shall return MRTM_ERR_BUS when the 1-Wire bus reset or the first conversion start fails.", (SS, 16), "A")
llr("LA2", N, ["A1"], "Unit conversion", "sensor_sampler_to_tenths shall convert the raw 12-bit value in 1/16 °C to tenths of a degree, rounding half away from zero, and add the calibrated offset.", (SS, 29), "A")
llr("LA3", N, ["A1", "A2"], "Sample read", "sensor_sampler_read shall read the scratchpad, start the next conversion, and return the sample invalid when the CRC-8 differs or the value is outside -300 to 500 tenths.", (SS, 37), "A")
llr("LA4", N, ["A3"], "Probe fault flag", "sensor_sampler_probe_fault shall return true when the last sample was out of range or when 30 s have passed since the last valid sample.", (SS, 62), "A")
llr("LA5", N, ["A2"], "CRC-8", "mrtm_crc8_maxim shall compute the Dallas/Maxim CRC-8 (reflected polynomial 0x8C, initial value 0) over the bytes given.", (CRC, 5), "A")
llr("LA6", N, ["A3", "A4", "A5", "A6"], "Sensor step", "In monitoring mode, app_sensor_step shall read one sample, post probe fault or recovered on a change, and post the limit event of that sample to the alarm manager in the same step.", (APP, 71), "A")
llr("LA7", N, ["A5"], "Band set", "limit_evaluator_init shall set the low and high band limits from the loaded band and the hysteresis to 0.", (LE, 12), "A")
llr("LA8", N, ["A4", "A5", "A6"], "Consecutive counts", "limit_evaluator_step shall ignore an invalid sample, return EARLY at the first valid out-of-band sample, CONFIRMED at the 31st consecutive one, and ENDED at the 31st consecutive in-band sample of an excursion.", (LE, 24), "A")
llr("LA9", N, ["A6"], "Peak", "limit_evaluator_peak shall return the sample of the excursion farthest outside the band.", (LE, 55), "A")
llr("LA10", N, ["A14"], "State restore", "alarm_mgr_init shall restore state SOUNDING when NVS key 'alarm' holds SOUNDING, and QUIET otherwise.", (AM, 30), "A")
llr("LA11", N, ["A8", "A9"], "Signal queue", "alarm_mgr_post shall queue the signal (depth 8, MRTM_ERR_FULL when full) and wake the alarm task at once.", (AM, 41), "A")
llr("LA12", N, ["A7", "A8", "A9"], "Transition table", "take shall apply one AlarmStates transition per signal: early from quiet, early cleared, confirm from quiet or early, ack from sounding, end from sounding or silenced, probe fault from any monitoring state, probe recovered.", (AM, 77), "A")
llr("LA13", N, ["A7", "A8", "A11", "A12", "A13", "A15", "A16"], "Outputs per state", "alarm_mgr_step shall drive the outputs of the current state (early: red 1 Hz; sounding: buzzer and red 2 Hz; probe fault: buzzer 1 s on 1 s off; buzzer fault: red 4 Hz), re-sound 15 min after an ack, and declare a buzzer fault after 5 steps with no buzzer current.", (AM, 113), "A")
llr("LA14", N, ["A9"], "Debounce timer", "alarm_mgr_button_isr shall re-arm a 50 ms one-shot timer on every button edge.", (AM, 155), "A")
llr("LA15", N, ["A9", "A15"], "Accepted press", "alarm_mgr_button_debounced shall post ACK once for a press still stable after 50 ms, and nothing while the button is declared stuck.", (AM, 163), "A")
llr("LA16", N, ["A10"], "Heartbeat read", "alarm_mgr_heartbeat shall return the step counter that alarm_mgr_step advances by one at the end of every step.", (AM, 174), "A")
N = "platform-sw-design"
llr("LP1", N, ["P2"], "Task watchdog", "wdt_kicker_init shall arm the task watchdog at 5 s with a panic restart.", (WK, 10), "A")
llr("LP2", N, ["P1"], "Pulse gate", "wdt_kicker_step shall pulse the external watchdog only while the heartbeat changed within the last 2000 ms and the pulses are not held.", (WK, 18), "A")
llr("LP3", N, ["P3"], "Self-tests", "diagnostics_power_up shall drive the buzzer 200 ms and check its current (unless an alarm is sounding), hold the watchdog pulses up to 12 s until the backup alarm is sensed, and log the result.", (DG, 13), "A")
llr("LP4", N, ["P4"], "Band load", "config_mgr_load shall return the stored band only when its CRC-32 matches and 2.0 °C ≤ low < high ≤ 8.0 °C, and an error otherwise.", (CM, 19), "A")
llr("LP5", N, ["P4"], "Band store", "config_mgr_store shall refuse a band outside the limits, store a valid band with a fresh CRC-32 and log the change.", (CM, 31), "A")
llr("LP6", N, ["P4"], "CRC-32", "mrtm_crc32 shall compute the IEEE CRC-32 (reflected polynomial 0xEDB88320, initial and final XOR 0xFFFFFFFF).", (CRC, 16), "A")
llr("LP7", N, ["P5"], "Mains edge", "power_mon_isr shall post a power-loss or power-restore event on each change of the mains sense line.", (PM, 21), "A")
llr("LP8", N, ["P6"], "Battery low latch", "power_mon_step shall post the battery-low signal once after 2 consecutive readings below 3400 mV.", (PM, 31), "A")
llr("LP9", N, ["P8", "P4"], "Power-up sequence", "app_power_up shall restore the alarm, read the clock and the band, enter fail-safe with the buzzer on when the band load fails, and enter monitoring only when the power-up tests pass.", (APP, 36), "A")
llr("LP10", N, ["P1", "P7"], "Supervisor step", "app_supervisor_step shall refresh the clock, gate the watchdog pulse on the alarm heartbeat, and set the calibration-due and log-capacity flags.", (APP, 119), "A")
N = "display-sw-design"
llr("LD1", N, ["D1"], "Display step", "app_display_step shall copy the alarm state into the view and redraw the frame.", (APP, 138), "B")
llr("LD2", N, ["D2"], "Digits", "The temperature widget shall draw three 7-segment digits 32 pixels tall with a decimal point, and '---' for an invalid sample.", (DM, 65), "B")
llr("LD3", N, ["D1", "D3", "D4"], "Banner", "The banner widget shall draw the most urgent message as an inverted bar 16 pixels high.", (DM, 99), "B")
llr("LD4", N, ["D4"], "Battery icon", "The battery widget shall show the level in steps of 10 %.", (DM, 120), "B")
llr("LD5", N, ["D5"], "Bus recovery", "After a 100 ms bus timeout the display driver shall send 9 clock pulses and re-initialise the panel.", (DM, 157), "B")
llr("LD6", N, ["D2", "D1", "D3"], "Frame render", "renderFrame shall refresh the temperature at most once per 10 s and choose the banner most urgent first.", (DM, 169), "B")
llr("LD7", N, ["D3"], "Start screen", "display_mgr_init shall start the screen with the band and version shown for 3 s.", (DM, 218), "B")
llr("LD8", N, ["D2"], "Tick", "display_mgr_tick shall render one frame at the current time.", (DM, 230), "B")
N = "record-sw-design"
llr("LR1", N, ["R1", "R3"], "Post", "event_log_post shall stamp the record with the current UTC second, kind and temperatures, and queue it (depth 32, MRTM_ERR_FULL when full).", (EL, 22), "C")
llr("LR2", N, ["R1"], "Store", "event_log_step shall number, checksum and append every queued record, retry a failed append once, and log a flash failure without looping.", (EL, 45), "C")
llr("LR3", N, ["R2"], "Find the head", "history_ring_init shall find the newest valid record in either copy and set the count from it.", (HR, 23), "C")
llr("LR4", N, ["R1", "R5", "R2"], "Append", "history_ring_append shall write copy A then copy B, erasing a sector at its first slot, and log the capacity warning once at 9000 records.", (HR, 47), "C")
llr("LR5", N, ["R4"], "Read", "history_ring_read shall return the first copy whose sequence and CRC-32 match, and log a corrupt record when none does.", (HR, 66), "C")
llr("LR6", N, ["R3"], "Clock start", "rtc_clock_init shall read the clock and log a clock fault when the oscillator-stop flag is set.", (RC, 10), "C")
llr("LR7", N, ["R3"], "Clock read", "rtc_clock_now shall return the last UTC copy read from the clock.", (RC, 23), "C")
llr("LR8", N, ["R3"], "Clock refresh", "rtc_clock_tick shall keep the last UTC copy when a clock read fails.", (RC, 29), "C")
N = "export-sw-design"
llr("LE1", N, ["E1", "ED1"], "Volume start", "usb_export_init shall keep the ring's read accessor and start the mass-storage device.", (UE, 77), "D")
llr("LE2", N, ["E1"], "Sector read", "usb_export_read10 shall render the requested sector of the FAT12 volume from the ring.", (UE, 86), "D")
llr("LE3", N, ["E2"], "Sector write", "usb_export_write10 shall return -1 for every write request.", (UE, 96), "D")

REQS = R

# ======================= Tests: which HLR / LLR each existing test verifies =======================
# DO-178C §6.4: normal-range and robustness tests against HLR and LLR. Unit tests verify the LLR of the
# function they drive plus its HLR; integration tests verify HLR. Test code is unchanged.
TESTS = {
 "test_confirm_sounds_the_buzzer_and_flashes_red_at_2_hz": ["LA12", "LA13", "A8"],
 "test_ack_stops_the_buzzer_in_the_same_step_and_logs": ["LA12", "A9"],
 "test_re_sounds_15_minutes_after_the_ack": ["LA13", "A11"],
 "test_end_returns_to_quiet_from_sounding_and_silenced": ["LA12", "A6"],
 "test_probe_fault_sounds_1_s_on_1_s_off": ["LA13", "A12"],
 "test_no_buzzer_current_for_5_steps_declares_buzzer_fault_red_4_hz": ["LA13", "A13"],
 "test_button_debounce_50_ms": ["LA14", "LA15", "A9"],
 "test_button_held_60_s_is_a_button_fault_and_ignored": ["LA15", "A15"],
 "test_unacknowledged_alarm_is_restored_after_a_restart": ["LA10", "A14"],
 "test_acknowledged_alarm_is_not_restored_as_sounding": ["LA10", "A14"],
 "test_battery_low_or_fail_safe_forces_the_buzzer": ["LA13", "A16"],
 "test_heartbeat_moves_on_every_step": ["LA16", "A10"],
 "test_error_codes_full_and_nvs": ["LA10", "LA11"],
 "test_early_alarm_is_red_1_hz_without_buzzer_then_escalates": ["LA12", "LA13", "A7"],
 "test_early_alarm_clears_back_to_quiet": ["LA12", "A7"],
 "test_valid_record_loads_the_2_to_8_degree_band": ["LP4", "P4"],
 "test_bad_crc_is_refused_with_err_crc": ["LP4", "P4"],
 "test_missing_record_is_err_nvs": ["LP4"],
 "test_band_outside_2_to_8_is_refused": ["LP4", "LP5"],
 "test_store_writes_a_fresh_crc_and_logs_config_changed": ["LP5"],
 "test_int01_excursion_chain": ["A5", "A8", "D1", "R1"],
 "test_int02_watchdog_chain": ["P1", "A10"],
 "test_int03_corrupt_config_fail_safe": ["P4", "P8"],
 "test_int04_restart_restores_the_alarm": ["A14", "P8"],
 "test_int05_power_loss_logged_within_1_s": ["P5", "R1"],
 "test_good_scratchpad_gives_a_valid_sample": ["LA3", "A1"],
 "test_bad_crc_is_invalid_but_not_out_of_range": ["LA3", "A2"],
 "test_reading_outside_minus30_to_50_declares_the_fault_at_once": ["LA3", "LA4", "A2", "A3"],
 "test_fault_after_30_s_without_a_correct_crc": ["LA4", "A3"],
 "test_fault_clears_on_the_next_valid_sample": ["LA4", "A3"],
 "test_conversion_rounds_to_a_tenth_and_adds_the_offset": ["LA2"],
 "test_error_codes_arg_and_bus": ["LA1", "LA3"],
 "test_band_and_version_shown_in_the_first_3_s": ["LD7", "D3"],
 "test_excursion_warning_for_the_whole_excursion": ["LD3", "LD6", "D1"],
 "test_probe_fault_message": ["LD3", "D1"],
 "test_calibration_due_and_log_capacity_messages": ["LD3", "D4"],
 "test_temperature_refreshes_every_10_s_in_tenths": ["LD2", "LD6", "D2"],
 "test_battery_shown_in_steps_of_10_percent": ["LD4", "D4"],
 "test_i2c_timeout_resets_the_bus_within_1_s": ["LD5", "D5"],
 "test_mains_loss_and_restore_are_logged_from_the_edge": ["LP7", "P5"],
 "test_battery_below_3400_mv_twice_sounds_the_buzzer": ["LP8", "P6"],
 "test_boot_sector_is_a_fat12_volume": ["LE2", "E1"],
 "test_history_csv_is_marked_read_only": ["LE2", "E1"],
 "test_every_write_is_refused": ["LE3", "E2"],
 "test_csv_lines_oldest_first_newest_last": ["LE2"],
 "test_unreadable_record_is_a_corrupt_line": ["LE2"],
 "test_full_history_fits_and_fat_chain_ends": ["LE2", "E1"],
 "test_power_up_tests_pass_inside_their_windows": ["LP3", "P3"],
 "test_silent_buzzer_fails_the_power_up_test": ["LP3", "P3"],
 "test_backup_alarm_not_heard_fails_and_pulses_resume": ["LP3", "P3"],
 "test_nth_consecutive_out_sample_confirms": ["LA8", "A5"],
 "test_n_minus_one_out_then_one_in_does_not_confirm": ["LA8", "A5"],
 "test_first_out_sample_raises_the_early_alarm": ["LA8", "A4"],
 "test_back_in_band_clears_the_early_alarm": ["LA8", "A4"],
 "test_early_alarm_budget_fits_5_s": ["LA8", "A4", "A5"],
 "test_invalid_sample_neither_counts_nor_resets": ["LA8", "A5"],
 "test_band_edges_two_and_eight_degrees_are_inside": ["LA7", "LA8"],
 "test_nth_consecutive_in_sample_ends_excursion": ["LA8", "A6"],
 "test_out_sample_restarts_the_in_run": ["LA8", "A6"],
 "test_hysteresis_knob_is_zero": ["LA7"],
 "test_peak_is_the_most_extreme_sample": ["LA9", "A6"],
 "test_peak_below_band_counts_distance_downwards": ["LA9"],
 "test_oscillator_stop_at_power_up_logs_clock_fault": ["LR6", "R3"],
 "test_now_is_the_rtc_copy_refreshed_each_second": ["LR7", "LR8", "R3"],
 "test_error_codes_bus_and_arg": ["LR6"],
 "test_task_watchdog_armed_at_5_s": ["LP1", "P2"],
 "test_pulses_while_the_heartbeat_moves": ["LP2", "P1"],
 "test_pulses_stop_within_2_s_of_a_missed_alarm_cycle": ["LP2", "P1"],
 "test_hold_stops_pulses_and_release_resumes": ["LP2", "P3"],
 "test_time_stamp_is_the_utc_second_of_the_post": ["LR1", "R3"],
 "test_end_record_carries_the_peak_in_tenths": ["LR1"],
 "test_step_numbers_checksums_and_stores_every_queued_record": ["LR2", "R1"],
 "test_error_code_full_after_32": ["LR1"],
 "test_flash_failure_does_not_loop": ["LR2"],
 "test_append_writes_copy_a_and_copy_b": ["LR4", "R1"],
 "test_retains_10000_records_after_wrapping": ["LR4", "R2"],
 "test_retains_10000_straight_after_an_erase_ahead": ["LR4", "R2"],
 "test_corrupt_copy_a_is_read_from_copy_b": ["LR5", "R4"],
 "test_both_copies_corrupt_reports_err_crc_and_logs_it": ["LR5", "R4"],
 "test_capacity_warning_once_at_9000": ["LR4", "R5"],
 "test_init_finds_the_head_again_after_a_restart": ["LR3", "R2"],
 "test_error_codes_flash_arg": ["LR4"],
 "test_crc_check_values": ["LA5", "LP6"],
 "test_crc8_over_a_scratchpad": ["LA5", "A2"],
}
