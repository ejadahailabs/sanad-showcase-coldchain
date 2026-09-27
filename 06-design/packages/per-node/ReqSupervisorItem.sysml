package ReqSupervisorItem {
    comment /* GENERATED from the Markdown requirement corpus at a06e9cf06fcada64.
       Read-only: edit the Markdown requirement, not this file. Sanad regenerates it on
       every corpus change and the same corpus always gives byte-identical text. */

    requirement <'MRTM-SVI-001'> MRTM_SVI_001 {
        doc /* The supervisor item shall stop the watchdog service pulses within 2 s of a missed alarm heartbeat. */
    }

    requirement <'MRTM-SVI-002'> MRTM_SVI_002 {
        doc /* The supervisor item shall run the buzzer test within 5 s and the backup alarm test within 15 s of power-up. */
    }

    requirement <'MRTM-SVI-003'> MRTM_SVI_003 {
        doc /* When the stored band passes its CRC-32 check, and only then, the supervisor item shall set the **Allowed Band** from it. */
    }
}
