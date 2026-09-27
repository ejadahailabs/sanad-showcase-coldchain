package ReqPA {
    comment /* GENERATED from the Markdown requirement corpus at 48d9bed17debf7d3.
       Read-only: edit the Markdown requirement, not this file. Sanad regenerates it on
       every corpus change and the same corpus always gives byte-identical text. */

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
}
