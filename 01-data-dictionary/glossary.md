# Glossary

The MRTM concept glossary, in Sanad's glossary format (`producers.glossary`).
Each `##` heading is one term. `Aliases:` are other words people use for it.
The rest is the meaning, in plain words. Synthetic project.

## Excursion
Aliases: temperature excursion, out-of-band event

A period during which the measured fridge temperature is outside the allowed band.
It starts with the first sample outside the band and ends with the first sample back inside it.

## Allowed Band
Aliases: allowed range, safe band

The temperature range in which the stored medicines stay usable.
It has a lower limit and an upper limit (see the data dictionary).

## Alert
Aliases: alarm

The loud and bright signal (buzzer and red light) the monitor gives when an excursion is confirmed.
An alert asks a person to act now.

## Warning
Aliases: on-screen warning

The message on the monitor's screen that says which way the temperature went wrong and since when.
A warning explains; an alert calls.

## Event
Aliases: logged event

One entry the monitor writes to its event log, with a time stamp.
Examples: excursion start, excursion end, acknowledgement, power loss, probe fault.

## Event Log
Aliases: log

The ordered list of every event the monitor has recorded.
Nothing is ever removed from it by a user.

## Excursion History
Aliases: history

The list of every excursion with its start time, end time, peak temperature and acknowledgement.
It is built from the event log.

## Acknowledgement
Aliases: acknowledge, ack

A person pressing the acknowledge button to say "I have seen this alert".
It silences the buzzer; it does not end the excursion.

## Temperature Probe
Aliases: probe, sensor

The part that sits inside the fridge and measures its air temperature.

## Sample
Aliases: reading, temperature sample

One temperature value read from the probe at one moment.
