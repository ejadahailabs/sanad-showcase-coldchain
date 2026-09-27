package ProjectRequirements {
    comment /* GENERATED from the Markdown requirement corpus at 893b706dc64e186f.
       Read-only: edit the Markdown requirement, not this file. Sanad regenerates it on
       every corpus change and the same corpus always gives byte-identical text. */
    private import RequirementDerivation::*;

    requirement <'MRTM-ENV-001'> MRTM_ENV_001 {
        doc /* The monitor shall operate from the internal battery for 4 h. */
    }

    requirement <'MRTM-ENV-002'> MRTM_ENV_002 {
        doc /* The monitor shall operate at an ambient temperature from 10 °C to 35 °C. */
    }

    requirement <'MRTM-ENV-003'> MRTM_ENV_003 {
        doc /* The monitor shall operate at a relative humidity from 15 % to 85 % non-condensing. */
    }

    requirement <'MRTM-ENV-004'> MRTM_ENV_004 {
        doc /* The temperature probe shall operate at a fridge air temperature from -30 °C to 50 °C. */
    }

    requirement <'MRTM-FUN-001'> MRTM_FUN_001 {
        doc /* The monitor shall measure the fridge air temperature and show whether the measurement can be trusted. */
    }

    requirement <'MRTM-FUN-002'> MRTM_FUN_002 {
        doc /* The monitor shall warn clinic staff when the fridge air stays outside the allowed band longer than the confirmation time. */
    }

    requirement <'MRTM-FUN-003'> MRTM_FUN_003 {
        doc /* The monitor shall let clinic staff silence an excursion warning without ending the watch on the excursion. */
    }

    requirement <'MRTM-FUN-004'> MRTM_FUN_004 {
        doc /* The monitor shall keep a record of every excursion and every alarm event that nobody can change. */
    }

    requirement <'MRTM-FUN-005'> MRTM_FUN_005 {
        doc /* The monitor shall keep watching and warning while the mains power is lost. */
    }

    requirement <'MRTM-HLR-001'> MRTM_HLR_001 {
        doc /* The alarm software item shall start one probe conversion at a period of 2 s and read the scratchpad 750 ms after the start. */
    }

    requirement <'MRTM-HLR-002'> MRTM_HLR_002 {
        doc /* The alarm software item shall mark a sample invalid when its CRC-8 check fails or its value is outside -30 °C to 50 °C. */
    }

    requirement <'MRTM-HLR-003'> MRTM_HLR_003 {
        doc /* The alarm software item shall declare a probe fault at once for an out-of-range sample and after 30 s without a valid sample. */
    }

    requirement <'MRTM-HLR-004'> MRTM_HLR_004 {
        doc /* The alarm software item shall report the early excursion at the first valid sample outside the allowed band. */
    }

    requirement <'MRTM-HLR-005'> MRTM_HLR_005 {
        doc /* The alarm software item shall report the confirmed excursion at the 31st consecutive valid sample outside the allowed band, 60 s after the first of them. */
    }

    requirement <'MRTM-HLR-006'> MRTM_HLR_006 {
        doc /* The alarm software item shall report the excursion end, with its peak, at the 31st consecutive valid sample inside the allowed band. */
    }

    requirement <'MRTM-HLR-007'> MRTM_HLR_007 {
        doc /* The alarm software item shall flash the red indicator at 1 Hz, without the buzzer, within one 1 s alarm cycle of the early excursion report. */
    }

    requirement <'MRTM-HLR-008'> MRTM_HLR_008 {
        doc /* The alarm software item shall switch the buzzer drive on, and the red indicator to 2 Hz, within one 1 s alarm cycle of the confirmed excursion report. */
    }

    requirement <'MRTM-HLR-009'> MRTM_HLR_009 {
        doc /* The alarm software item shall switch the buzzer drive off within one 1 s alarm cycle of an acknowledge press stable for 50 ms. */
    }

    requirement <'MRTM-HLR-010'> MRTM_HLR_010 {
        doc /* The alarm software item shall advance its heartbeat counter once per 1 s alarm cycle. */
    }

    requirement <'MRTM-HLR-011'> MRTM_HLR_011 {
        doc /* The alarm software item shall switch the buzzer drive on again 15 min after an acknowledge while the excursion is still open. */
    }

    requirement <'MRTM-HLR-012'> MRTM_HLR_012 {
        doc /* While a probe fault is declared, the alarm software item shall drive the buzzer 1 s on and 1 s off. */
    }

    requirement <'MRTM-HLR-013'> MRTM_HLR_013 {
        doc /* When the buzzer draws no current for 5 consecutive alarm cycles while driven, the alarm software item shall flash the red indicator at 4 Hz and log a buzzer fault. */
    }

    requirement <'MRTM-HLR-014'> MRTM_HLR_014 {
        doc /* The alarm software item shall sound an unacknowledged excursion alarm again within 2 s of a restart. */
    }

    requirement <'MRTM-HLR-015'> MRTM_HLR_015 {
        doc /* The alarm software item shall ignore an acknowledge press held for 60 s until release, and shall drive the buzzer while a fail-safe or battery-low signal is set. */
    }

    requirement <'MRTM-HLR-016'> MRTM_HLR_016 {
        doc /* The platform software item shall stop the watchdog service pulses within 2 s of the alarm heartbeat stopping. */
    }

    requirement <'MRTM-HLR-017'> MRTM_HLR_017 {
        doc /* The platform software item shall restart the monitoring software within 2 s of a task watchdog timeout. */
    }

    requirement <'MRTM-HLR-018'> MRTM_HLR_018 {
        doc /* The platform software item shall test the buzzer within 5 s and the backup alarm within 15 s of power-up. */
    }

    requirement <'MRTM-HLR-019'> MRTM_HLR_019 {
        doc /* The platform software item shall set the allowed band only from a stored band that passes its CRC-32 check, and shall enter fail-safe otherwise. */
    }

    requirement <'MRTM-HLR-020'> MRTM_HLR_020 {
        doc /* The platform software item shall post the mains-lost and mains-restored events within 1 s of the mains sense edge. */
    }

    requirement <'MRTM-HLR-021'> MRTM_HLR_021 {
        doc /* The platform software item shall post the battery-low signal after 2 consecutive battery readings below 3.4 V. */
    }

    requirement <'MRTM-HLR-022'> MRTM_HLR_022 {
        doc /* The platform software item shall set the calibration-due flag 365 days after the stored calibration date and the log-capacity flag at 9000 records. */
    }

    requirement <'MRTM-HLR-023'> MRTM_HLR_023 {
        doc /* At power-up the platform software item shall restore the alarm state, read the clock and the band, and start monitoring only after the power-up tests pass. */
    }

    #derive requirement <'MRTM-HLR-024'> MRTM_HLR_024 {
        doc /* The platform software item shall run the alarm, supervisor and sensor tasks on core 1 at priorities 18 to 22, above every task of the display, record and export software items. */
    }

    requirement <'MRTM-HLR-025'> MRTM_HLR_025 {
        doc /* The display software item shall show the excursion warning for the whole excursion and the probe fault message within 1 s of the state change. */
    }

    requirement <'MRTM-HLR-026'> MRTM_HLR_026 {
        doc /* The display software item shall show the temperature at 0.1 °C resolution in digits 32 pixels tall and change it at most once per 10 s. */
    }

    requirement <'MRTM-HLR-027'> MRTM_HLR_027 {
        doc /* The display software item shall show the allowed band and the firmware version for the first 3 s after power-up. */
    }

    requirement <'MRTM-HLR-028'> MRTM_HLR_028 {
        doc /* The display software item shall show the calibration-due and log-capacity messages when their flags are set, and the battery level in steps of 10 %. */
    }

    requirement <'MRTM-HLR-029'> MRTM_HLR_029 {
        doc /* The display software item shall recover the display bus within 1 s of a 100 ms bus timeout. */
    }

    requirement <'MRTM-HLR-030'> MRTM_HLR_030 {
        doc /* The record software item shall write each event record with its CRC-32 to 2 separate flash sectors within 1 s of the event. */
    }

    requirement <'MRTM-HLR-031'> MRTM_HLR_031 {
        doc /* When the event log holds 10000 records, the record software item shall write each new record over the oldest one. */
    }

    requirement <'MRTM-HLR-032'> MRTM_HLR_032 {
        doc /* The record software item shall time-stamp each record with UTC at 1 s resolution and log a clock fault when the clock oscillator has stopped. */
    }

    requirement <'MRTM-HLR-033'> MRTM_HLR_033 {
        doc /* The record software item shall read a record from whichever copy passes its CRC-32 check and log a corrupt-record event when neither does. */
    }

    requirement <'MRTM-HLR-034'> MRTM_HLR_034 {
        doc /* The record software item shall log one capacity-warning event when the event log reaches 9000 records. */
    }

    requirement <'MRTM-HLR-035'> MRTM_HLR_035 {
        doc /* The export software item shall present the event log as a read-only mass-storage volume within 30 s of connection. */
    }

    requirement <'MRTM-HLR-036'> MRTM_HLR_036 {
        doc /* When the USB host sends a write request, the export software item shall refuse the write. */
    }

    #derive requirement <'MRTM-HLR-037'> MRTM_HLR_037 {
        doc /* The export software item shall read the event log only through the record software item's read accessor. */
    }

    requirement <'MRTM-HWR-001'> MRTM_HWR_001 {
        doc /* The sensor hardware item shall complete a 12-bit temperature conversion within 750 ms. */
    }

    requirement <'MRTM-HWR-002'> MRTM_HWR_002 {
        doc /* The sensor hardware item shall read the air temperature with an accuracy of ±0.5 °C from -10 °C to 50 °C. */
    }

    requirement <'MRTM-HWR-003'> MRTM_HWR_003 {
        doc /* The sensor hardware item shall send a CRC-8 value with every scratchpad read. */
    }

    requirement <'MRTM-HWR-004'> MRTM_HWR_004 {
        doc /* The alarm hardware item shall produce a sound pressure level of 65 dB(A) or more at 1 m when either buzzer drive input is active. */
    }

    requirement <'MRTM-HWR-005'> MRTM_HWR_005 {
        doc /* The alarm hardware item shall switch the red indicator within 10 ms of a change of its drive input. */
    }

    requirement <'MRTM-HWR-006'> MRTM_HWR_006 {
        doc /* While a clinic staff member presses the acknowledge button, the alarm hardware item shall close the acknowledge contact. */
    }

    requirement <'MRTM-HWR-007'> MRTM_HWR_007 {
        doc /* The alarm hardware item shall assert the backup timeout 9 s ± 0.9 s after the last watchdog service pulse. */
    }

    requirement <'MRTM-HWR-008'> MRTM_HWR_008 {
        doc /* The alarm hardware item shall drive the buzzer backup input within 100 ms of the backup timeout. */
    }

    requirement <'MRTM-HWR-009'> MRTM_HWR_009 {
        doc /* The alarm hardware item shall supply the backup timer and the backup driver for 60 s or more after all power is lost. */
    }

    requirement <'MRTM-HWR-010'> MRTM_HWR_010 {
        doc /* The controller hardware item shall reset the processor within 1 s of its hardware watchdog expiry. */
    }

    requirement <'MRTM-HWR-011'> MRTM_HWR_011 {
        doc /* The controller hardware item shall keep UTC time with a drift of 2 s per day or less from 10 °C to 35 °C. */
    }

    requirement <'MRTM-HWR-012'> MRTM_HWR_012 {
        doc /* The power hardware item shall switch the load from mains to battery within 100 ms of mains loss. */
    }

    requirement <'MRTM-HWR-013'> MRTM_HWR_013 {
        doc /* The power hardware item shall store 2000 mAh or more at 3.7 V nominal. */
    }

    requirement <'MRTM-HWR-014'> MRTM_HWR_014 {
        doc /* The display hardware item shall draw the temperature digits at a character height of 5 mm or more. */
    }

    requirement <'MRTM-IFC-001'> MRTM_IFC_001 {
        doc /* The monitor shall read the temperature probe over a 1-Wire bus. */
    }

    requirement <'MRTM-IFC-002'> MRTM_IFC_002 {
        doc /* The monitor shall debounce the acknowledge button input for 50 ms. */
    }

    requirement <'MRTM-IFC-003'> MRTM_IFC_003 {
        doc /* The monitor shall present the event log to the USB host as a read-only mass-storage volume. */
    }

    requirement <'MRTM-IFC-004'> MRTM_IFC_004 {
        doc /* The monitor shall draw the temperature digits at a character height of 5 mm or more. */
    }

    requirement <'MRTM-LLR-001'> MRTM_LLR_001 {
        doc /* sensor_sampler_init shall reset the 1-Wire bus and start the first conversion, and shall return MRTM_ERR_BUS when either step fails. */
    }

    requirement <'MRTM-LLR-002'> MRTM_LLR_002 {
        doc /* sensor_sampler_to_tenths shall convert the raw 12-bit value in 1/16 °C to tenths of a degree, rounding half away from zero, and add the calibrated offset. */
    }

    requirement <'MRTM-LLR-003'> MRTM_LLR_003 {
        doc /* sensor_sampler_read shall read the scratchpad, start the next conversion, and return the sample invalid when the CRC-8 differs or the value is outside -300 to 500 tenths. */
    }

    requirement <'MRTM-LLR-004'> MRTM_LLR_004 {
        doc /* sensor_sampler_probe_fault shall return true when the last sample was out of range or when 30 s have passed since the last valid sample. */
    }

    requirement <'MRTM-LLR-005'> MRTM_LLR_005 {
        doc /* mrtm_crc8_maxim shall compute the Dallas/Maxim CRC-8 (reflected polynomial 0x8C, initial value 0) over the bytes given. */
    }

    requirement <'MRTM-LLR-006'> MRTM_LLR_006 {
        doc /* In monitoring mode, app_sensor_step shall read one sample, post probe fault or recovered on a change, and post the limit event of that sample to the alarm manager in the same step. */
    }

    requirement <'MRTM-LLR-007'> MRTM_LLR_007 {
        doc /* limit_evaluator_init shall set the low and high band limits from the loaded band and the hysteresis to 0. */
    }

    requirement <'MRTM-LLR-008'> MRTM_LLR_008 {
        doc /* limit_evaluator_step shall ignore an invalid sample, return EARLY at the first valid out-of-band sample, CONFIRMED at the 31st consecutive one, and ENDED at the 31st consecutive in-band sample of an excursion. */
    }

    requirement <'MRTM-LLR-009'> MRTM_LLR_009 {
        doc /* limit_evaluator_peak shall return the sample of the excursion farthest outside the band. */
    }

    requirement <'MRTM-LLR-010'> MRTM_LLR_010 {
        doc /* alarm_mgr_init shall restore state SOUNDING when NVS key 'alarm' holds SOUNDING, and QUIET otherwise. */
    }

    requirement <'MRTM-LLR-011'> MRTM_LLR_011 {
        doc /* alarm_mgr_post shall queue the signal (depth 8, MRTM_ERR_FULL when full) and wake the alarm task at once. */
    }

    requirement <'MRTM-LLR-012'> MRTM_LLR_012 {
        doc /* take shall apply one AlarmStates transition per signal: early from quiet, early cleared, confirm from quiet or early, ack from sounding, end from sounding or silenced, probe fault from any monitoring state, probe recovered. */
    }

    requirement <'MRTM-LLR-013'> MRTM_LLR_013 {
        doc /* alarm_mgr_step shall drive the outputs of the current state (early: red 1 Hz; sounding: buzzer and red 2 Hz; probe fault: buzzer 1 s on 1 s off; buzzer fault: red 4 Hz), re-sound 15 min after an ack, and declare a buzzer fault after 5 steps with no buzzer current. */
    }

    requirement <'MRTM-LLR-014'> MRTM_LLR_014 {
        doc /* alarm_mgr_button_isr shall re-arm a 50 ms one-shot timer on every button edge. */
    }

    requirement <'MRTM-LLR-015'> MRTM_LLR_015 {
        doc /* alarm_mgr_button_debounced shall post ACK once for a press still stable after 50 ms, and nothing while the button is declared stuck. */
    }

    requirement <'MRTM-LLR-016'> MRTM_LLR_016 {
        doc /* alarm_mgr_heartbeat shall return the step counter that alarm_mgr_step advances by one at the end of every step. */
    }

    requirement <'MRTM-LLR-017'> MRTM_LLR_017 {
        doc /* wdt_kicker_init shall arm the task watchdog at 5 s with a panic restart. */
    }

    requirement <'MRTM-LLR-018'> MRTM_LLR_018 {
        doc /* wdt_kicker_step shall pulse the external watchdog only while the heartbeat changed within the last 2000 ms and the pulses are not held. */
    }

    requirement <'MRTM-LLR-019'> MRTM_LLR_019 {
        doc /* diagnostics_power_up shall drive the buzzer 200 ms and check its current (unless an alarm is sounding), hold the watchdog pulses up to 12 s until the backup alarm is sensed, and log the result. */
    }

    requirement <'MRTM-LLR-020'> MRTM_LLR_020 {
        doc /* config_mgr_load shall return the stored band only when its CRC-32 matches and 2.0 °C ≤ low < high ≤ 8.0 °C, and an error otherwise. */
    }

    requirement <'MRTM-LLR-021'> MRTM_LLR_021 {
        doc /* config_mgr_store shall refuse a band outside the limits, store a valid band with a fresh CRC-32 and log the change. */
    }

    requirement <'MRTM-LLR-022'> MRTM_LLR_022 {
        doc /* mrtm_crc32 shall compute the IEEE CRC-32 (reflected polynomial 0xEDB88320, initial and final XOR 0xFFFFFFFF). */
    }

    requirement <'MRTM-LLR-023'> MRTM_LLR_023 {
        doc /* power_mon_isr shall post a power-loss or power-restore event on each change of the mains sense line. */
    }

    requirement <'MRTM-LLR-024'> MRTM_LLR_024 {
        doc /* power_mon_step shall post the battery-low signal once after 2 consecutive readings below 3400 mV. */
    }

    requirement <'MRTM-LLR-025'> MRTM_LLR_025 {
        doc /* app_power_up shall restore the alarm, read the clock and the band, enter fail-safe with the buzzer on when the band load fails, and enter monitoring only when the power-up tests pass. */
    }

    requirement <'MRTM-LLR-026'> MRTM_LLR_026 {
        doc /* app_supervisor_step shall refresh the clock, gate the watchdog pulse on the alarm heartbeat, and set the calibration-due and log-capacity flags. */
    }

    requirement <'MRTM-LLR-027'> MRTM_LLR_027 {
        doc /* app_display_step shall copy the alarm state into the view and redraw the frame. */
    }

    requirement <'MRTM-LLR-028'> MRTM_LLR_028 {
        doc /* The temperature widget shall draw three 7-segment digits 32 pixels tall with a decimal point, and '---' for an invalid sample. */
    }

    requirement <'MRTM-LLR-029'> MRTM_LLR_029 {
        doc /* The banner widget shall draw the most urgent message as an inverted bar 16 pixels high. */
    }

    requirement <'MRTM-LLR-030'> MRTM_LLR_030 {
        doc /* The battery widget shall show the level in steps of 10 %. */
    }

    requirement <'MRTM-LLR-031'> MRTM_LLR_031 {
        doc /* After a 100 ms bus timeout the display driver shall send 9 clock pulses and re-initialise the panel. */
    }

    requirement <'MRTM-LLR-032'> MRTM_LLR_032 {
        doc /* renderFrame shall refresh the temperature at most once per 10 s and choose the banner most urgent first. */
    }

    requirement <'MRTM-LLR-033'> MRTM_LLR_033 {
        doc /* display_mgr_init shall start the screen with the band and version shown for 3 s. */
    }

    requirement <'MRTM-LLR-034'> MRTM_LLR_034 {
        doc /* display_mgr_tick shall render one frame at the current time. */
    }

    requirement <'MRTM-LLR-035'> MRTM_LLR_035 {
        doc /* event_log_post shall stamp the record with the current UTC second, kind and temperatures, and queue it (depth 32, MRTM_ERR_FULL when full). */
    }

    requirement <'MRTM-LLR-036'> MRTM_LLR_036 {
        doc /* event_log_step shall number, checksum and append every queued record, retry a failed append once, and log a flash failure without looping. */
    }

    requirement <'MRTM-LLR-037'> MRTM_LLR_037 {
        doc /* history_ring_init shall find the newest valid record in either copy and set the count from it. */
    }

    requirement <'MRTM-LLR-038'> MRTM_LLR_038 {
        doc /* history_ring_append shall write copy A then copy B, erasing a sector at its first slot, and log the capacity warning once at 9000 records. */
    }

    requirement <'MRTM-LLR-039'> MRTM_LLR_039 {
        doc /* history_ring_read shall return the first copy whose sequence and CRC-32 match, and log a corrupt record when none does. */
    }

    requirement <'MRTM-LLR-040'> MRTM_LLR_040 {
        doc /* rtc_clock_init shall read the clock and log a clock fault when the oscillator-stop flag is set. */
    }

    requirement <'MRTM-LLR-041'> MRTM_LLR_041 {
        doc /* rtc_clock_now shall return the last UTC copy read from the clock. */
    }

    requirement <'MRTM-LLR-042'> MRTM_LLR_042 {
        doc /* rtc_clock_tick shall refresh the UTC copy and keep the last copy when a read fails. */
    }

    requirement <'MRTM-LLR-043'> MRTM_LLR_043 {
        doc /* usb_export_init shall keep the ring's read accessor and start the mass-storage device. */
    }

    requirement <'MRTM-LLR-044'> MRTM_LLR_044 {
        doc /* usb_export_read10 shall render the requested sector of the FAT12 volume from the ring. */
    }

    requirement <'MRTM-LLR-045'> MRTM_LLR_045 {
        doc /* usb_export_write10 shall return -1 for every write request. */
    }

    requirement <'MRTM-MNT-001'> MRTM_MNT_001 {
        doc /* The monitor shall meet the measurement accuracy with a replacement temperature probe without recalibration. */
    }

    requirement <'MRTM-MNT-002'> MRTM_MNT_002 {
        doc /* The monitor shall show the battery charge level on the display in steps of 10 %. */
    }

    requirement <'MRTM-MNT-003'> MRTM_MNT_003 {
        doc /* The monitor shall show the firmware version on the display for 3 s at power-up. */
    }

    requirement <'MRTM-PRF-001'> MRTM_PRF_001 {
        doc /* The monitor shall measure the fridge air temperature with an accuracy of ±0.5 °C over the range 0 °C to 15 °C. */
    }

    requirement <'MRTM-PRF-002'> MRTM_PRF_002 {
        doc /* The monitor shall sound the buzzer within 65 s of the first sample outside the allowed band. */
    }

    requirement <'MRTM-PRF-003'> MRTM_PRF_003 {
        doc /* The monitor shall deliver the complete event log to the USB host within 30 s. */
    }

    requirement <'MRTM-PRF-004'> MRTM_PRF_004 {
        doc /* The monitor shall refresh the displayed temperature at a period of 10 s. */
    }

    requirement <'MRTM-SAF-001'> MRTM_SAF_001 {
        doc /* The monitor shall sound the buzzer at a sound pressure level of 65 dB(A) or more at 1 m. */
    }

    requirement <'MRTM-SAF-002'> MRTM_SAF_002 {
        doc /* The monitor shall sound the buzzer within 5 s of the probe fault declaration. */
    }

    requirement <'MRTM-SAF-003'> MRTM_SAF_003 {
        doc /* The monitor shall declare the probe fault when a sample falls outside the range -30 °C to 50 °C. */
    }

    requirement <'MRTM-SAF-004'> MRTM_SAF_004 {
        doc /* The monitor shall restart the monitoring software within 2 s of a software watchdog timeout. */
    }

    requirement <'MRTM-SAF-005'> MRTM_SAF_005 {
        doc /* The monitor shall log the power loss event within 1 s of mains power loss. */
    }

    requirement <'MRTM-SAF-006'> MRTM_SAF_006 {
        doc /* The monitor shall restore the unacknowledged alert state within 2 s of the restart. */
    }

    requirement <'MRTM-SAF-007'> MRTM_SAF_007 {
        doc /* The monitor shall test the buzzer within 5 s of power-up. */
    }

    requirement <'MRTM-SAF-008'> MRTM_SAF_008 {
        doc /* The monitor shall sound the buzzer within 5 s of the battery voltage falling below 3.4 V. */
    }

    requirement <'MRTM-SAF-009'> MRTM_SAF_009 {
        doc /* The backup alarm circuit shall sound the buzzer within 10 s of the last watchdog service pulse from the firmware. */
    }

    requirement <'MRTM-SAF-010'> MRTM_SAF_010 {
        doc /* The monitor shall stop the watchdog service pulses within 2 s of the alarm service missing its 1 s cycle. */
    }

    requirement <'MRTM-SAF-011'> MRTM_SAF_011 {
        doc /* The monitor shall sound the probe fault alarm as a buzzer pattern of 1 s on and 1 s off. */
    }

    requirement <'MRTM-SAF-012'> MRTM_SAF_012 {
        doc /* The monitor shall show the probe calibration due message on the display 365 days after the probe calibration date. */
    }

    requirement <'MRTM-SAF-013'> MRTM_SAF_013 {
        doc /* The backup alarm circuit shall sound the buzzer for 60 s or more after the loss of both mains and battery power. */
    }

    requirement <'MRTM-SAF-014'> MRTM_SAF_014 {
        doc /* The monitor shall declare the buzzer fault within 5 s of the buzzer drive current falling below 5 mA while the monitor drives the buzzer. */
    }

    requirement <'MRTM-SAF-015'> MRTM_SAF_015 {
        doc /* The monitor shall flash the red indicator at 4 Hz within 5 s of the buzzer fault declaration. */
    }

    requirement <'MRTM-SAF-016'> MRTM_SAF_016 {
        doc /* The monitor shall show the allowed band limits on the display for 3 s at power-up. */
    }

    requirement <'MRTM-SAF-017'> MRTM_SAF_017 {
        doc /* The monitor shall sound the buzzer within 5 s of power-up when the stored allowed band fails its CRC-32 check. */
    }

    requirement <'MRTM-SAF-018'> MRTM_SAF_018 {
        doc /* The monitor shall write the event log record to 2 separate flash sectors within 1 s of the event. */
    }

    requirement <'MRTM-SAF-019'> MRTM_SAF_019 {
        doc /* The monitor shall declare the button fault when the acknowledge button input stays pressed for 60 s. */
    }

    requirement <'MRTM-SAF-020'> MRTM_SAF_020 {
        doc /* The instructions for use shall state the probe position as the middle of the fridge air space, 5 cm or more from the fridge walls. */
    }

    requirement <'MRTM-SAF-021'> MRTM_SAF_021 {
        doc /* The monitor shall reset the I2C bus within 1 s of an I2C transaction timeout. */
    }

    requirement <'MRTM-SAF-022'> MRTM_SAF_022 {
        doc /* The monitor shall log the clock fault event within 2 s of power-up when the real-time clock reports an oscillator stop. */
    }

    requirement <'MRTM-SAF-023'> MRTM_SAF_023 {
        doc /* The monitor shall test the backup alarm within 15 s of power-up. */
    }

    requirement <'MRTM-SOB-001'> MRTM_SOB_001 {
        doc /* No single failure shall cause the loss of the excursion warning without an alarm signal to clinic staff. */
    }

    requirement <'MRTM-SOB-002'> MRTM_SOB_002 {
        doc /* No single failure shall make the monitor judge the air against a band other than the stored band without an alarm signal. */
    }

    requirement <'MRTM-SOB-003'> MRTM_SOB_003 {
        doc /* The monitor shall bound probe drift by a calibration interval of 365 days and show staff when it has passed. */
    }

    requirement <'MRTM-SOB-004'> MRTM_SOB_004 {
        doc /* The monitor shall not sound the buzzer for an out-of-band period shorter than the 60 s confirmation time. */
    }

    requirement <'MRTM-SOB-005'> MRTM_SOB_005 {
        doc /* No single failure shall lose an excursion record without an event that shows the loss. */
    }

    requirement <'MRTM-STK-001'> MRTM_STK_001 {
        doc /* The monitor shall alert the nurse at the fridge when the fridge air temperature leaves the allowed band. */
    }

    requirement <'MRTM-STK-002'> MRTM_STK_002 {
        doc /* The monitor shall raise no audible alert for the temperature departure shorter than the excursion confirmation time. */
    }

    requirement <'MRTM-STK-003'> MRTM_STK_003 {
        doc /* The monitor shall let the nurse silence the alert. */
    }

    requirement <'MRTM-STK-004'> MRTM_STK_004 {
        doc /* The monitor shall display the current fridge air temperature to the nurse. */
    }

    requirement <'MRTM-STK-005'> MRTM_STK_005 {
        doc /* The monitor shall give the clinic manager the excursion history for audit. */
    }

    requirement <'MRTM-STK-006'> MRTM_STK_006 {
        doc /* The monitor shall protect the excursion history from change by the user. */
    }

    requirement <'MRTM-STK-007'> MRTM_STK_007 {
        doc /* The monitor shall tell the technician when the temperature probe fails. */
    }

    requirement <'MRTM-STK-008'> MRTM_STK_008 {
        doc /* The monitor shall keep monitoring during a mains power loss of up to 4 h. */
    }

    requirement <'MRTM-SYS-001'> MRTM_SYS_001 {
        doc /* The monitor shall sample the fridge air temperature at the sampling period of 2 s. */
    }

    requirement <'MRTM-SYS-002'> MRTM_SYS_002 {
        doc /* The monitor shall confirm the excursion when 31 consecutive samples, spanning 60 s, are outside the allowed band. */
    }

    requirement <'MRTM-SYS-003'> MRTM_SYS_003 {
        doc /* The monitor shall sound the buzzer within 5 s of excursion confirmation. */
    }

    requirement <'MRTM-SYS-004'> MRTM_SYS_004 {
        doc /* The monitor shall flash the red indicator at 2 Hz within 5 s of excursion confirmation. */
    }

    requirement <'MRTM-SYS-005'> MRTM_SYS_005 {
        doc /* The monitor shall show the excursion warning on the display within 5 s of excursion confirmation. */
    }

    requirement <'MRTM-SYS-006'> MRTM_SYS_006 {
        doc /* The monitor shall stop the buzzer within 1 s of the acknowledge button press. */
    }

    requirement <'MRTM-SYS-007'> MRTM_SYS_007 {
        doc /* The monitor shall keep the excursion warning on the display for the duration of the excursion. */
    }

    requirement <'MRTM-SYS-008'> MRTM_SYS_008 {
        doc /* The monitor shall log the excursion start event with the UTC time stamp at 1 s resolution. */
    }

    requirement <'MRTM-SYS-009'> MRTM_SYS_009 {
        doc /* The monitor shall log the excursion end event with the peak temperature of the excursion at 0.1 °C resolution. */
    }

    requirement <'MRTM-SYS-010'> MRTM_SYS_010 {
        doc /* The monitor shall log the acknowledgement event with the UTC time stamp at 1 s resolution. */
    }

    requirement <'MRTM-SYS-011'> MRTM_SYS_011 {
        doc /* The monitor shall display the current temperature at 0.1 °C resolution. */
    }

    requirement <'MRTM-SYS-012'> MRTM_SYS_012 {
        doc /* The monitor shall declare the probe fault when no sample with a correct CRC arrives for 30 s. */
    }

    requirement <'MRTM-SYS-013'> MRTM_SYS_013 {
        doc /* The monitor shall show the probe fault message on the display within 5 s of the probe fault declaration. */
    }

    requirement <'MRTM-SYS-014'> MRTM_SYS_014 {
        doc /* The monitor shall restrict the user access to the event log to read-only. */
    }

    requirement <'MRTM-SYS-015'> MRTM_SYS_015 {
        doc /* The monitor shall retain 10000 events in the event log. */
    }

    requirement <'MRTM-SYS-016'> MRTM_SYS_016 {
        doc /* The monitor shall switch to the internal battery within 100 ms of mains power loss. */
    }

    requirement <'MRTM-SYS-017'> MRTM_SYS_017 {
        doc /* The monitor shall use the allowed band from 2 °C to 8 °C. */
    }

    requirement <'MRTM-SYS-018'> MRTM_SYS_018 {
        doc /* The monitor shall end the excursion after 31 consecutive samples, spanning 60 s, back inside the allowed band. */
    }

    requirement <'MRTM-SYS-019'> MRTM_SYS_019 {
        doc /* The monitor shall sound the buzzer again 15 min after the acknowledge button press while the excursion continues. */
    }

    requirement <'MRTM-SYS-020'> MRTM_SYS_020 {
        doc /* The monitor shall keep the UTC time with a drift of 2 s per day or less. */
    }

    requirement <'MRTM-SYS-021'> MRTM_SYS_021 {
        doc /* The monitor shall report a corrupted event log record within 1 s of reading it, using its CRC-32 checksum. */
    }

    requirement <'MRTM-SYS-022'> MRTM_SYS_022 {
        doc /* The monitor shall show the log capacity warning on the display when the event log holds 9000 events. */
    }

    requirement <'MRTM-SYS-023'> MRTM_SYS_023 {
        doc /* The monitor shall log the power restore event with the UTC time stamp at 1 s resolution. */
    }

    requirement <'MRTM-SYS-024'> MRTM_SYS_024 {
        doc /* The system shall raise an alarm within 5 seconds of a temperature excursion. */
    }

    dependency from MRTM_ENV_001 to MRTM_SYS_016;
    dependency from MRTM_ENV_002 to MRTM_SYS_001;
    dependency from MRTM_ENV_003 to MRTM_SYS_001;
    dependency from MRTM_ENV_004 to MRTM_SYS_001;
    dependency from MRTM_FUN_001 to MRTM_STK_004;
    dependency from MRTM_FUN_001 to MRTM_STK_007;
    dependency from MRTM_FUN_002 to MRTM_STK_001;
    dependency from MRTM_FUN_002 to MRTM_STK_002;
    dependency from MRTM_FUN_003 to MRTM_STK_003;
    dependency from MRTM_FUN_004 to MRTM_STK_005;
    dependency from MRTM_FUN_004 to MRTM_STK_006;
    dependency from MRTM_FUN_005 to MRTM_STK_008;
    dependency from MRTM_HLR_001 to MRTM_SYS_001;
    dependency from MRTM_HLR_001 to MRTM_SYS_024;
    dependency from MRTM_HLR_002 to MRTM_SYS_012;
    dependency from MRTM_HLR_002 to MRTM_SAF_003;
    dependency from MRTM_HLR_003 to MRTM_SYS_012;
    dependency from MRTM_HLR_003 to MRTM_SAF_002;
    dependency from MRTM_HLR_004 to MRTM_SYS_024;
    dependency from MRTM_HLR_005 to MRTM_SYS_002;
    dependency from MRTM_HLR_006 to MRTM_SYS_018;
    dependency from MRTM_HLR_006 to MRTM_SYS_009;
    dependency from MRTM_HLR_007 to MRTM_SYS_024;
    dependency from MRTM_HLR_007 to MRTM_SYS_004;
    dependency from MRTM_HLR_008 to MRTM_SYS_003;
    dependency from MRTM_HLR_008 to MRTM_PRF_002;
    dependency from MRTM_HLR_009 to MRTM_SYS_006;
    dependency from MRTM_HLR_009 to MRTM_IFC_002;
    dependency from MRTM_HLR_010 to MRTM_SAF_010;
    dependency from MRTM_HLR_011 to MRTM_SYS_019;
    dependency from MRTM_HLR_012 to MRTM_SAF_002;
    dependency from MRTM_HLR_012 to MRTM_SAF_011;
    dependency from MRTM_HLR_013 to MRTM_SAF_014;
    dependency from MRTM_HLR_013 to MRTM_SAF_015;
    dependency from MRTM_HLR_014 to MRTM_SAF_006;
    dependency from MRTM_HLR_015 to MRTM_SAF_019;
    dependency from MRTM_HLR_015 to MRTM_SAF_008;
    dependency from MRTM_HLR_015 to MRTM_SAF_017;
    dependency from MRTM_HLR_016 to MRTM_SAF_010;
    dependency from MRTM_HLR_016 to MRTM_SAF_009;
    dependency from MRTM_HLR_017 to MRTM_SAF_004;
    dependency from MRTM_HLR_018 to MRTM_SAF_007;
    dependency from MRTM_HLR_018 to MRTM_SAF_023;
    dependency from MRTM_HLR_019 to MRTM_SAF_017;
    dependency from MRTM_HLR_019 to MRTM_SYS_017;
    dependency from MRTM_HLR_020 to MRTM_SAF_005;
    dependency from MRTM_HLR_020 to MRTM_SYS_023;
    dependency from MRTM_HLR_021 to MRTM_SAF_008;
    dependency from MRTM_HLR_022 to MRTM_SAF_012;
    dependency from MRTM_HLR_022 to MRTM_SYS_022;
    dependency from MRTM_HLR_022 to MRTM_MNT_002;
    dependency from MRTM_HLR_023 to MRTM_SAF_016;
    dependency from MRTM_HLR_023 to MRTM_MNT_003;
    dependency from MRTM_HLR_023 to MRTM_SAF_006;
    dependency from MRTM_HLR_025 to MRTM_SYS_005;
    dependency from MRTM_HLR_025 to MRTM_SYS_007;
    dependency from MRTM_HLR_025 to MRTM_SYS_013;
    dependency from MRTM_HLR_026 to MRTM_SYS_011;
    dependency from MRTM_HLR_026 to MRTM_PRF_004;
    dependency from MRTM_HLR_027 to MRTM_SAF_016;
    dependency from MRTM_HLR_027 to MRTM_MNT_003;
    dependency from MRTM_HLR_028 to MRTM_SAF_012;
    dependency from MRTM_HLR_028 to MRTM_SYS_022;
    dependency from MRTM_HLR_028 to MRTM_MNT_002;
    dependency from MRTM_HLR_029 to MRTM_SAF_021;
    dependency from MRTM_HLR_030 to MRTM_SAF_018;
    dependency from MRTM_HLR_030 to MRTM_SYS_008;
    dependency from MRTM_HLR_030 to MRTM_SYS_010;
    dependency from MRTM_HLR_031 to MRTM_SYS_015;
    dependency from MRTM_HLR_032 to MRTM_SYS_020;
    dependency from MRTM_HLR_032 to MRTM_SAF_022;
    dependency from MRTM_HLR_032 to MRTM_SYS_023;
    dependency from MRTM_HLR_033 to MRTM_SYS_021;
    dependency from MRTM_HLR_034 to MRTM_SYS_022;
    dependency from MRTM_HLR_035 to MRTM_SYS_014;
    dependency from MRTM_HLR_035 to MRTM_IFC_003;
    dependency from MRTM_HLR_035 to MRTM_PRF_003;
    dependency from MRTM_HLR_036 to MRTM_SYS_014;
    dependency from MRTM_HWR_001 to MRTM_SYS_024;
    dependency from MRTM_HWR_001 to MRTM_SYS_001;
    dependency from MRTM_HWR_002 to MRTM_PRF_001;
    dependency from MRTM_HWR_002 to MRTM_ENV_004;
    dependency from MRTM_HWR_003 to MRTM_SYS_012;
    dependency from MRTM_HWR_003 to MRTM_SAF_003;
    dependency from MRTM_HWR_004 to MRTM_SAF_001;
    dependency from MRTM_HWR_004 to MRTM_SYS_003;
    dependency from MRTM_HWR_005 to MRTM_SYS_004;
    dependency from MRTM_HWR_005 to MRTM_SYS_024;
    dependency from MRTM_HWR_006 to MRTM_IFC_002;
    dependency from MRTM_HWR_006 to MRTM_SYS_006;
    dependency from MRTM_HWR_007 to MRTM_SAF_009;
    dependency from MRTM_HWR_007 to MRTM_SAF_010;
    dependency from MRTM_HWR_008 to MRTM_SAF_009;
    dependency from MRTM_HWR_009 to MRTM_SAF_013;
    dependency from MRTM_HWR_010 to MRTM_SAF_004;
    dependency from MRTM_HWR_011 to MRTM_SYS_020;
    dependency from MRTM_HWR_011 to MRTM_SAF_022;
    dependency from MRTM_HWR_012 to MRTM_SYS_016;
    dependency from MRTM_HWR_013 to MRTM_ENV_001;
    dependency from MRTM_HWR_014 to MRTM_IFC_004;
    dependency from MRTM_HWR_014 to MRTM_SYS_011;
    dependency from MRTM_IFC_001 to MRTM_SYS_001;
    dependency from MRTM_IFC_002 to MRTM_SYS_006;
    dependency from MRTM_IFC_003 to MRTM_SYS_014;
    dependency from MRTM_IFC_004 to MRTM_SYS_005;
    dependency from MRTM_LLR_001 to MRTM_HLR_001;
    dependency from MRTM_LLR_002 to MRTM_HLR_001;
    dependency from MRTM_LLR_003 to MRTM_HLR_001;
    dependency from MRTM_LLR_003 to MRTM_HLR_002;
    dependency from MRTM_LLR_004 to MRTM_HLR_003;
    dependency from MRTM_LLR_005 to MRTM_HLR_002;
    dependency from MRTM_LLR_006 to MRTM_HLR_003;
    dependency from MRTM_LLR_006 to MRTM_HLR_004;
    dependency from MRTM_LLR_006 to MRTM_HLR_005;
    dependency from MRTM_LLR_006 to MRTM_HLR_006;
    dependency from MRTM_LLR_007 to MRTM_HLR_005;
    dependency from MRTM_LLR_008 to MRTM_HLR_004;
    dependency from MRTM_LLR_008 to MRTM_HLR_005;
    dependency from MRTM_LLR_008 to MRTM_HLR_006;
    dependency from MRTM_LLR_009 to MRTM_HLR_006;
    dependency from MRTM_LLR_010 to MRTM_HLR_014;
    dependency from MRTM_LLR_011 to MRTM_HLR_008;
    dependency from MRTM_LLR_011 to MRTM_HLR_009;
    dependency from MRTM_LLR_012 to MRTM_HLR_007;
    dependency from MRTM_LLR_012 to MRTM_HLR_008;
    dependency from MRTM_LLR_012 to MRTM_HLR_009;
    dependency from MRTM_LLR_013 to MRTM_HLR_007;
    dependency from MRTM_LLR_013 to MRTM_HLR_008;
    dependency from MRTM_LLR_013 to MRTM_HLR_011;
    dependency from MRTM_LLR_013 to MRTM_HLR_012;
    dependency from MRTM_LLR_013 to MRTM_HLR_013;
    dependency from MRTM_LLR_013 to MRTM_HLR_015;
    dependency from MRTM_LLR_014 to MRTM_HLR_009;
    dependency from MRTM_LLR_015 to MRTM_HLR_009;
    dependency from MRTM_LLR_015 to MRTM_HLR_015;
    dependency from MRTM_LLR_016 to MRTM_HLR_010;
    dependency from MRTM_LLR_017 to MRTM_HLR_017;
    dependency from MRTM_LLR_018 to MRTM_HLR_016;
    dependency from MRTM_LLR_019 to MRTM_HLR_018;
    dependency from MRTM_LLR_020 to MRTM_HLR_019;
    dependency from MRTM_LLR_021 to MRTM_HLR_019;
    dependency from MRTM_LLR_022 to MRTM_HLR_019;
    dependency from MRTM_LLR_023 to MRTM_HLR_020;
    dependency from MRTM_LLR_024 to MRTM_HLR_021;
    dependency from MRTM_LLR_025 to MRTM_HLR_023;
    dependency from MRTM_LLR_025 to MRTM_HLR_019;
    dependency from MRTM_LLR_026 to MRTM_HLR_016;
    dependency from MRTM_LLR_026 to MRTM_HLR_022;
    dependency from MRTM_LLR_027 to MRTM_HLR_025;
    dependency from MRTM_LLR_028 to MRTM_HLR_026;
    dependency from MRTM_LLR_029 to MRTM_HLR_025;
    dependency from MRTM_LLR_029 to MRTM_HLR_027;
    dependency from MRTM_LLR_029 to MRTM_HLR_028;
    dependency from MRTM_LLR_030 to MRTM_HLR_028;
    dependency from MRTM_LLR_031 to MRTM_HLR_029;
    dependency from MRTM_LLR_032 to MRTM_HLR_026;
    dependency from MRTM_LLR_032 to MRTM_HLR_025;
    dependency from MRTM_LLR_032 to MRTM_HLR_027;
    dependency from MRTM_LLR_033 to MRTM_HLR_027;
    dependency from MRTM_LLR_034 to MRTM_HLR_026;
    dependency from MRTM_LLR_035 to MRTM_HLR_030;
    dependency from MRTM_LLR_035 to MRTM_HLR_032;
    dependency from MRTM_LLR_036 to MRTM_HLR_030;
    dependency from MRTM_LLR_037 to MRTM_HLR_031;
    dependency from MRTM_LLR_038 to MRTM_HLR_030;
    dependency from MRTM_LLR_038 to MRTM_HLR_034;
    dependency from MRTM_LLR_038 to MRTM_HLR_031;
    dependency from MRTM_LLR_039 to MRTM_HLR_033;
    dependency from MRTM_LLR_040 to MRTM_HLR_032;
    dependency from MRTM_LLR_041 to MRTM_HLR_032;
    dependency from MRTM_LLR_042 to MRTM_HLR_032;
    dependency from MRTM_LLR_043 to MRTM_HLR_035;
    dependency from MRTM_LLR_043 to MRTM_HLR_037;
    dependency from MRTM_LLR_044 to MRTM_HLR_035;
    dependency from MRTM_LLR_045 to MRTM_HLR_036;
    dependency from MRTM_MNT_001 to MRTM_SYS_012;
    dependency from MRTM_MNT_002 to MRTM_SYS_016;
    dependency from MRTM_MNT_003 to MRTM_SYS_001;
    dependency from MRTM_PRF_001 to MRTM_SYS_001;
    dependency from MRTM_PRF_002 to MRTM_SYS_003;
    dependency from MRTM_PRF_003 to MRTM_SYS_015;
    dependency from MRTM_PRF_004 to MRTM_SYS_011;
    dependency from MRTM_SAF_001 to MRTM_SYS_003;
    dependency from MRTM_SAF_001 to MRTM_SOB_001;
    dependency from MRTM_SAF_002 to MRTM_SYS_012;
    dependency from MRTM_SAF_002 to MRTM_SOB_001;
    dependency from MRTM_SAF_003 to MRTM_SYS_001;
    dependency from MRTM_SAF_003 to MRTM_SOB_001;
    dependency from MRTM_SAF_003 to MRTM_SOB_003;
    dependency from MRTM_SAF_004 to MRTM_SYS_001;
    dependency from MRTM_SAF_004 to MRTM_SOB_001;
    dependency from MRTM_SAF_005 to MRTM_SYS_016;
    dependency from MRTM_SAF_005 to MRTM_SOB_001;
    dependency from MRTM_SAF_005 to MRTM_SOB_005;
    dependency from MRTM_SAF_006 to MRTM_SYS_003;
    dependency from MRTM_SAF_006 to MRTM_SOB_001;
    dependency from MRTM_SAF_007 to MRTM_SYS_003;
    dependency from MRTM_SAF_007 to MRTM_SOB_001;
    dependency from MRTM_SAF_008 to MRTM_SYS_016;
    dependency from MRTM_SAF_008 to MRTM_SOB_001;
    dependency from MRTM_SAF_009 to MRTM_SYS_003;
    dependency from MRTM_SAF_009 to MRTM_SOB_001;
    dependency from MRTM_SAF_010 to MRTM_SYS_003;
    dependency from MRTM_SAF_010 to MRTM_SOB_001;
    dependency from MRTM_SAF_011 to MRTM_SYS_012;
    dependency from MRTM_SAF_011 to MRTM_SOB_004;
    dependency from MRTM_SAF_012 to MRTM_SYS_001;
    dependency from MRTM_SAF_012 to MRTM_SOB_003;
    dependency from MRTM_SAF_013 to MRTM_SYS_016;
    dependency from MRTM_SAF_013 to MRTM_SOB_001;
    dependency from MRTM_SAF_014 to MRTM_SYS_003;
    dependency from MRTM_SAF_014 to MRTM_SOB_001;
    dependency from MRTM_SAF_015 to MRTM_SYS_004;
    dependency from MRTM_SAF_015 to MRTM_SOB_001;
    dependency from MRTM_SAF_016 to MRTM_SYS_017;
    dependency from MRTM_SAF_016 to MRTM_SOB_002;
    dependency from MRTM_SAF_017 to MRTM_SYS_017;
    dependency from MRTM_SAF_017 to MRTM_SOB_002;
    dependency from MRTM_SAF_018 to MRTM_SYS_015;
    dependency from MRTM_SAF_018 to MRTM_SOB_005;
    dependency from MRTM_SAF_019 to MRTM_SYS_006;
    dependency from MRTM_SAF_019 to MRTM_SOB_001;
    dependency from MRTM_SAF_020 to MRTM_SYS_001;
    dependency from MRTM_SAF_020 to MRTM_SOB_001;
    dependency from MRTM_SAF_021 to MRTM_SYS_005;
    dependency from MRTM_SAF_021 to MRTM_SOB_001;
    dependency from MRTM_SAF_021 to MRTM_SOB_005;
    dependency from MRTM_SAF_022 to MRTM_SYS_020;
    dependency from MRTM_SAF_022 to MRTM_SOB_005;
    dependency from MRTM_SAF_023 to MRTM_SYS_003;
    dependency from MRTM_SAF_023 to MRTM_SOB_001;
    dependency from MRTM_SOB_001 to MRTM_FUN_002;
    dependency from MRTM_SOB_001 to MRTM_FUN_005;
    dependency from MRTM_SOB_002 to MRTM_FUN_002;
    dependency from MRTM_SOB_003 to MRTM_FUN_001;
    dependency from MRTM_SOB_004 to MRTM_FUN_002;
    dependency from MRTM_SOB_005 to MRTM_FUN_004;
    dependency from MRTM_SYS_001 to MRTM_FUN_001;
    dependency from MRTM_SYS_002 to MRTM_FUN_002;
    dependency from MRTM_SYS_003 to MRTM_FUN_002;
    dependency from MRTM_SYS_004 to MRTM_FUN_002;
    dependency from MRTM_SYS_005 to MRTM_FUN_002;
    dependency from MRTM_SYS_006 to MRTM_FUN_003;
    dependency from MRTM_SYS_007 to MRTM_FUN_003;
    dependency from MRTM_SYS_008 to MRTM_FUN_004;
    dependency from MRTM_SYS_009 to MRTM_FUN_004;
    dependency from MRTM_SYS_010 to MRTM_FUN_004;
    dependency from MRTM_SYS_011 to MRTM_FUN_001;
    dependency from MRTM_SYS_012 to MRTM_FUN_001;
    dependency from MRTM_SYS_013 to MRTM_FUN_001;
    dependency from MRTM_SYS_014 to MRTM_FUN_004;
    dependency from MRTM_SYS_015 to MRTM_FUN_004;
    dependency from MRTM_SYS_016 to MRTM_FUN_005;
    dependency from MRTM_SYS_017 to MRTM_FUN_002;
    dependency from MRTM_SYS_018 to MRTM_FUN_002;
    dependency from MRTM_SYS_019 to MRTM_FUN_003;
    dependency from MRTM_SYS_020 to MRTM_FUN_004;
    dependency from MRTM_SYS_021 to MRTM_FUN_004;
    dependency from MRTM_SYS_022 to MRTM_FUN_004;
    dependency from MRTM_SYS_023 to MRTM_FUN_005;
    dependency from MRTM_SYS_024 to MRTM_FUN_002;
}
