package ReqSupervision {
    comment /* GENERATED from the Markdown requirement corpus at bb00413df741b55b.
       Read-only: edit the Markdown requirement, not this file. Sanad regenerates it on
       every corpus change and the same corpus always gives byte-identical text. */

    requirement <'MRTM-SUP-001'> MRTM_SUP_001 {
        doc /* The supervision subsystem shall restart the monitoring software within 2 s of a software watchdog timeout. */
    }

    requirement <'MRTM-SUP-002'> MRTM_SUP_002 {
        doc /* The supervision subsystem shall test the buzzer within 5 s and the backup alarm within 15 s of power-up. */
    }

    requirement <'MRTM-SUP-003'> MRTM_SUP_003 {
        doc /* When a stored allowed band fails its CRC-32 check, the supervision subsystem shall disable that **Allowed Band**. */
    }

    requirement <'MRTM-SUP-004'> MRTM_SUP_004 {
        doc /* The supervision subsystem shall stop the watchdog service pulses within 2 s of the alarm item missing its 1 s cycle. */
    }
}
