package ReqL3SoftwareItem {
    comment /* GENERATED from the Markdown requirement corpus at e0d8435e52d9a158.
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

    requirement <'MRTM-DSI-001'> MRTM_DSI_001 {
        doc /* The display item shall redraw the frame within 1 s of a state change message. */
    }

    requirement <'MRTM-DSI-002'> MRTM_DSI_002 {
        doc /* The display item shall change the displayed temperature at most once per 10 s, at 0.1 °C resolution. */
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

    requirement <'MRTM-LGI-001'> MRTM_LGI_001 {
        doc /* The log item shall write each record with its CRC-32 to 2 separate flash sectors within 1 s of the event. */
    }

    requirement <'MRTM-LGI-002'> MRTM_LGI_002 {
        doc /* When the **Event Log** holds 10000 records, the log item shall write each new **Event Record** over the oldest one. */
    }

    requirement <'MRTM-LGI-003'> MRTM_LGI_003 {
        doc /* The log item shall stamp each record with the UTC second of the real-time clock at the time of the event. */
    }

    requirement <'MRTM-PWI-001'> MRTM_PWI_001 {
        doc /* The power item shall post the mains-lost and mains-restored signals within 1 s of the mains sense edge. */
    }

    requirement <'MRTM-PWI-002'> MRTM_PWI_002 {
        doc /* The power item shall post the battery-low signal after 2 consecutive battery readings below 3.4 V. */
    }

    requirement <'MRTM-SNI-001'> MRTM_SNI_001 {
        doc /* The sensor item shall start one probe conversion at a period of 2 s and read the scratchpad 750 ms after the start. */
    }

    requirement <'MRTM-SNI-002'> MRTM_SNI_002 {
        doc /* The sensor item shall mark the sample invalid when the scratchpad CRC-8 fails or the value is outside -30 °C to 50 °C. */
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

    requirement <'MRTM-USI-001'> MRTM_USI_001 {
        doc /* The USB item shall present the event log as a read-only mass-storage volume within 30 s of connection. */
    }

    requirement <'MRTM-USI-002'> MRTM_USI_002 {
        doc /* When the USB host sends a write request, the USB item shall inhibit the write to the **Event Log**. */
    }
}
