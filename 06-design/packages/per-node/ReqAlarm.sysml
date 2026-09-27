package ReqAlarm {
    comment /* GENERATED from the Markdown requirement corpus at 6f8ddaecf2b3c896.
       Read-only: edit the Markdown requirement, not this file. Sanad regenerates it on
       every corpus change and the same corpus always gives byte-identical text. */

    requirement <'MRTM-ALM-001'> MRTM_ALM_001 {
        doc /* The alarm subsystem shall show the low-priority excursion alarm signal within 1 s of the first valid out-of-band sample. */
    }

    requirement <'MRTM-ALM-002'> MRTM_ALM_002 {
        doc /* The alarm subsystem shall confirm the excursion when 31 consecutive valid samples are outside the allowed band. */
    }

    requirement <'MRTM-ALM-003'> MRTM_ALM_003 {
        doc /* The alarm subsystem shall sound the buzzer within 1 s of excursion confirmation. */
    }

    requirement <'MRTM-ALM-004'> MRTM_ALM_004 {
        doc /* The alarm subsystem shall stop the buzzer within 1 s of a debounced acknowledge press. */
    }

    requirement <'MRTM-ALM-005'> MRTM_ALM_005 {
        doc /* The alarm subsystem shall sound the buzzer from the backup alarm within 10 s of the last watchdog service pulse. */
    }

    requirement <'MRTM-ALM-006'> MRTM_ALM_006 {
        doc /* The alarm subsystem shall sound the confirmed excursion alarm as bursts of 10 pulses with a burst repetition interval from 2.5 s to 15 s. */
    }

    requirement <'MRTM-ALM-007'> MRTM_ALM_007 {
        doc /* The alarm subsystem shall end the excursion after 31 consecutive valid samples inside the allowed band. */
    }

    requirement <'MRTM-ALM-008'> MRTM_ALM_008 {
        doc /* The alarm subsystem shall sound the backup alarm for 60 s or more after the loss of both mains and battery power. */
    }
}
