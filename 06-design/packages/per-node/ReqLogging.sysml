package ReqLogging {
    comment /* GENERATED from the Markdown requirement corpus at 74eef786303f3f64.
       Read-only: edit the Markdown requirement, not this file. Sanad regenerates it on
       every corpus change and the same corpus always gives byte-identical text. */

    requirement <'MRTM-LOG-001'> MRTM_LOG_001 {
        doc /* The logging subsystem shall store each event record in 2 separate flash sectors within 1 s of the event. */
    }

    requirement <'MRTM-LOG-002'> MRTM_LOG_002 {
        doc /* The logging subsystem shall retain the newest 10000 event records. */
    }

    requirement <'MRTM-LOG-003'> MRTM_LOG_003 {
        doc /* The logging subsystem shall give the USB host read-only access to the event records within 30 s of connection. */
    }

    requirement <'MRTM-LOG-004'> MRTM_LOG_004 {
        doc /* The logging subsystem shall time-stamp each record with UTC at 1 s resolution with a drift of 2 s per day or less. */
    }
}
