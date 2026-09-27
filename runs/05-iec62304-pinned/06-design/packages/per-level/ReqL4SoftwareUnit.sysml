package ReqL4SoftwareUnit {
    comment /* GENERATED from the Markdown requirement corpus at 49466b3e3971ac97.
       Read-only: edit the Markdown requirement, not this file. Sanad regenerates it on
       every corpus change and the same corpus always gives byte-identical text. */

    requirement <'MRTM-AMG-001'> MRTM_AMG_001 {
        doc /* In the early state, the alarm manager unit shall flash the red indicator output at 1 Hz with the buzzer output off. */
    }

    requirement <'MRTM-AMG-002'> MRTM_AMG_002 {
        doc /* On a confirmed excursion input, the alarm manager unit shall set the buzzer output on in the same alarm_mgr_step call. */
    }

    requirement <'MRTM-AMG-003'> MRTM_AMG_003 {
        doc /* On an acknowledge press held for 50 ms, the alarm manager unit shall set the buzzer output off in the same alarm_mgr_step call. */
    }

    requirement <'MRTM-AMG-004'> MRTM_AMG_004 {
        doc /* The alarm manager unit shall add 1 to its heartbeat counter on every alarm_mgr_step call. */
    }

    requirement <'MRTM-CFG-001'> MRTM_CFG_001 {
        doc /* The configuration manager unit shall return MRTM_ERR_CRC and no band when the stored record fails its CRC-32 check. */
    }

    requirement <'MRTM-DGN-001'> MRTM_DGN_001 {
        doc /* The diagnostics unit shall fail the power-up test when the buzzer current is not seen within 5 s or the backup alarm is not heard within 15 s. */
    }

    requirement <'MRTM-DMG-001'> MRTM_DMG_001 {
        doc /* The display manager unit shall draw the excursion warning, probe fault, calibration due and log capacity messages on the first display_mgr_tick after display_mgr_update reports them. */
    }

    requirement <'MRTM-DMG-002'> MRTM_DMG_002 {
        doc /* The display manager unit shall redraw the temperature digits at most once per 10 s, at 0.1 °C resolution. */
    }

    requirement <'MRTM-EVL-001'> MRTM_EVL_001 {
        doc /* The event log unit shall compute a CRC-32 over each queued record and hand it to the history ring in the same event_log_step call. */
    }

    requirement <'MRTM-EVL-002'> MRTM_EVL_002 {
        doc /* The event log unit shall stamp each record with the UTC second that the RTC clock unit returns at the time of the post. */
    }

    requirement <'MRTM-HRG-001'> MRTM_HRG_001 {
        doc /* The history ring unit shall write each appended record to copy A and copy B in 2 separate flash sectors. */
    }

    requirement <'MRTM-HRG-002'> MRTM_HRG_002 {
        doc /* When the ring holds 10000 records, the history ring unit shall write the next record over the oldest one. */
    }

    requirement <'MRTM-LEV-001'> MRTM_LEV_001 {
        doc /* The limit evaluator unit shall return the early event from limit_evaluator_step for the first valid sample outside the allowed band. */
    }

    requirement <'MRTM-LEV-002'> MRTM_LEV_002 {
        doc /* The limit evaluator unit shall return the confirmed event from limit_evaluator_step at the 31st consecutive valid sample outside the allowed band. */
    }

    requirement <'MRTM-LEV-003'> MRTM_LEV_003 {
        doc /* The limit evaluator unit shall return the end event from limit_evaluator_step at the 31st consecutive valid sample inside the allowed band. */
    }

    requirement <'MRTM-PMN-001'> MRTM_PMN_001 {
        doc /* The power monitor unit shall post the mains-lost or mains-restored event on each mains sense edge it is called with. */
    }

    requirement <'MRTM-PMN-002'> MRTM_PMN_002 {
        doc /* The power monitor unit shall post the battery-low event after 2 consecutive battery readings below 3400 mV. */
    }

    requirement <'MRTM-RTK-001'> MRTM_RTK_001 {
        doc /* The RTC clock unit shall return the UTC second read from the real-time clock, refreshed once per second. */
    }

    requirement <'MRTM-SMP-001'> MRTM_SMP_001 {
        doc /* When sensor_sampler_read is called, the sensor sampler unit shall return the sample of the conversion started 750 ms or more before and start the next conversion. */
    }

    requirement <'MRTM-SMP-002'> MRTM_SMP_002 {
        doc /* The sensor sampler unit shall return a sample marked invalid when the scratchpad CRC-8 differs from byte 8 or the value is outside -30 °C to 50 °C. */
    }

    requirement <'MRTM-UXP-001'> MRTM_UXP_001 {
        doc /* The USB export unit shall mark the history file read-only in the FAT volume it presents. */
    }

    requirement <'MRTM-UXP-002'> MRTM_UXP_002 {
        doc /* The USB export unit shall refuse every write request from the USB host. */
    }

    requirement <'MRTM-WDK-001'> MRTM_WDK_001 {
        doc /* The watchdog kicker unit shall stop the service pulses when the alarm heartbeat has not changed for 2 s. */
    }
}
