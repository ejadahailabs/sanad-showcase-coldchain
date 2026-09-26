# Data Dictionary

The MRTM parameter dictionary, in Sanad's data-dictionary format (`producers.dataDictionary`).
Each `##` heading is one parameter. Values are SYNTHETIC and owner-to-confirm (ASSUMPTIONS A-04).

## Allowed Band Lower Limit
Software: band_low_tenths
Aliases: lower limit
Type: temperature
Units: degC
Range: 2..2

The coldest temperature that is still inside the allowed band.

## Allowed Band Upper Limit
Software: band_high_tenths
Aliases: upper limit
Type: temperature
Units: degC
Range: 8..8

The warmest temperature that is still inside the allowed band.

## Sampling Period
Software: MRTM_SAMPLE_PERIOD_MS
Aliases: sample period
Type: duration
Units: s
Range: 2..2

The time between two samples.

## Excursion Confirmation Time
Software: MRTM_CONFIRM_SAMPLES
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
Software: MRTM_LOG_CAPACITY
Aliases: log capacity
Type: count
Units: events
Range: 10000..10000

The number of events the event log holds before the oldest must be exported.

<!-- Phase 8 (DOGFOOD-4): error codes, event kinds and records — IEC 62304 §5.4.2/§5.4.3. Same values as MrtmSwCodes.sysml (enum defs). -->

## Error Code
Aliases: error, result code
Type: enumeration
Software: mrtm_err_t
Values: MRTM_OK, MRTM_ERR_ARG, MRTM_ERR_TIMEOUT, MRTM_ERR_CRC, MRTM_ERR_RANGE, MRTM_ERR_BUS, MRTM_ERR_FLASH, MRTM_ERR_NVS, MRTM_ERR_FULL, MRTM_ERR_STATE, MRTM_ERR_HW
Defined by: 06-design/software/MrtmSwCodes.sysml

What a firmware function returns. 0 means done; every other value names what went wrong:

- `MRTM_OK` = 0 — Done, nothing wrong.
- `MRTM_ERR_ARG` = 1 — A caller passed a bad argument (NULL pointer, value out of range).
- `MRTM_ERR_TIMEOUT` = 2 — A bus or queue did not answer in time.
- `MRTM_ERR_CRC` = 3 — A checksum did not match (probe scratchpad, log record, stored config).
- `MRTM_ERR_RANGE` = 4 — A reading is outside what the part can physically report (-30..50 degC).
- `MRTM_ERR_BUS` = 5 — A 1-Wire or I2C transaction failed.
- `MRTM_ERR_FLASH` = 6 — A flash erase or write failed.
- `MRTM_ERR_NVS` = 7 — The stored configuration is missing or unreadable.
- `MRTM_ERR_FULL` = 8 — A queue is full; the item was not taken.
- `MRTM_ERR_STATE` = 9 — Called in the wrong mode (for example before init).
- `MRTM_ERR_HW` = 10 — A hardware self-test failed (buzzer current, backup alarm, RTC).

## Event Kind
Aliases: event type
Type: enumeration
Software: mrtm_event_kind_t
Values: MRTM_EV_EXCURSION_START, MRTM_EV_EXCURSION_END, MRTM_EV_ACK, MRTM_EV_POWER_LOSS, MRTM_EV_POWER_RESTORE, MRTM_EV_PROBE_FAULT, MRTM_EV_PROBE_RECOVERED, MRTM_EV_BUZZER_FAULT, MRTM_EV_BUTTON_FAULT, MRTM_EV_CLOCK_FAULT, MRTM_EV_CONFIG_CRC_FAULT, MRTM_EV_SELF_TEST_PASS, MRTM_EV_SELF_TEST_FAIL, MRTM_EV_LOW_BATTERY, MRTM_EV_WATCHDOG_RESTART, MRTM_EV_LOG_RECORD_CORRUPT, MRTM_EV_LOG_CAPACITY_WARNING, MRTM_EV_CONFIG_CHANGED, MRTM_EV_I2C_BUS_RESET, MRTM_EV_REALARM
Defined by: 06-design/software/MrtmSwCodes.sysml

