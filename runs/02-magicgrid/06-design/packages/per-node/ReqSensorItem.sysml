package ReqSensorItem {
    comment /* GENERATED from the Markdown requirement corpus at 051af00aabbb5b1a.
       Read-only: edit the Markdown requirement, not this file. Sanad regenerates it on
       every corpus change and the same corpus always gives byte-identical text. */

    requirement <'MRTM-SNI-001'> MRTM_SNI_001 {
        doc /* The sensor item shall start one probe conversion at a period of 2 s and read the scratchpad 750 ms after the start. */
    }

    requirement <'MRTM-SNI-002'> MRTM_SNI_002 {
        doc /* The sensor item shall mark the sample invalid when the scratchpad CRC-8 fails or the value is outside -30 °C to 50 °C. */
    }
}
