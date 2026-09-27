package ReqSupervisorItem {
    comment /* GENERATED from the Markdown requirement corpus at e3b0908a9e5f5393.
       Read-only: edit the Markdown requirement, not this file. Sanad regenerates it on
       every corpus change and the same corpus always gives byte-identical text. */

    requirement <'MRTM-SVI-001'> MRTM_SVI_001 {
        doc /* The supervisor item shall stop the watchdog service pulses within 2 s of a missed alarm heartbeat. */
    }

    requirement <'MRTM-SVI-002'> MRTM_SVI_002 {
        doc /* The supervisor item shall run the buzzer test within 5 s and the backup alarm test within 15 s of power-up. */
    }

    requirement <'MRTM-SVI-003'> MRTM_SVI_003 {
        doc /* The supervisor item shall load the allowed band only when its CRC-32 check passes. */
    }
}
