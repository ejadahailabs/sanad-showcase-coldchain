package ReqProbe {
    comment /* GENERATED from the Markdown requirement corpus at 1fce31426c3eae32.
       Read-only: edit the Markdown requirement, not this file. Sanad regenerates it on
       every corpus change and the same corpus always gives byte-identical text. */

    requirement <'MRTM-PRB-001'> MRTM_PRB_001 {
        doc /* The probe shall complete a 12-bit temperature conversion within 750 ms. */
    }

    requirement <'MRTM-PRB-002'> MRTM_PRB_002 {
        doc /* The probe shall read the air temperature with an accuracy of ±0.5 °C from -10 °C to 50 °C. */
    }

    requirement <'MRTM-PRB-003'> MRTM_PRB_003 {
        doc /* The probe shall send a CRC-8 value with every scratchpad read. */
    }
}
