package ReqSoftwareDesign {
    comment /* GENERATED from the Markdown requirement corpus at dc90cbaa0f2db659.
       Read-only: edit the Markdown requirement, not this file. Sanad regenerates it on
       every corpus change and the same corpus always gives byte-identical text. */

    requirement <'MRTM-LLR-001'> MRTM_LLR_001 {
        doc /* sensor_sampler_init shall return MRTM_ERR_BUS when the 1-Wire bus reset or the first conversion start fails. */
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
        doc /* rtc_clock_tick shall keep the last UTC copy when a clock read fails. */
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
}
