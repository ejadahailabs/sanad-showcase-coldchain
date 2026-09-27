package ReqPowerItem {
    comment /* GENERATED from the Markdown requirement corpus at 0bf300b22414931e.
       Read-only: edit the Markdown requirement, not this file. Sanad regenerates it on
       every corpus change and the same corpus always gives byte-identical text. */

    requirement <'MRTM-PWI-001'> MRTM_PWI_001 {
        doc /* The power item shall post the mains-lost and mains-restored signals within 1 s of the mains sense edge. */
    }

    requirement <'MRTM-PWI-002'> MRTM_PWI_002 {
        doc /* The power item shall post the battery-low signal after 2 consecutive battery readings below 3.4 V. */
    }
}
