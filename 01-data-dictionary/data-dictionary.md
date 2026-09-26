# Data Dictionary

The MRTM parameter dictionary, in Sanad's data-dictionary format (`producers.dataDictionary`).
Each `##` heading is one parameter. Values are SYNTHETIC and owner-to-confirm (ASSUMPTIONS A-04).

## Allowed Band Lower Limit
Aliases: lower limit
Type: temperature
Units: degC
Range: 2..2

The coldest temperature that is still inside the allowed band.

## Allowed Band Upper Limit
Aliases: upper limit
Type: temperature
Units: degC
Range: 8..8

The warmest temperature that is still inside the allowed band.

## Sampling Period
Aliases: sample period
Type: duration
Units: s
Range: 10..10

The time between two samples.

## Excursion Confirmation Time
Aliases: confirmation time
Type: duration
Units: s
Range: 60..60

How long consecutive samples must stay outside the allowed band before an excursion is confirmed.
It stops a door opened for a moment from raising an alert.

## Measurement Accuracy
Aliases: accuracy
Type: temperature
Units: degC
Range: 0..0.5

The largest difference allowed between a sample and the true air temperature.

## Event Log Capacity
Aliases: log capacity
Type: count
Units: events
Range: 10000..10000

The number of events the event log holds before the oldest must be exported.
