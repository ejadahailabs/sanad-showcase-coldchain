package ProjectRequirements {
    comment /* GENERATED from the Markdown requirement corpus at f83f01ed804991e2.
       Read-only: edit the Markdown requirement, not this file. Sanad regenerates it on
       every corpus change and the same corpus always gives byte-identical text. */

    requirement <'MRTM-CI-001'> MRTM_CI_001 {
        doc /* The firmware configuration item shall be released as one binary image identified by a version number and a SHA-256 checksum, and the monitor shall show that version number at power-up. */
    }

    requirement <'MRTM-CI-002'> MRTM_CI_002 {
        doc /* The main board configuration item shall carry a part number and revision on its label, and its bill of materials shall list the microcontroller, real-time clock, indicators, acknowledge button, buzzer stage and power path at that revision. */
    }

    requirement <'MRTM-CI-003'> MRTM_CI_003 {
        doc /* The probe configuration item shall carry a part number and revision on its cable label, and a replacement probe of the same part number shall meet the ±0.5 °C accuracy without calibration. */
    }

    requirement <'MRTM-CI-004'> MRTM_CI_004 {
        doc /* The display configuration item shall carry a part number and revision, and its bill of materials entry shall name the panel's character height of 5 mm or more. */
    }

    requirement <'MRTM-CI-005'> MRTM_CI_005 {
        doc /* The backup alarm configuration item shall carry a part number and revision on its label, and its bill of materials shall list the backup timer, the backup driver and the hold-up store at that revision. */
    }

    requirement <'MRTM-CI-006'> MRTM_CI_006 {
        doc /* The battery configuration item shall carry a part number, a revision and a manufacturing date code on its label. */
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

    requirement <'MRTM-LA-001'> MRTM_LA_001 {
        doc /* The alarm logical component shall show the low-priority excursion alarm signal within 1 s of the first valid out-of-band sample. */
    }

    requirement <'MRTM-LA-002'> MRTM_LA_002 {
        doc /* The alarm logical component shall confirm the excursion when 31 consecutive valid samples, spanning 60 s, are outside the allowed band. */
    }

    requirement <'MRTM-LA-003'> MRTM_LA_003 {
        doc /* The alarm logical component shall sound the buzzer within 1 s of excursion confirmation. */
    }

    requirement <'MRTM-LA-004'> MRTM_LA_004 {
        doc /* The alarm logical component shall stop the buzzer within 1 s of a debounced acknowledge press. */
    }

    requirement <'MRTM-LA-005'> MRTM_LA_005 {
        doc /* The alarm logical component shall sound the buzzer from the backup alarm within 10 s of the last watchdog service pulse. */
    }

    requirement <'MRTM-LA-006'> MRTM_LA_006 {
        doc /* The alarm logical component shall sound the confirmed excursion alarm as bursts of 10 pulses with a burst repetition interval from 2.5 s to 15 s. */
    }

    requirement <'MRTM-LA-007'> MRTM_LA_007 {
        doc /* The alarm logical component shall end the excursion after 31 consecutive valid samples, spanning 60 s, inside the allowed band. */
    }

    requirement <'MRTM-LA-008'> MRTM_LA_008 {
        doc /* The alarm logical component shall sound the backup alarm for 60 s or more after the loss of both mains and battery power. */
    }

    requirement <'MRTM-LA-009'> MRTM_LA_009 {
        doc /* The display logical component shall show the excursion warning within 1 s of excursion confirmation until the excursion ends. */
    }

    requirement <'MRTM-LA-010'> MRTM_LA_010 {
        doc /* The display logical component shall show the current temperature at 0.1 °C resolution in digits of 5 mm or more, refreshed at a period of 10 s. */
    }

    requirement <'MRTM-LA-011'> MRTM_LA_011 {
        doc /* The display logical component shall show the probe fault, calibration due, band limits and log capacity messages within 1 s of their cause. */
    }

    requirement <'MRTM-LA-012'> MRTM_LA_012 {
        doc /* The logging logical component shall store each event record in 2 separate flash sectors within 1 s of the event. */
    }

    requirement <'MRTM-LA-013'> MRTM_LA_013 {
        doc /* When the **Event Log** reaches its capacity, the logging logical component shall store the newest 10000 records in the **Event Log**. */
    }

    requirement <'MRTM-LA-014'> MRTM_LA_014 {
        doc /* The logging logical component shall give the USB host read-only access to the event records within 30 s of connection. */
    }

    requirement <'MRTM-LA-015'> MRTM_LA_015 {
        doc /* The logging logical component shall time-stamp each record with UTC at 1 s resolution with a drift of 2 s per day or less. */
    }

    requirement <'MRTM-LA-016'> MRTM_LA_016 {
        doc /* The power logical component shall switch the load to the battery within 100 ms of mains power loss. */
    }

    requirement <'MRTM-LA-017'> MRTM_LA_017 {
        doc /* The power logical component shall supply the monitor from the battery for 4 h. */
    }

    requirement <'MRTM-LA-018'> MRTM_LA_018 {
        doc /* The power logical component shall report mains loss, mains restore and battery voltage below 3.4 V within 1 s. */
    }

    requirement <'MRTM-LA-019'> MRTM_LA_019 {
        doc /* The sensing logical component shall deliver one fridge air temperature sample at a period of 2 s. */
    }

    requirement <'MRTM-LA-020'> MRTM_LA_020 {
        doc /* The sensing logical component shall deliver each sample within 750 ms of the start of its conversion. */
    }

    requirement <'MRTM-LA-021'> MRTM_LA_021 {
        doc /* The sensing logical component shall measure the fridge air temperature with an accuracy of ±0.5 °C over the range 0 °C to 15 °C. */
    }

    requirement <'MRTM-LA-022'> MRTM_LA_022 {
        doc /* The sensing logical component shall mark a sample invalid when its CRC-8 check fails or its value is outside -30 °C to 50 °C. */
    }

    requirement <'MRTM-LA-023'> MRTM_LA_023 {
        doc /* The supervision logical component shall restart the monitoring software within 2 s of a software watchdog timeout. */
    }

    requirement <'MRTM-LA-024'> MRTM_LA_024 {
        doc /* The supervision logical component shall test the buzzer within 5 s and the backup alarm within 15 s of power-up. */
    }

    requirement <'MRTM-LA-025'> MRTM_LA_025 {
        doc /* When a stored allowed band fails its CRC-32 check, the supervision logical component shall disable that **Allowed Band**. */
    }

    requirement <'MRTM-LA-026'> MRTM_LA_026 {
        doc /* The supervision logical component shall stop the watchdog service pulses within 2 s of the alarm item missing its 1 s cycle. */
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

    requirement <'MRTM-PH-001'> MRTM_PH_001 {
        doc /* The backup alarm shall drive the buzzer within 10 s of the last watchdog service pulse. */
    }

    requirement <'MRTM-PH-002'> MRTM_PH_002 {
        doc /* The backup alarm shall drive the buzzer for 60 s or more after the loss of both mains and battery power. */
    }

    requirement <'MRTM-PH-003'> MRTM_PH_003 {
        doc /* The backup driver shall drive the buzzer backup input within 100 ms of the timeout output. */
    }

    requirement <'MRTM-PH-004'> MRTM_PH_004 {
        doc /* The backup timer shall assert its timeout output 9 s ± 0.9 s after the last service pulse. */
    }

    requirement <'MRTM-PH-005'> MRTM_PH_005 {
        doc /* The hold-up store shall supply the backup timer and the backup driver for 60 s or more after all power is lost. */
    }

    requirement <'MRTM-PH-006'> MRTM_PH_006 {
        doc /* The buzzer shall produce a sound pressure level of 65 dB(A) or more at 1 m when either drive input is active. */
    }

    requirement <'MRTM-PH-007'> MRTM_PH_007 {
        doc /* The red indicator shall follow its drive input within 10 ms. */
    }

    requirement <'MRTM-PH-008'> MRTM_PH_008 {
        doc /* While a clinic staff member presses the acknowledge button, the button shall close the contact that signals an **Acknowledgement**. */
    }

    requirement <'MRTM-PH-009'> MRTM_PH_009 {
        doc /* The display panel shall draw the temperature digits at a character height of 5 mm or more. */
    }

    requirement <'MRTM-PH-010'> MRTM_PH_010 {
        doc /* The real-time clock shall keep time with a drift of 2 s per day or less from 10 °C to 35 °C. */
    }

    requirement <'MRTM-PH-011'> MRTM_PH_011 {
        doc /* The battery shall store 2000 mAh or more at 3.7 V nominal. */
    }

    requirement <'MRTM-PH-012'> MRTM_PH_012 {
        doc /* The power path shall switch the load from mains to battery within 100 ms. */
    }

    requirement <'MRTM-PH-013'> MRTM_PH_013 {
        doc /* The probe shall complete a 12-bit temperature conversion within 750 ms. */
    }

    requirement <'MRTM-PH-014'> MRTM_PH_014 {
        doc /* The probe shall read the air temperature with an accuracy of ±0.5 °C from -10 °C to 50 °C. */
    }

    requirement <'MRTM-PH-015'> MRTM_PH_015 {
        doc /* When the sensor item reads the scratchpad, the probe shall send a CRC-8 value with the **Sample** data. */
    }

    requirement <'MRTM-PH-016'> MRTM_PH_016 {
        doc /* The microcontroller shall reset within 1 s of its hardware watchdog expiry. */
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

    requirement <'MRTM-SW-001'> MRTM_SW_001 {
        doc /* The alarm item shall flash the red indicator at 1 Hz within one 1 s alarm cycle of the early excursion report. */
    }

    requirement <'MRTM-SW-002'> MRTM_SW_002 {
        doc /* The alarm item shall switch the buzzer drive on within one 1 s alarm cycle of the confirmed excursion report. */
    }

    requirement <'MRTM-SW-003'> MRTM_SW_003 {
        doc /* The alarm item shall switch the buzzer drive off within one 1 s alarm cycle of a debounced acknowledge press. */
    }

    requirement <'MRTM-SW-004'> MRTM_SW_004 {
        doc /* The alarm item shall advance its heartbeat counter once per 1 s alarm cycle. */
    }

    requirement <'MRTM-SW-005'> MRTM_SW_005 {
        doc /* The excursion item shall report the early excursion within the 2 s sample period of the first valid sample outside the allowed band. */
    }

    requirement <'MRTM-SW-006'> MRTM_SW_006 {
        doc /* The excursion item shall report the confirmed excursion at the 31st consecutive valid sample outside the allowed band, 60 s after the first of them. */
    }

    requirement <'MRTM-SW-007'> MRTM_SW_007 {
        doc /* The excursion item shall report the excursion end at the 31st consecutive valid sample inside the allowed band, 60 s after the first of them. */
    }

    requirement <'MRTM-SW-008'> MRTM_SW_008 {
        doc /* The display item shall redraw the frame within 1 s of a state change message. */
    }

    requirement <'MRTM-SW-009'> MRTM_SW_009 {
        doc /* The display item shall change the displayed temperature at most once per 10 s, at 0.1 °C resolution. */
    }

    requirement <'MRTM-SW-010'> MRTM_SW_010 {
        doc /* The log item shall write each record with its CRC-32 to 2 separate flash sectors within 1 s of the event. */
    }

    requirement <'MRTM-SW-011'> MRTM_SW_011 {
        doc /* When the **Event Log** holds 10000 records, the log item shall write each new **Event Record** over the oldest one. */
    }

    requirement <'MRTM-SW-012'> MRTM_SW_012 {
        doc /* The USB item shall present the event log as a read-only mass-storage volume within 30 s of connection. */
    }

    requirement <'MRTM-SW-013'> MRTM_SW_013 {
        doc /* When the USB host sends a write request, the USB item shall inhibit the write to the **Event Log**. */
    }

    requirement <'MRTM-SW-014'> MRTM_SW_014 {
        doc /* The power item shall post the mains-lost and mains-restored signals within 1 s of the mains sense edge. */
    }

    requirement <'MRTM-SW-015'> MRTM_SW_015 {
        doc /* The power item shall post the battery-low signal after 2 consecutive battery readings below 3.4 V. */
    }

    requirement <'MRTM-SW-016'> MRTM_SW_016 {
        doc /* The sensor item shall start one probe conversion at a period of 2 s and read the scratchpad 750 ms after the start. */
    }

    requirement <'MRTM-SW-017'> MRTM_SW_017 {
        doc /* The sensor item shall mark the sample invalid when the scratchpad CRC-8 fails or the value is outside -30 °C to 50 °C. */
    }

    requirement <'MRTM-SW-018'> MRTM_SW_018 {
        doc /* The supervisor item shall stop the watchdog service pulses within 2 s of a missed alarm heartbeat. */
    }

    requirement <'MRTM-SW-019'> MRTM_SW_019 {
        doc /* The supervisor item shall run the buzzer test within 5 s and the backup alarm test within 15 s of power-up. */
    }

    requirement <'MRTM-SW-020'> MRTM_SW_020 {
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

    dependency from MRTM_CI_001 to MRTM_SW_001;
    dependency from MRTM_CI_001 to MRTM_SW_002;
    dependency from MRTM_CI_001 to MRTM_SW_003;
    dependency from MRTM_CI_001 to MRTM_SW_004;
    dependency from MRTM_CI_001 to MRTM_SW_005;
    dependency from MRTM_CI_001 to MRTM_SW_006;
    dependency from MRTM_CI_001 to MRTM_SW_007;
    dependency from MRTM_CI_001 to MRTM_SW_008;
    dependency from MRTM_CI_001 to MRTM_SW_009;
    dependency from MRTM_CI_001 to MRTM_SW_010;
    dependency from MRTM_CI_001 to MRTM_SW_011;
    dependency from MRTM_CI_001 to MRTM_SW_012;
    dependency from MRTM_CI_001 to MRTM_SW_013;
    dependency from MRTM_CI_001 to MRTM_SW_014;
    dependency from MRTM_CI_001 to MRTM_SW_015;
    dependency from MRTM_CI_001 to MRTM_SW_016;
    dependency from MRTM_CI_001 to MRTM_SW_017;
    dependency from MRTM_CI_001 to MRTM_SW_018;
    dependency from MRTM_CI_001 to MRTM_SW_019;
    dependency from MRTM_CI_001 to MRTM_SW_020;
    dependency from MRTM_CI_002 to MRTM_PH_006;
    dependency from MRTM_CI_002 to MRTM_PH_007;
    dependency from MRTM_CI_002 to MRTM_PH_008;
    dependency from MRTM_CI_002 to MRTM_PH_010;
    dependency from MRTM_CI_002 to MRTM_PH_012;
    dependency from MRTM_CI_002 to MRTM_PH_016;
    dependency from MRTM_CI_003 to MRTM_PH_013;
    dependency from MRTM_CI_003 to MRTM_PH_014;
    dependency from MRTM_CI_003 to MRTM_PH_015;
    dependency from MRTM_CI_004 to MRTM_PH_009;
    dependency from MRTM_CI_005 to MRTM_PH_001;
    dependency from MRTM_CI_005 to MRTM_PH_002;
    dependency from MRTM_CI_005 to MRTM_PH_003;
    dependency from MRTM_CI_005 to MRTM_PH_004;
    dependency from MRTM_CI_005 to MRTM_PH_005;
    dependency from MRTM_CI_006 to MRTM_PH_011;
    dependency from MRTM_ENV_001 to MRTM_SYS_016;
    dependency from MRTM_ENV_002 to MRTM_SYS_001;
    dependency from MRTM_ENV_003 to MRTM_SYS_001;
    dependency from MRTM_ENV_004 to MRTM_SYS_001;
    dependency from MRTM_IFC_001 to MRTM_SYS_001;
    dependency from MRTM_IFC_002 to MRTM_SYS_006;
    dependency from MRTM_IFC_003 to MRTM_SYS_014;
    dependency from MRTM_IFC_004 to MRTM_SYS_005;
    dependency from MRTM_LA_001 to MRTM_SYS_024;
    dependency from MRTM_LA_002 to MRTM_SYS_002;
    dependency from MRTM_LA_003 to MRTM_SYS_003;
    dependency from MRTM_LA_003 to MRTM_PRF_002;
    dependency from MRTM_LA_004 to MRTM_SYS_006;
    dependency from MRTM_LA_004 to MRTM_IFC_002;
    dependency from MRTM_LA_005 to MRTM_SAF_009;
    dependency from MRTM_LA_005 to MRTM_SAF_010;
    dependency from MRTM_LA_006 to MRTM_SYS_003;
    dependency from MRTM_LA_007 to MRTM_SYS_018;
    dependency from MRTM_LA_008 to MRTM_SAF_013;
    dependency from MRTM_LA_009 to MRTM_SYS_005;
    dependency from MRTM_LA_009 to MRTM_SYS_007;
    dependency from MRTM_LA_010 to MRTM_SYS_011;
    dependency from MRTM_LA_010 to MRTM_PRF_004;
    dependency from MRTM_LA_010 to MRTM_IFC_004;
    dependency from MRTM_LA_011 to MRTM_SYS_013;
    dependency from MRTM_LA_011 to MRTM_SAF_012;
    dependency from MRTM_LA_011 to MRTM_SAF_016;
    dependency from MRTM_LA_011 to MRTM_SYS_022;
    dependency from MRTM_LA_012 to MRTM_SAF_018;
    dependency from MRTM_LA_012 to MRTM_SYS_008;
    dependency from MRTM_LA_012 to MRTM_SYS_009;
    dependency from MRTM_LA_012 to MRTM_SYS_010;
    dependency from MRTM_LA_013 to MRTM_SYS_015;
    dependency from MRTM_LA_014 to MRTM_SYS_014;
    dependency from MRTM_LA_014 to MRTM_IFC_003;
    dependency from MRTM_LA_014 to MRTM_PRF_003;
    dependency from MRTM_LA_015 to MRTM_SYS_020;
    dependency from MRTM_LA_015 to MRTM_SYS_008;
    dependency from MRTM_LA_015 to MRTM_SAF_022;
    dependency from MRTM_LA_016 to MRTM_SYS_016;
    dependency from MRTM_LA_017 to MRTM_ENV_001;
    dependency from MRTM_LA_018 to MRTM_SAF_005;
    dependency from MRTM_LA_018 to MRTM_SAF_008;
    dependency from MRTM_LA_018 to MRTM_SYS_023;
    dependency from MRTM_LA_019 to MRTM_SYS_001;
    dependency from MRTM_LA_020 to MRTM_SYS_024;
    dependency from MRTM_LA_021 to MRTM_PRF_001;
    dependency from MRTM_LA_021 to MRTM_ENV_004;
    dependency from MRTM_LA_022 to MRTM_SYS_012;
    dependency from MRTM_LA_022 to MRTM_SAF_003;
    dependency from MRTM_LA_023 to MRTM_SAF_004;
    dependency from MRTM_LA_023 to MRTM_SAF_006;
    dependency from MRTM_LA_024 to MRTM_SAF_007;
    dependency from MRTM_LA_024 to MRTM_SAF_023;
    dependency from MRTM_LA_025 to MRTM_SAF_017;
    dependency from MRTM_LA_025 to MRTM_SYS_017;
    dependency from MRTM_LA_026 to MRTM_SAF_010;
    dependency from MRTM_MNT_001 to MRTM_SYS_012;
    dependency from MRTM_MNT_002 to MRTM_SYS_016;
    dependency from MRTM_MNT_003 to MRTM_SYS_001;
    dependency from MRTM_PH_001 to MRTM_LA_005;
    dependency from MRTM_PH_002 to MRTM_LA_008;
    dependency from MRTM_PH_003 to MRTM_LA_005;
    dependency from MRTM_PH_004 to MRTM_LA_005;
    dependency from MRTM_PH_005 to MRTM_LA_008;
    dependency from MRTM_PH_006 to MRTM_LA_003;
    dependency from MRTM_PH_006 to MRTM_LA_005;
    dependency from MRTM_PH_007 to MRTM_LA_001;
    dependency from MRTM_PH_008 to MRTM_LA_004;
    dependency from MRTM_PH_009 to MRTM_LA_010;
    dependency from MRTM_PH_010 to MRTM_LA_015;
    dependency from MRTM_PH_011 to MRTM_LA_017;
    dependency from MRTM_PH_012 to MRTM_LA_016;
    dependency from MRTM_PH_013 to MRTM_LA_020;
    dependency from MRTM_PH_014 to MRTM_LA_021;
    dependency from MRTM_PH_015 to MRTM_LA_022;
    dependency from MRTM_PH_016 to MRTM_LA_023;
    dependency from MRTM_PRF_001 to MRTM_SYS_001;
    dependency from MRTM_PRF_002 to MRTM_SYS_003;
    dependency from MRTM_PRF_003 to MRTM_SYS_015;
    dependency from MRTM_PRF_004 to MRTM_SYS_011;
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
    dependency from MRTM_SW_001 to MRTM_LA_001;
    dependency from MRTM_SW_002 to MRTM_LA_003;
    dependency from MRTM_SW_003 to MRTM_LA_004;
    dependency from MRTM_SW_004 to MRTM_LA_005;
    dependency from MRTM_SW_005 to MRTM_LA_001;
    dependency from MRTM_SW_006 to MRTM_LA_002;
    dependency from MRTM_SW_007 to MRTM_LA_007;
    dependency from MRTM_SW_008 to MRTM_LA_009;
    dependency from MRTM_SW_008 to MRTM_LA_011;
    dependency from MRTM_SW_009 to MRTM_LA_010;
    dependency from MRTM_SW_010 to MRTM_LA_012;
    dependency from MRTM_SW_011 to MRTM_LA_013;
    dependency from MRTM_SW_012 to MRTM_LA_014;
    dependency from MRTM_SW_013 to MRTM_LA_014;
    dependency from MRTM_SW_014 to MRTM_LA_018;
    dependency from MRTM_SW_015 to MRTM_LA_018;
    dependency from MRTM_SW_016 to MRTM_LA_019;
    dependency from MRTM_SW_016 to MRTM_LA_020;
    dependency from MRTM_SW_017 to MRTM_LA_022;
    dependency from MRTM_SW_018 to MRTM_LA_026;
    dependency from MRTM_SW_018 to MRTM_LA_023;
    dependency from MRTM_SW_019 to MRTM_LA_024;
    dependency from MRTM_SW_020 to MRTM_LA_025;
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
}
