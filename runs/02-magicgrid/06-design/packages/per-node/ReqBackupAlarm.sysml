package ReqBackupAlarm {
    comment /* GENERATED from the Markdown requirement corpus at 70d4306f95bf4209.
       Read-only: edit the Markdown requirement, not this file. Sanad regenerates it on
       every corpus change and the same corpus always gives byte-identical text. */

    requirement <'MRTM-BKA-001'> MRTM_BKA_001 {
        doc /* The backup alarm shall drive the buzzer within 10 s of the last watchdog service pulse. */
    }

    requirement <'MRTM-BKA-002'> MRTM_BKA_002 {
        doc /* The backup alarm shall drive the buzzer for 60 s or more after the loss of both mains and battery power. */
    }
}
