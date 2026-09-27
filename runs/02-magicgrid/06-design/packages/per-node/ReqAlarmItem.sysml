package ReqAlarmItem {
    comment /* GENERATED from the Markdown requirement corpus at 2294b67b27baa02b.
       Read-only: edit the Markdown requirement, not this file. Sanad regenerates it on
       every corpus change and the same corpus always gives byte-identical text. */

    requirement <'MRTM-ALI-001'> MRTM_ALI_001 {
        doc /* The alarm item shall flash the red indicator at 1 Hz within one 1 s alarm cycle of the early excursion report. */
    }

    requirement <'MRTM-ALI-002'> MRTM_ALI_002 {
        doc /* The alarm item shall switch the buzzer drive on within one 1 s alarm cycle of the confirmed excursion report. */
    }

    requirement <'MRTM-ALI-003'> MRTM_ALI_003 {
        doc /* The alarm item shall switch the buzzer drive off within one 1 s alarm cycle of a debounced acknowledge press. */
    }

    requirement <'MRTM-ALI-004'> MRTM_ALI_004 {
        doc /* The alarm item shall advance its heartbeat counter once per 1 s alarm cycle. */
    }
}
