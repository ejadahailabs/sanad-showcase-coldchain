package ReqL2SoftwareSystem {
    comment /* GENERATED from the Markdown requirement corpus at 377a113228fd68be.
       Read-only: edit the Markdown requirement, not this file. Sanad regenerates it on
       every corpus change and the same corpus always gives byte-identical text. */

    requirement <'MRTM-SRS-001'> MRTM_SRS_001 {
        doc /* The software system shall read one fridge air temperature sample from the probe at a period of 2 s. */
    }

    requirement <'MRTM-SRS-002'> MRTM_SRS_002 {
        doc /* The software system shall command the low-priority excursion alarm signal within 1 s of the first valid out-of-band sample. */
    }

    requirement <'MRTM-SRS-003'> MRTM_SRS_003 {
        doc /* The software system shall confirm the excursion when 31 consecutive valid samples, spanning 60 s, are outside the allowed band. */
    }

    requirement <'MRTM-SRS-004'> MRTM_SRS_004 {
        doc /* The software system shall end the excursion after 31 consecutive valid samples, spanning 60 s, inside the allowed band. */
    }

    requirement <'MRTM-SRS-005'> MRTM_SRS_005 {
        doc /* The software system shall mark a sample invalid when its CRC-8 check fails or its value is outside -30 °C to 50 °C. */
    }

    requirement <'MRTM-SRS-006'> MRTM_SRS_006 {
        doc /* The software system shall switch the buzzer drive on within 1 s of excursion confirmation. */
    }

    requirement <'MRTM-SRS-007'> MRTM_SRS_007 {
        doc /* The software system shall switch the buzzer drive off within 1 s of a debounced acknowledge press. */
    }

    requirement <'MRTM-SRS-008'> MRTM_SRS_008 {
        doc /* The software system shall drive the confirmed excursion alarm sound as bursts of 10 pulses with a burst repetition interval from 2.5 s to 15 s. */
    }

    requirement <'MRTM-SRS-009'> MRTM_SRS_009 {
        doc /* The software system shall show the excursion warning within 1 s of excursion confirmation until the excursion ends. */
    }

    requirement <'MRTM-SRS-010'> MRTM_SRS_010 {
        doc /* The software system shall show the current temperature at 0.1 °C resolution, refreshed at a period of 10 s. */
    }

    requirement <'MRTM-SRS-011'> MRTM_SRS_011 {
        doc /* The software system shall show the probe fault, calibration due, band limits and log capacity messages within 1 s of their cause. */
    }

    requirement <'MRTM-SRS-012'> MRTM_SRS_012 {
        doc /* The software system shall store each event record in 2 separate flash sectors within 1 s of the event. */
    }

    requirement <'MRTM-SRS-013'> MRTM_SRS_013 {
        doc /* When the **Event Log** reaches its capacity, the software system shall keep the newest 10000 records in the **Event Log**. */
    }

    requirement <'MRTM-SRS-014'> MRTM_SRS_014 {
        doc /* The software system shall give the USB host read-only access to the event records within 30 s of connection. */
    }

    requirement <'MRTM-SRS-015'> MRTM_SRS_015 {
        doc /* The software system shall time-stamp each record with UTC at 1 s resolution. */
    }

    requirement <'MRTM-SRS-016'> MRTM_SRS_016 {
        doc /* The software system shall report mains loss, mains restore and battery voltage below 3.4 V within 1 s. */
    }

    requirement <'MRTM-SRS-017'> MRTM_SRS_017 {
        doc /* The software system shall stop the watchdog service pulses within 2 s of the alarm function missing its 1 s cycle. */
    }

    requirement <'MRTM-SRS-018'> MRTM_SRS_018 {
        doc /* The software system shall test the buzzer within 5 s and the backup alarm within 15 s of power-up. */
    }

    requirement <'MRTM-SRS-019'> MRTM_SRS_019 {
        doc /* When a stored allowed band fails its CRC-32 check, the software system shall disable that **Allowed Band**. */
    }
}
