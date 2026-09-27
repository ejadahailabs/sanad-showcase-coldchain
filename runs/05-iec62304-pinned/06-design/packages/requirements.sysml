package ProjectRequirements {
    comment /* GENERATED from the Markdown requirement corpus at 8993913eeefc927d.
       Read-only: edit the Markdown requirement, not this file. Sanad regenerates it on
       every corpus change and the same corpus always gives byte-identical text. */

    requirement <'MRTM-ALI-001'> MRTM_ALI_001 {
        doc /* The alarm item shall flash the red indicator at 1 Hz within one 1 s alarm cycle of the early excursion report. */
    }

    requirement <'MRTM-ALI-002'> MRTM_ALI_002 {
        doc /* The alarm item shall switch the buzzer drive on within one 1 s alarm cycle of the confirmed excursion report. */
    }

    requirement <'MRTM-ALI-003'> MRTM_ALI_003 {
        doc /* The alarm item shall switch the buzzer drive off within one 1 s alarm cycle of a debounced acknowledge press. */
    }

    requirement <'MRTM-ALI-004'> MRTM_ALI_004 {
        doc /* The alarm item shall advance its heartbeat counter once per 1 s alarm cycle. */
    }

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

    requirement <'MRTM-DSI-001'> MRTM_DSI_001 {
        doc /* The display item shall redraw the frame within 1 s of a state change message. */
    }

    requirement <'MRTM-DSI-002'> MRTM_DSI_002 {
        doc /* The display item shall change the displayed temperature at most once per 10 s, at 0.1 °C resolution. */
    }

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

    requirement <'MRTM-EVL-001'> MRTM_EVL_001 {
        doc /* The event log unit shall compute a CRC-32 over each queued record and hand it to the history ring in the same event_log_step call. */
    }

    requirement <'MRTM-EVL-002'> MRTM_EVL_002 {
        doc /* The event log unit shall stamp each record with the UTC second that the RTC clock unit returns at the time of the post. */
    }

    requirement <'MRTM-EXI-001'> MRTM_EXI_001 {
        doc /* The excursion item shall report the early excursion within the 2 s sample period of the first valid sample outside the allowed band. */
    }

    requirement <'MRTM-EXI-002'> MRTM_EXI_002 {
        doc /* The excursion item shall report the confirmed excursion at the 31st consecutive valid sample outside the allowed band, 60 s after the first of them. */
    }

    requirement <'MRTM-EXI-003'> MRTM_EXI_003 {
        doc /* The excursion item shall report the excursion end at the 31st consecutive valid sample inside the allowed band, 60 s after the first of them. */
    }

    requirement <'MRTM-HRG-001'> MRTM_HRG_001 {
        doc /* The history ring unit shall write each appended record to copy A and copy B in 2 separate flash sectors. */
    }

    requirement <'MRTM-HRG-002'> MRTM_HRG_002 {
        doc /* When the ring holds 10000 records, the history ring unit shall write the next record over the oldest one. */
    }

    requirement <'MRTM-HWI-001'> MRTM_HWI_001 {
        doc /* The hardware item shall complete a 12-bit temperature conversion within 750 ms. */
    }

    requirement <'MRTM-HWI-002'> MRTM_HWI_002 {
        doc /* The hardware item shall measure the fridge air temperature with an accuracy of ±0.5 °C over the range 0 °C to 15 °C. */
    }

    requirement <'MRTM-HWI-003'> MRTM_HWI_003 {
        doc /* When the software reads the probe scratchpad, the hardware item shall send a CRC-8 value with the **Sample** data. */
    }

    requirement <'MRTM-HWI-004'> MRTM_HWI_004 {
        doc /* The hardware item shall produce a sound pressure level of 65 dB(A) or more at 1 m when either buzzer drive input is active. */
    }

    requirement <'MRTM-HWI-005'> MRTM_HWI_005 {
        doc /* The hardware item shall light the red indicator within 10 ms of its drive input. */
    }

    requirement <'MRTM-HWI-006'> MRTM_HWI_006 {
        doc /* While a clinic staff member presses the acknowledge button, the hardware item shall close the contact that signals an **Acknowledgement**. */
    }

    requirement <'MRTM-HWI-007'> MRTM_HWI_007 {
        doc /* The hardware item shall drive the buzzer from the backup alarm within 10 s of the last watchdog service pulse. */
    }

    requirement <'MRTM-HWI-008'> MRTM_HWI_008 {
        doc /* The hardware item shall drive the buzzer from the backup alarm for 60 s or more after the loss of both mains and battery power. */
    }

    requirement <'MRTM-HWI-009'> MRTM_HWI_009 {
        doc /* The hardware item shall draw the temperature digits at a character height of 5 mm or more. */
    }

    requirement <'MRTM-HWI-010'> MRTM_HWI_010 {
        doc /* The hardware item shall keep time with a drift of 2 s per day or less from 10 °C to 35 °C. */
    }

    requirement <'MRTM-HWI-011'> MRTM_HWI_011 {
        doc /* The hardware item shall switch the load from mains to battery within 100 ms of mains power loss. */
    }

    requirement <'MRTM-HWI-012'> MRTM_HWI_012 {
        doc /* The hardware item shall supply the monitor from the battery for 4 h. */
    }

    requirement <'MRTM-HWI-013'> MRTM_HWI_013 {
        doc /* The hardware item shall reset the processor within 1 s of its hardware watchdog expiry. */
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

    requirement <'MRTM-LEV-001'> MRTM_LEV_001 {
        doc /* The limit evaluator unit shall return the early event from limit_evaluator_step for the first valid sample outside the allowed band. */
    }

    requirement <'MRTM-LEV-002'> MRTM_LEV_002 {
        doc /* The limit evaluator unit shall return the confirmed event from limit_evaluator_step at the 31st consecutive valid sample outside the allowed band. */
    }

    requirement <'MRTM-LEV-003'> MRTM_LEV_003 {
        doc /* The limit evaluator unit shall return the end event from limit_evaluator_step at the 31st consecutive valid sample inside the allowed band. */
    }

    requirement <'MRTM-LGI-001'> MRTM_LGI_001 {
        doc /* The log item shall write each record with its CRC-32 to 2 separate flash sectors within 1 s of the event. */
    }

    requirement <'MRTM-LGI-002'> MRTM_LGI_002 {
        doc /* When the **Event Log** holds 10000 records, the log item shall write each new **Event Record** over the oldest one. */
    }

    requirement <'MRTM-LGI-003'> MRTM_LGI_003 {
        doc /* The log item shall stamp each record with the UTC second of the real-time clock at the time of the event. */
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

    requirement <'MRTM-PMN-001'> MRTM_PMN_001 {
        doc /* The power monitor unit shall post the mains-lost or mains-restored event on each mains sense edge it is called with. */
    }

    requirement <'MRTM-PMN-002'> MRTM_PMN_002 {
        doc /* The power monitor unit shall post the battery-low event after 2 consecutive battery readings below 3400 mV. */
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

    requirement <'MRTM-PWI-001'> MRTM_PWI_001 {
        doc /* The power item shall post the mains-lost and mains-restored signals within 1 s of the mains sense edge. */
    }

    requirement <'MRTM-PWI-002'> MRTM_PWI_002 {
        doc /* The power item shall post the battery-low signal after 2 consecutive battery readings below 3.4 V. */
    }

    requirement <'MRTM-RTK-001'> MRTM_RTK_001 {
        doc /* The RTC clock unit shall return the UTC second read from the real-time clock, refreshed once per second. */
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

    requirement <'MRTM-SMP-001'> MRTM_SMP_001 {
        doc /* When sensor_sampler_read is called, the sensor sampler unit shall return the sample of the conversion started 750 ms or more before and start the next conversion. */
    }

    requirement <'MRTM-SMP-002'> MRTM_SMP_002 {
        doc /* The sensor sampler unit shall return a sample marked invalid when the scratchpad CRC-8 differs from byte 8 or the value is outside -30 °C to 50 °C. */
    }

    requirement <'MRTM-SNI-001'> MRTM_SNI_001 {
        doc /* The sensor item shall start one probe conversion at a period of 2 s and read the scratchpad 750 ms after the start. */
    }

    requirement <'MRTM-SNI-002'> MRTM_SNI_002 {
        doc /* The sensor item shall mark the sample invalid when the scratchpad CRC-8 fails or the value is outside -30 °C to 50 °C. */
    }

    requirement <'MRTM-SRS-001'> MRTM_SRS_001 {
        doc /* The software system shall read one fridge air temperature sample from the probe at a period of 2 s. */
    }

    requirement <'MRTM-SRS-002'> MRTM_SRS_002 {
        doc /* The software system shall command the low-priority excursion alarm signal within 1 s of the first valid out-of-band sample. */
    }

    requirement <'MRTM-SRS-003'> MRTM_SRS_003 {
        doc /* The software system shall confirm the excursion when 31 consecutive valid samples, spanning 60 s, are outside the allowed band. */
    }

    requirement <'MRTM-SRS-004'> MRTM_SRS_004 {
        doc /* The software system shall end the excursion after 31 consecutive valid samples, spanning 60 s, inside the allowed band. */
    }

    requirement <'MRTM-SRS-005'> MRTM_SRS_005 {
        doc /* The software system shall mark a sample invalid when its CRC-8 check fails or its value is outside -30 °C to 50 °C. */
    }

    requirement <'MRTM-SRS-006'> MRTM_SRS_006 {
        doc /* The software system shall switch the buzzer drive on within 1 s of excursion confirmation. */
    }

    requirement <'MRTM-SRS-007'> MRTM_SRS_007 {
        doc /* The software system shall switch the buzzer drive off within 1 s of a debounced acknowledge press. */
    }

    requirement <'MRTM-SRS-008'> MRTM_SRS_008 {
        doc /* The software system shall drive the confirmed excursion alarm sound as bursts of 10 pulses with a burst repetition interval from 2.5 s to 15 s. */
    }

    requirement <'MRTM-SRS-009'> MRTM_SRS_009 {
        doc /* The software system shall show the excursion warning within 1 s of excursion confirmation until the excursion ends. */
    }

    requirement <'MRTM-SRS-010'> MRTM_SRS_010 {
        doc /* The software system shall show the current temperature at 0.1 °C resolution, refreshed at a period of 10 s. */
    }

    requirement <'MRTM-SRS-011'> MRTM_SRS_011 {
        doc /* The software system shall show the probe fault, calibration due, band limits and log capacity messages within 1 s of their cause. */
    }

    requirement <'MRTM-SRS-012'> MRTM_SRS_012 {
        doc /* The software system shall store each event record in 2 separate flash sectors within 1 s of the event. */
    }

    requirement <'MRTM-SRS-013'> MRTM_SRS_013 {
        doc /* When the **Event Log** reaches its capacity, the software system shall keep the newest 10000 records in the **Event Log**. */
    }

    requirement <'MRTM-SRS-014'> MRTM_SRS_014 {
        doc /* The software system shall give the USB host read-only access to the event records within 30 s of connection. */
    }

    requirement <'MRTM-SRS-015'> MRTM_SRS_015 {
        doc /* The software system shall time-stamp each record with UTC at 1 s resolution. */
    }

    requirement <'MRTM-SRS-016'> MRTM_SRS_016 {
        doc /* The software system shall report mains loss, mains restore and battery voltage below 3.4 V within 1 s. */
    }

    requirement <'MRTM-SRS-017'> MRTM_SRS_017 {
        doc /* The software system shall stop the watchdog service pulses within 2 s of the alarm function missing its 1 s cycle. */
    }

    requirement <'MRTM-SRS-018'> MRTM_SRS_018 {
        doc /* The software system shall test the buzzer within 5 s and the backup alarm within 15 s of power-up. */
    }

    requirement <'MRTM-SRS-019'> MRTM_SRS_019 {
        doc /* When a stored allowed band fails its CRC-32 check, the software system shall disable that **Allowed Band**. */
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

    requirement <'MRTM-SVI-001'> MRTM_SVI_001 {
        doc /* The supervisor item shall stop the watchdog service pulses within 2 s of a missed alarm heartbeat. */
    }

    requirement <'MRTM-SVI-002'> MRTM_SVI_002 {
        doc /* The supervisor item shall run the buzzer test within 5 s and the backup alarm test within 15 s of power-up. */
    }

    requirement <'MRTM-SVI-003'> MRTM_SVI_003 {
        doc /* When the stored band passes its CRC-32 check, and only then, the supervisor item shall set the **Allowed Band** from it. */
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

    requirement <'MRTM-USI-001'> MRTM_USI_001 {
        doc /* The USB item shall present the event log as a read-only mass-storage volume within 30 s of connection. */
    }

    requirement <'MRTM-USI-002'> MRTM_USI_002 {
        doc /* When the USB host sends a write request, the USB item shall inhibit the write to the **Event Log**. */
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

    dependency from MRTM_ALI_001 to MRTM_SRS_002;
    dependency from MRTM_ALI_002 to MRTM_SRS_006;
    dependency from MRTM_ALI_003 to MRTM_SRS_007;
    dependency from MRTM_ALI_004 to MRTM_SRS_017;
    dependency from MRTM_AMG_001 to MRTM_ALI_001;
    dependency from MRTM_AMG_002 to MRTM_ALI_002;
    dependency from MRTM_AMG_003 to MRTM_ALI_003;
    dependency from MRTM_AMG_004 to MRTM_ALI_004;
    dependency from MRTM_CFG_001 to MRTM_SVI_003;
    dependency from MRTM_DGN_001 to MRTM_SVI_002;
    dependency from MRTM_DMG_001 to MRTM_DSI_001;
    dependency from MRTM_DMG_002 to MRTM_DSI_002;
    dependency from MRTM_DSI_001 to MRTM_SRS_009;
    dependency from MRTM_DSI_001 to MRTM_SRS_011;
    dependency from MRTM_DSI_002 to MRTM_SRS_010;
    dependency from MRTM_ENV_001 to MRTM_SYS_016;
    dependency from MRTM_ENV_002 to MRTM_SYS_001;
    dependency from MRTM_ENV_003 to MRTM_SYS_001;
    dependency from MRTM_ENV_004 to MRTM_SYS_001;
    dependency from MRTM_EVL_001 to MRTM_LGI_001;
    dependency from MRTM_EVL_002 to MRTM_LGI_003;
    dependency from MRTM_EXI_001 to MRTM_SRS_002;
    dependency from MRTM_EXI_002 to MRTM_SRS_003;
    dependency from MRTM_EXI_003 to MRTM_SRS_004;
    dependency from MRTM_HRG_001 to MRTM_LGI_001;
    dependency from MRTM_HRG_002 to MRTM_LGI_002;
    dependency from MRTM_HWI_001 to MRTM_SYS_024;
    dependency from MRTM_HWI_002 to MRTM_PRF_001;
    dependency from MRTM_HWI_002 to MRTM_ENV_004;
    dependency from MRTM_HWI_003 to MRTM_SYS_012;
    dependency from MRTM_HWI_003 to MRTM_SAF_003;
    dependency from MRTM_HWI_004 to MRTM_SAF_001;
    dependency from MRTM_HWI_005 to MRTM_SYS_004;
    dependency from MRTM_HWI_006 to MRTM_SYS_006;
    dependency from MRTM_HWI_006 to MRTM_IFC_002;
    dependency from MRTM_HWI_007 to MRTM_SAF_009;
    dependency from MRTM_HWI_008 to MRTM_SAF_013;
    dependency from MRTM_HWI_009 to MRTM_IFC_004;
    dependency from MRTM_HWI_010 to MRTM_SYS_020;
    dependency from MRTM_HWI_011 to MRTM_SYS_016;
    dependency from MRTM_HWI_012 to MRTM_ENV_001;
    dependency from MRTM_HWI_013 to MRTM_SAF_004;
    dependency from MRTM_IFC_001 to MRTM_SYS_001;
    dependency from MRTM_IFC_002 to MRTM_SYS_006;
    dependency from MRTM_IFC_003 to MRTM_SYS_014;
    dependency from MRTM_IFC_004 to MRTM_SYS_005;
    dependency from MRTM_LEV_001 to MRTM_EXI_001;
    dependency from MRTM_LEV_002 to MRTM_EXI_002;
    dependency from MRTM_LEV_003 to MRTM_EXI_003;
    dependency from MRTM_LGI_001 to MRTM_SRS_012;
    dependency from MRTM_LGI_002 to MRTM_SRS_013;
    dependency from MRTM_LGI_003 to MRTM_SRS_015;
    dependency from MRTM_MNT_001 to MRTM_SYS_012;
    dependency from MRTM_MNT_002 to MRTM_SYS_016;
    dependency from MRTM_MNT_003 to MRTM_SYS_001;
    dependency from MRTM_PMN_001 to MRTM_PWI_001;
    dependency from MRTM_PMN_002 to MRTM_PWI_002;
    dependency from MRTM_PRF_001 to MRTM_SYS_001;
    dependency from MRTM_PRF_002 to MRTM_SYS_003;
    dependency from MRTM_PRF_003 to MRTM_SYS_015;
    dependency from MRTM_PRF_004 to MRTM_SYS_011;
    dependency from MRTM_PWI_001 to MRTM_SRS_016;
    dependency from MRTM_PWI_002 to MRTM_SRS_016;
    dependency from MRTM_RTK_001 to MRTM_LGI_003;
    dependency from MRTM_SAF_001 to MRTM_SYS_003;
    dependency from MRTM_SAF_002 to MRTM_SYS_012;
    dependency from MRTM_SAF_003 to MRTM_SYS_001;
    dependency from MRTM_SAF_004 to MRTM_SYS_001;
    dependency from MRTM_SAF_005 to MRTM_SYS_016;
    dependency from MRTM_SAF_006 to MRTM_SYS_003;
    dependency from MRTM_SAF_007 to MRTM_SYS_003;
    dependency from MRTM_SAF_008 to MRTM_SYS_016;
    dependency from MRTM_SAF_009 to MRTM_SYS_003;
    dependency from MRTM_SAF_010 to MRTM_SYS_003;
    dependency from MRTM_SAF_011 to MRTM_SYS_012;
    dependency from MRTM_SAF_012 to MRTM_SYS_001;
    dependency from MRTM_SAF_013 to MRTM_SYS_016;
    dependency from MRTM_SAF_014 to MRTM_SYS_003;
    dependency from MRTM_SAF_015 to MRTM_SYS_004;
    dependency from MRTM_SAF_016 to MRTM_SYS_017;
    dependency from MRTM_SAF_017 to MRTM_SYS_017;
    dependency from MRTM_SAF_018 to MRTM_SYS_015;
    dependency from MRTM_SAF_019 to MRTM_SYS_006;
    dependency from MRTM_SAF_020 to MRTM_SYS_001;
    dependency from MRTM_SAF_021 to MRTM_SYS_005;
    dependency from MRTM_SAF_022 to MRTM_SYS_020;
    dependency from MRTM_SAF_023 to MRTM_SYS_003;
    dependency from MRTM_SMP_001 to MRTM_SNI_001;
    dependency from MRTM_SMP_002 to MRTM_SNI_002;
    dependency from MRTM_SNI_001 to MRTM_SRS_001;
    dependency from MRTM_SNI_001 to MRTM_SRS_002;
    dependency from MRTM_SNI_002 to MRTM_SRS_005;
    dependency from MRTM_SRS_001 to MRTM_SYS_001;
    dependency from MRTM_SRS_002 to MRTM_SYS_024;
    dependency from MRTM_SRS_003 to MRTM_SYS_002;
    dependency from MRTM_SRS_004 to MRTM_SYS_018;
    dependency from MRTM_SRS_005 to MRTM_SYS_012;
    dependency from MRTM_SRS_005 to MRTM_SAF_003;
    dependency from MRTM_SRS_006 to MRTM_SYS_003;
    dependency from MRTM_SRS_006 to MRTM_PRF_002;
    dependency from MRTM_SRS_007 to MRTM_SYS_006;
    dependency from MRTM_SRS_007 to MRTM_IFC_002;
    dependency from MRTM_SRS_008 to MRTM_SYS_003;
    dependency from MRTM_SRS_009 to MRTM_SYS_005;
    dependency from MRTM_SRS_009 to MRTM_SYS_007;
    dependency from MRTM_SRS_010 to MRTM_SYS_011;
    dependency from MRTM_SRS_010 to MRTM_PRF_004;
    dependency from MRTM_SRS_011 to MRTM_SYS_013;
    dependency from MRTM_SRS_011 to MRTM_SAF_012;
    dependency from MRTM_SRS_011 to MRTM_SAF_016;
    dependency from MRTM_SRS_011 to MRTM_SYS_022;
    dependency from MRTM_SRS_012 to MRTM_SAF_018;
    dependency from MRTM_SRS_012 to MRTM_SYS_008;
    dependency from MRTM_SRS_012 to MRTM_SYS_009;
    dependency from MRTM_SRS_012 to MRTM_SYS_010;
    dependency from MRTM_SRS_013 to MRTM_SYS_015;
    dependency from MRTM_SRS_014 to MRTM_SYS_014;
    dependency from MRTM_SRS_014 to MRTM_IFC_003;
    dependency from MRTM_SRS_014 to MRTM_PRF_003;
    dependency from MRTM_SRS_015 to MRTM_SYS_020;
    dependency from MRTM_SRS_015 to MRTM_SYS_008;
    dependency from MRTM_SRS_015 to MRTM_SAF_022;
    dependency from MRTM_SRS_016 to MRTM_SAF_005;
    dependency from MRTM_SRS_016 to MRTM_SAF_008;
    dependency from MRTM_SRS_016 to MRTM_SYS_023;
    dependency from MRTM_SRS_017 to MRTM_SAF_010;
    dependency from MRTM_SRS_017 to MRTM_SAF_009;
    dependency from MRTM_SRS_018 to MRTM_SAF_007;
    dependency from MRTM_SRS_018 to MRTM_SAF_023;
    dependency from MRTM_SRS_019 to MRTM_SAF_017;
    dependency from MRTM_SRS_019 to MRTM_SYS_017;
    dependency from MRTM_SVI_001 to MRTM_SRS_017;
    dependency from MRTM_SVI_002 to MRTM_SRS_018;
    dependency from MRTM_SVI_003 to MRTM_SRS_019;
    dependency from MRTM_SYS_001 to MRTM_STK_004;
    dependency from MRTM_SYS_002 to MRTM_STK_002;
    dependency from MRTM_SYS_003 to MRTM_STK_001;
    dependency from MRTM_SYS_004 to MRTM_STK_001;
    dependency from MRTM_SYS_005 to MRTM_STK_001;
    dependency from MRTM_SYS_006 to MRTM_STK_003;
    dependency from MRTM_SYS_007 to MRTM_STK_003;
    dependency from MRTM_SYS_008 to MRTM_STK_005;
    dependency from MRTM_SYS_009 to MRTM_STK_005;
    dependency from MRTM_SYS_010 to MRTM_STK_005;
    dependency from MRTM_SYS_011 to MRTM_STK_004;
    dependency from MRTM_SYS_012 to MRTM_STK_007;
    dependency from MRTM_SYS_013 to MRTM_STK_007;
    dependency from MRTM_SYS_014 to MRTM_STK_006;
    dependency from MRTM_SYS_015 to MRTM_STK_005;
    dependency from MRTM_SYS_016 to MRTM_STK_008;
    dependency from MRTM_SYS_017 to MRTM_STK_001;
    dependency from MRTM_SYS_018 to MRTM_STK_002;
    dependency from MRTM_SYS_019 to MRTM_STK_003;
    dependency from MRTM_SYS_020 to MRTM_STK_005;
    dependency from MRTM_SYS_021 to MRTM_STK_006;
    dependency from MRTM_SYS_022 to MRTM_STK_005;
    dependency from MRTM_SYS_023 to MRTM_STK_008;
    dependency from MRTM_SYS_024 to MRTM_STK_001;
    dependency from MRTM_USI_001 to MRTM_SRS_014;
    dependency from MRTM_USI_002 to MRTM_SRS_014;
    dependency from MRTM_UXP_001 to MRTM_USI_001;
    dependency from MRTM_UXP_002 to MRTM_USI_002;
    dependency from MRTM_WDK_001 to MRTM_SVI_001;
}