What one record in the history is about. Stored in every Event Record:

- `MRTM_EV_EXCURSION_START` = 1 — An excursion was confirmed. (MRTM-SYS-008)
- `MRTM_EV_EXCURSION_END` = 2 — An excursion ended; the record carries the peak. (MRTM-SYS-009)
- `MRTM_EV_ACK` = 3 — Staff pressed the acknowledge button during an alarm. (MRTM-SYS-010)
- `MRTM_EV_POWER_LOSS` = 4 — Mains power was lost. (MRTM-SAF-005)
- `MRTM_EV_POWER_RESTORE` = 5 — Mains power came back. (MRTM-SYS-023)
- `MRTM_EV_PROBE_FAULT` = 6 — The probe fault was declared. (MRTM-SYS-012)
- `MRTM_EV_PROBE_RECOVERED` = 7 — Good samples arrived again after a probe fault. (MRTM-SYS-012)
- `MRTM_EV_BUZZER_FAULT` = 8 — The buzzer drew too little current while driven. (MRTM-SAF-014)
- `MRTM_EV_BUTTON_FAULT` = 9 — The acknowledge button stayed pressed for 60 s. (MRTM-SAF-019)
- `MRTM_EV_CLOCK_FAULT` = 10 — The RTC reported an oscillator stop at power-up. (MRTM-SAF-022)
- `MRTM_EV_CONFIG_CRC_FAULT` = 11 — The stored allowed band failed its CRC-32 check. (MRTM-SAF-017)
- `MRTM_EV_SELF_TEST_PASS` = 12 — All power-up tests passed. (MRTM-SAF-007)
- `MRTM_EV_SELF_TEST_FAIL` = 13 — A power-up test failed; the record's value says which. (MRTM-SAF-023)
- `MRTM_EV_LOW_BATTERY` = 14 — The battery fell below 3.4 V. (MRTM-SAF-008)
- `MRTM_EV_WATCHDOG_RESTART` = 15 — The firmware restarted after a software watchdog timeout. (MRTM-SAF-004)
- `MRTM_EV_LOG_RECORD_CORRUPT` = 16 — A log record failed its CRC-32 when read. (MRTM-SYS-021)
- `MRTM_EV_LOG_CAPACITY_WARNING` = 17 — The log reached 9000 records. (MRTM-SYS-022)
- `MRTM_EV_CONFIG_CHANGED` = 18 — A technician stored a new configuration. (MRTM-SAF-017)
- `MRTM_EV_I2C_BUS_RESET` = 19 — The I2C bus was reset after a timeout. (MRTM-SAF-021)
- `MRTM_EV_REALARM` = 20 — The buzzer sounded again 15 min after an acknowledgement. (MRTM-SYS-019)

## Event Record
Aliases: log record, history record
Type: record
Units: bytes
Range: 32..32
Software: event_record_t
Defined by: 06-design/software/MrtmSoftware.sysml

One entry in the history: sequence number, UTC second, event kind, temperature, peak temperature, CRC-32. Written twice (copy A and copy B).

## Monitor Configuration
Aliases: config record
Type: record
Software: mrtm_config_t
Defined by: 06-design/software/MrtmSoftware.sysml

The values a technician may set (allowed band, probe offset, calibration date), stored in NVS with a CRC-32.

## Heartbeat Timeout
Aliases: alarm heartbeat limit
Type: duration
Units: ms
Range: 2000..2000
Software: MRTM_HEARTBEAT_MAX_MS

How old the alarm task's last beat may be before the watchdog pulses stop.

## Re-alarm Delay
Aliases: realarm delay
Type: duration
Units: min
Range: 15..15
Software: MRTM_REALARM_MS

How long after an acknowledgement the buzzer sounds again while the excursion continues.

## Probe Fault Timeout
Type: duration
Units: s
Range: 30..30
Software: MRTM_PROBE_FAULT_S

How long with no good sample before the probe fault is declared.

## Battery Low Threshold
Type: voltage
Units: mV
Range: 3400..3400
Software: MRTM_BATTERY_LOW_MV

The battery voltage below which the low-battery alarm sounds.
