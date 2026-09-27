package ReqProbe {
    comment /* GENERATED from the Markdown requirement corpus at 6fd5b52619b42b91.
       Read-only: edit the Markdown requirement, not this file. Sanad regenerates it on
       every corpus change and the same corpus always gives byte-identical text. */

    requirement <'MRTM-PRB-001'> MRTM_PRB_001 {
        doc /* The probe shall complete a 12-bit temperature conversion within 750 ms. */
    }

    requirement <'MRTM-PRB-002'> MRTM_PRB_002 {
        doc /* The probe shall read the air temperature with an accuracy of ±0.5 °C from -10 °C to 50 °C. */
    }

    requirement <'MRTM-PRB-003'> MRTM_PRB_003 {
        doc /* When the sensor item reads the scratchpad, the probe shall send a CRC-8 value with the **Sample** data. */
    }
}
