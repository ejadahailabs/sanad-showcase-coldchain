package ReqSensing {
    comment /* GENERATED from the Markdown requirement corpus at 738590cefa101b08.
       Read-only: edit the Markdown requirement, not this file. Sanad regenerates it on
       every corpus change and the same corpus always gives byte-identical text. */

    requirement <'MRTM-SEN-001'> MRTM_SEN_001 {
        doc /* The sensing subsystem shall deliver one fridge air temperature sample at a period of 2 s. */
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
}
