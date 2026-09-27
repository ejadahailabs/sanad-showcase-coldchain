package ReqL2HardwareItem {
    comment /* GENERATED from the Markdown requirement corpus at eef82bcba8f500ee.
       Read-only: edit the Markdown requirement, not this file. Sanad regenerates it on
       every corpus change and the same corpus always gives byte-identical text. */

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
}
