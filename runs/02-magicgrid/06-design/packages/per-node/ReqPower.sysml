package ReqPower {
    comment /* GENERATED from the Markdown requirement corpus at 799e5056775518a3.
       Read-only: edit the Markdown requirement, not this file. Sanad regenerates it on
       every corpus change and the same corpus always gives byte-identical text. */

    requirement <'MRTM-PWR-001'> MRTM_PWR_001 {
        doc /* The power subsystem shall switch the load to the battery within 100 ms of mains power loss. */
    }

    requirement <'MRTM-PWR-002'> MRTM_PWR_002 {
        doc /* The power subsystem shall supply the monitor from the battery for 4 h. */
    }

    requirement <'MRTM-PWR-003'> MRTM_PWR_003 {
        doc /* The power subsystem shall report mains loss, mains restore and battery voltage below 3.4 V within 1 s. */
    }
}
