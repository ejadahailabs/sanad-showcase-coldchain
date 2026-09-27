package ReqLogItem {
    comment /* GENERATED from the Markdown requirement corpus at 0bb2ecea70fa35cd.
       Read-only: edit the Markdown requirement, not this file. Sanad regenerates it on
       every corpus change and the same corpus always gives byte-identical text. */

    requirement <'MRTM-LGI-001'> MRTM_LGI_001 {
        doc /* The log item shall write each record with its CRC-32 to 2 separate flash sectors within 1 s of the event. */
    }

    requirement <'MRTM-LGI-002'> MRTM_LGI_002 {
        doc /* The log item shall keep the newest 10000 records and overwrite the oldest record when full. */
    }
}
