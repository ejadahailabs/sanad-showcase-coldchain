package ProjectRequirements {
    comment /* GENERATED from the Markdown requirement corpus at aa3028a8d2652e68.
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
        doc /* The alarm item shall advance its heartbeat counter in every 1 s alarm cycle. */
    }

    requirement <'MRTM-ALM-001'> MRTM_ALM_001 {
        doc /* The alarm subsystem shall show the low-priority excursion alarm signal within 1 s of the first valid out-of-band sample. */
    }

    requirement <'MRTM-ALM-002'> MRTM_ALM_002 {
        doc /* The alarm subsystem shall confirm the excursion when 31 consecutive valid samples are outside the allowed band. */
    }

    requirement <'MRTM-ALM-003'> MRTM_ALM_003 {
        doc /* The alarm subsystem shall sound the buzzer within 1 s of excursion confirmation. */
    }

    requirement <'MRTM-ALM-004'> MRTM_ALM_004 {
        doc /* The alarm subsystem shall stop the buzzer within 1 s of a debounced acknowledge press. */
    }

    requirement <'MRTM-ALM-005'> MRTM_ALM_005 {
        doc /* The alarm subsystem shall sound the buzzer from the backup alarm within 10 s of the last watchdog service pulse. */
    }

    requirement <'MRTM-ALM-006'> MRTM_ALM_006 {
        doc /* The alarm subsystem shall sound the confirmed excursion alarm as bursts of 10 pulses with a burst repetition interval from 2.5 s to 15 s. */
    }

    requirement <'MRTM-ALM-007'> MRTM_ALM_007 {
        doc /* The alarm subsystem shall end the excursion after 31 consecutive valid samples inside the allowed band. */
    }

    requirement <'MRTM-ALM-008'> MRTM_ALM_008 {
        doc /* The alarm subsystem shall sound the backup alarm for 60 s or more after the loss of both mains and battery power. */
    }

    requirement <'MRTM-BAT-001'> MRTM_BAT_001 {
        doc /* The battery shall store 2000 mAh or more at 3.7 V nominal. */
    }

    requirement <'MRTM-BKA-001'> MRTM_BKA_001 {
        doc /* The backup alarm shall drive the buzzer within 10 s of the last watchdog service pulse. */
    }

    requirement <'MRTM-BKA-002'> MRTM_BKA_002 {
        doc /* The backup alarm shall drive the buzzer for 60 s or more after the loss of both mains and battery power. */
    }

    requirement <'MRTM-BKD-001'> MRTM_BKD_001 {
        doc /* The backup driver shall drive the buzzer backup input within 100 ms of the timeout output. */
    }

    requirement <'MRTM-BKH-001'> MRTM_BKH_001 {
        doc /* The hold-up store shall supply the backup timer and the backup driver for 60 s or more after all power is lost. */
    }

    requirement <'MRTM-BKT-001'> MRTM_BKT_001 {
        doc /* The backup timer shall assert its timeout output 9 s ± 0.9 s after the last service pulse. */
    }

    requirement <'MRTM-BZR-001'> MRTM_BZR_001 {
        doc /* The buzzer shall produce a sound pressure level of 65 dB(A) or more at 1 m when either drive input is active. */
    }

    requirement <'MRTM-DSI-001'> MRTM_DSI_001 {
        doc /* The display item shall redraw the frame within 1 s of a state change message. */
    }

    requirement <'MRTM-DSI-002'> MRTM_DSI_002 {
        doc /* The display item shall change the displayed temperature at most once per 10 s, at 0.1 °C resolution. */
    }

    requirement <'MRTM-DSP-001'> MRTM_DSP_001 {
        doc /* The display subsystem shall show the excursion warning within 1 s of excursion confirmation until the excursion ends. */
    }

    requirement <'MRTM-DSP-002'> MRTM_DSP_002 {
        doc /* The display subsystem shall show the current temperature at 0.1 °C resolution in digits of 5 mm or more, refreshed every 10 s. */
    }

    requirement <'MRTM-DSP-003'> MRTM_DSP_003 {
        doc /* The display subsystem shall show the probe fault, calibration due, band limits and log capacity messages within 1 s of their cause. */
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

    requirement <'MRTM-EXI-001'> MRTM_EXI_001 {
        doc /* The excursion item shall report the early excursion at the first valid sample outside the allowed band. */
    }

    requirement <'MRTM-EXI-002'> MRTM_EXI_002 {
        doc /* The excursion item shall report the confirmed excursion at the 31st consecutive valid sample outside the allowed band. */
    }

    requirement <'MRTM-EXI-003'> MRTM_EXI_003 {
        doc /* The excursion item shall report the excursion end at the 31st consecutive valid sample inside the allowed band. */
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

    requirement <'MRTM-IND-001'> MRTM_IND_001 {
        doc /* The red indicator shall follow its drive input within 10 ms. */
    }

    requirement <'MRTM-IND-002'> MRTM_IND_002 {
        doc /* The acknowledge button shall close its contact for as long as it is pressed. */
    }

    requirement <'MRTM-LGI-001'> MRTM_LGI_001 {
        doc /* The log item shall write each record with its CRC-32 to 2 separate flash sectors within 1 s of the event. */
    }

    requirement <'MRTM-LGI-002'> MRTM_LGI_002 {
        doc /* The log item shall keep the newest 10000 records and overwrite the oldest record when full. */
    }

    requirement <'MRTM-LOG-001'> MRTM_LOG_001 {
        doc /* The logging subsystem shall store each event record in 2 separate flash sectors within 1 s of the event. */
    }

    requirement <'MRTM-LOG-002'> MRTM_LOG_002 {
        doc /* The logging subsystem shall retain the newest 10000 event records. */
    }

    requirement <'MRTM-LOG-003'> MRTM_LOG_003 {
        doc /* The logging subsystem shall give the USB host read-only access to the event records within 30 s of connection. */
    }

    requirement <'MRTM-LOG-004'> MRTM_LOG_004 {
        doc /* The logging subsystem shall time-stamp each record with UTC at 1 s resolution with a drift of 2 s per day or less. */
    }

    requirement <'MRTM-MCU-001'> MRTM_MCU_001 {
        doc /* The microcontroller shall reset within 1 s of its hardware watchdog expiry. */
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

    requirement <'MRTM-OLD-001'> MRTM_OLD_001 {
        doc /* The display panel shall draw the temperature digits at a character height of 5 mm or more. */
    }

    requirement <'MRTM-PPT-001'> MRTM_PPT_001 {
        doc /* The power path shall switch the load from mains to battery within 100 ms. */
    }

    requirement <'MRTM-PRB-001'> MRTM_PRB_001 {
        doc /* The probe shall complete a 12-bit temperature conversion within 750 ms. */
    }

    requirement <'MRTM-PRB-002'> MRTM_PRB_002 {
        doc /* The probe shall read the air temperature with an accuracy of ±0.5 °C from -10 °C to 50 °C. */
    }

    requirement <'MRTM-PRB-003'> MRTM_PRB_003 {
        doc /* The probe shall send a CRC-8 value with every scratchpad read. */
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

    requirement <'MRTM-PWR-001'> MRTM_PWR_001 {
        doc /* The power subsystem shall switch the load to the battery within 100 ms of mains power loss. */
    }

    requirement <'MRTM-PWR-002'> MRTM_PWR_002 {
        doc /* The power subsystem shall supply the monitor from the battery for 4 h. */
    }

    requirement <'MRTM-PWR-003'> MRTM_PWR_003 {
        doc /* The power subsystem shall report mains loss, mains restore and battery voltage below 3.4 V within 1 s. */
    }

    requirement <'MRTM-RTC-001'> MRTM_RTC_001 {
        doc /* The real-time clock shall keep time with a drift of 2 s per day or less from 10 °C to 35 °C. */
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

    requirement <'MRTM-SEN-001'> MRTM_SEN_001 {
        doc /* The sensing subsystem shall deliver one fridge air temperature sample every 2 s. */
    }

    requirement <'MRTM-SEN-002'> MRTM_SEN_002 {
        doc /* The sensing subsystem shall deliver each sample within 750 ms of the start of its conversion. */
    }

    requirement <'MRTM-SEN-003'> MRTM_SEN_003 {
        doc /* The sensing subsystem shall measure the fridge air temperature with an accuracy of ±0.5 °C over the range 0 °C to 15 °C. */
    }

    requirement <'MRTM-SEN-004'> MRTM_SEN_004 {
        doc /* The sensing subsystem shall mark a sample invalid when its CRC-8 check fails or its value is outside -30 °C to 50 °C. */
    }

    requirement <'MRTM-SNI-001'> MRTM_SNI_001 {
        doc /* The sensor item shall start one probe conversion every 2 s and read the scratchpad 750 ms after the start. */
    }

    requirement <'MRTM-SNI-002'> MRTM_SNI_002 {
        doc /* The sensor item shall mark the sample invalid when the scratchpad CRC-8 fails or the value is outside -30 °C to 50 °C. */
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

    requirement <'MRTM-SUP-001'> MRTM_SUP_001 {
        doc /* The supervision subsystem shall restart the monitoring software within 2 s of a software watchdog timeout. */
    }

    requirement <'MRTM-SUP-002'> MRTM_SUP_002 {
        doc /* The supervision subsystem shall test the buzzer within 5 s and the backup alarm within 15 s of power-up. */
    }

    requirement <'MRTM-SUP-003'> MRTM_SUP_003 {
        doc /* The supervision subsystem shall refuse a stored allowed band that fails its CRC-32 check. */
    }

    requirement <'MRTM-SUP-004'> MRTM_SUP_004 {
        doc /* The supervision subsystem shall stop the watchdog service pulses within 2 s of the alarm item missing its 1 s cycle. */
    }

    requirement <'MRTM-SVI-001'> MRTM_SVI_001 {
        doc /* The supervisor item shall stop the watchdog service pulses within 2 s of a missed alarm heartbeat. */
    }

    requirement <'MRTM-SVI-002'> MRTM_SVI_002 {
        doc /* The supervisor item shall run the buzzer test within 5 s and the backup alarm test within 15 s of power-up. */
    }

    requirement <'MRTM-SVI-003'> MRTM_SVI_003 {
        doc /* The supervisor item shall load the allowed band only when its CRC-32 check passes. */
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
        doc /* The USB item shall refuse every write request from the USB host. */
    }

    dependency from MRTM_ALI_001 to MRTM_ALM_001;
    dependency from MRTM_ALI_002 to MRTM_ALM_003;
    dependency from MRTM_ALI_003 to MRTM_ALM_004;
    dependency from MRTM_ALI_004 to MRTM_ALM_005;
    dependency from MRTM_ALM_001 to MRTM_SYS_024;
    dependency from MRTM_ALM_002 to MRTM_SYS_002;
    dependency from MRTM_ALM_003 to MRTM_SYS_003;
    dependency from MRTM_ALM_003 to MRTM_PRF_002;
    dependency from MRTM_ALM_004 to MRTM_SYS_006;
    dependency from MRTM_ALM_004 to MRTM_IFC_002;
    dependency from MRTM_ALM_005 to MRTM_SAF_009;
    dependency from MRTM_ALM_005 to MRTM_SAF_010;
    dependency from MRTM_ALM_006 to MRTM_SYS_003;
    dependency from MRTM_ALM_007 to MRTM_SYS_018;
    dependency from MRTM_ALM_008 to MRTM_SAF_013;
    dependency from MRTM_BAT_001 to MRTM_PWR_002;
    dependency from MRTM_BKA_001 to MRTM_ALM_005;
    dependency from MRTM_BKA_002 to MRTM_ALM_008;
    dependency from MRTM_BKD_001 to MRTM_BKA_001;
    dependency from MRTM_BKH_001 to MRTM_BKA_002;
    dependency from MRTM_BKT_001 to MRTM_BKA_001;
    dependency from MRTM_BZR_001 to MRTM_ALM_003;
    dependency from MRTM_BZR_001 to MRTM_ALM_005;
    dependency from MRTM_DSI_001 to MRTM_DSP_001;
    dependency from MRTM_DSI_001 to MRTM_DSP_003;
    dependency from MRTM_DSI_002 to MRTM_DSP_002;
    dependency from MRTM_DSP_001 to MRTM_SYS_005;
    dependency from MRTM_DSP_001 to MRTM_SYS_007;
    dependency from MRTM_DSP_002 to MRTM_SYS_011;
    dependency from MRTM_DSP_002 to MRTM_PRF_004;
    dependency from MRTM_DSP_002 to MRTM_IFC_004;
    dependency from MRTM_DSP_003 to MRTM_SYS_013;
    dependency from MRTM_DSP_003 to MRTM_SAF_012;
    dependency from MRTM_DSP_003 to MRTM_SAF_016;
    dependency from MRTM_DSP_003 to MRTM_SYS_022;
    dependency from MRTM_ENV_001 to MRTM_SYS_016;
    dependency from MRTM_ENV_002 to MRTM_SYS_001;
    dependency from MRTM_ENV_003 to MRTM_SYS_001;
    dependency from MRTM_ENV_004 to MRTM_SYS_001;
    dependency from MRTM_EXI_001 to MRTM_ALM_001;
    dependency from MRTM_EXI_002 to MRTM_ALM_002;
    dependency from MRTM_EXI_003 to MRTM_ALM_007;
    dependency from MRTM_IFC_001 to MRTM_SYS_001;
    dependency from MRTM_IFC_002 to MRTM_SYS_006;
    dependency from MRTM_IFC_003 to MRTM_SYS_014;
    dependency from MRTM_IFC_004 to MRTM_SYS_005;
    dependency from MRTM_IND_001 to MRTM_ALM_001;
    dependency from MRTM_IND_002 to MRTM_ALM_004;
    dependency from MRTM_LGI_001 to MRTM_LOG_001;
    dependency from MRTM_LGI_002 to MRTM_LOG_002;
    dependency from MRTM_LOG_001 to MRTM_SAF_018;
    dependency from MRTM_LOG_001 to MRTM_SYS_008;
    dependency from MRTM_LOG_001 to MRTM_SYS_009;
    dependency from MRTM_LOG_001 to MRTM_SYS_010;
    dependency from MRTM_LOG_002 to MRTM_SYS_015;
    dependency from MRTM_LOG_003 to MRTM_SYS_014;
    dependency from MRTM_LOG_003 to MRTM_IFC_003;
    dependency from MRTM_LOG_003 to MRTM_PRF_003;
    dependency from MRTM_LOG_004 to MRTM_SYS_020;
    dependency from MRTM_LOG_004 to MRTM_SYS_008;
    dependency from MRTM_LOG_004 to MRTM_SAF_022;
    dependency from MRTM_MCU_001 to MRTM_SUP_001;
    dependency from MRTM_MNT_001 to MRTM_SYS_012;
    dependency from MRTM_MNT_002 to MRTM_SYS_016;
    dependency from MRTM_MNT_003 to MRTM_SYS_001;
    dependency from MRTM_OLD_001 to MRTM_DSP_002;
    dependency from MRTM_PPT_001 to MRTM_PWR_001;
    dependency from MRTM_PRB_001 to MRTM_SEN_002;
    dependency from MRTM_PRB_002 to MRTM_SEN_003;
    dependency from MRTM_PRB_003 to MRTM_SEN_004;
    dependency from MRTM_PRF_001 to MRTM_SYS_001;
    dependency from MRTM_PRF_002 to MRTM_SYS_003;
    dependency from MRTM_PRF_003 to MRTM_SYS_015;
    dependency from MRTM_PRF_004 to MRTM_SYS_011;
    dependency from MRTM_PWI_001 to MRTM_PWR_003;
    dependency from MRTM_PWI_002 to MRTM_PWR_003;
    dependency from MRTM_PWR_001 to MRTM_SYS_016;
    dependency from MRTM_PWR_002 to MRTM_ENV_001;
    dependency from MRTM_PWR_003 to MRTM_SAF_005;
    dependency from MRTM_PWR_003 to MRTM_SAF_008;
    dependency from MRTM_PWR_003 to MRTM_SYS_023;
    dependency from MRTM_RTC_001 to MRTM_LOG_004;
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
    dependency from MRTM_SEN_001 to MRTM_SYS_001;
    dependency from MRTM_SEN_002 to MRTM_SYS_024;
    dependency from MRTM_SEN_003 to MRTM_PRF_001;
    dependency from MRTM_SEN_003 to MRTM_ENV_004;
    dependency from MRTM_SEN_004 to MRTM_SYS_012;
    dependency from MRTM_SEN_004 to MRTM_SAF_003;
    dependency from MRTM_SNI_001 to MRTM_SEN_001;
    dependency from MRTM_SNI_001 to MRTM_SEN_002;
    dependency from MRTM_SNI_002 to MRTM_SEN_004;
    dependency from MRTM_SUP_001 to MRTM_SAF_004;
    dependency from MRTM_SUP_001 to MRTM_SAF_006;
    dependency from MRTM_SUP_002 to MRTM_SAF_007;
    dependency from MRTM_SUP_002 to MRTM_SAF_023;
    dependency from MRTM_SUP_003 to MRTM_SAF_017;
    dependency from MRTM_SUP_003 to MRTM_SYS_017;
    dependency from MRTM_SUP_004 to MRTM_SAF_010;
    dependency from MRTM_SVI_001 to MRTM_SUP_004;
    dependency from MRTM_SVI_001 to MRTM_SUP_001;
    dependency from MRTM_SVI_002 to MRTM_SUP_002;
    dependency from MRTM_SVI_003 to MRTM_SUP_003;
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
    dependency from MRTM_USI_001 to MRTM_LOG_003;
    dependency from MRTM_USI_002 to MRTM_LOG_003;
}
