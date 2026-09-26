# Glossary

The MRTM concept glossary, in Sanad's glossary format (`producers.glossary`).
Each `##` heading is one term. `Aliases:` are other words people use for it.
The rest is the meaning, in plain words. Synthetic project.

## Excursion
Defined by: MRTM-SYS-002
Aliases: temperature excursion, out-of-band event

A period during which the measured fridge temperature is outside the allowed band.
It starts with the first sample outside the band. It ends when the excursion end is confirmed (MRTM-SYS-018, review round 1 T08).

## Allowed Band
Defined by: MRTM-STK-001
Aliases: allowed range, safe band

The temperature range in which the stored medicines stay usable.
It has a lower limit and an upper limit (see the data dictionary).

## Alert
Defined by: MRTM-STK-001
Aliases: alarm

The loud and bright signal (buzzer and red light) the monitor gives when an excursion is confirmed.
An alert asks a person to act now.

## Warning
Defined by: MRTM-SYS-005
Aliases: on-screen warning

The message on the monitor's screen that says which way the temperature went wrong and since when.
A warning explains; an alert calls.

## Event
Defined by: MRTM-SYS-008
Aliases: logged event

One entry the monitor writes to its event log, with a time stamp.
Examples: excursion start, excursion end, acknowledgement, power loss, probe fault.

## Event Log
Defined by: MRTM-SYS-015
Aliases: log

The ordered list of every event the monitor has recorded.
Nothing is ever removed from it by a user.

## Excursion History
Defined by: MRTM-STK-005
Aliases: history

The list of every excursion with its start time, end time, peak temperature and acknowledgement.
It is built from the event log.

## Acknowledgement
Defined by: MRTM-SYS-006
Aliases: acknowledge, ack

A person pressing the acknowledge button to say "I have seen this alert".
It silences the buzzer; it does not end the excursion.

## Temperature Probe
Defined by: MRTM-IFC-001
Aliases: probe, sensor

The part that sits inside the fridge and measures its air temperature.

## Sample
Defined by: MRTM-SYS-001
Aliases: reading, temperature sample

One temperature value read from the probe at one moment.
