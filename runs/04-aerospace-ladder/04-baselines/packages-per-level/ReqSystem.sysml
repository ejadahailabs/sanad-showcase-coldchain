package ReqSystem {
    comment /* GENERATED from the Markdown requirement corpus at 8fc06dc2235115bb.
       Read-only: edit the Markdown requirement, not this file. Sanad regenerates it on
       every corpus change and the same corpus always gives byte-identical text. */

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
    dependency from MRTM_IFC_001 to MRTM_SYS_001;
    dependency from MRTM_IFC_002 to MRTM_SYS_006;
    dependency from MRTM_IFC_003 to MRTM_SYS_014;
    dependency from MRTM_IFC_004 to MRTM_SYS_005;
    dependency from MRTM_MNT_001 to MRTM_SYS_012;
    dependency from MRTM_MNT_002 to MRTM_SYS_016;
    dependency from MRTM_MNT_003 to MRTM_SYS_001;
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
}
