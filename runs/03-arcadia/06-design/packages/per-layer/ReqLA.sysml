package ReqLA {
    comment /* GENERATED from the Markdown requirement corpus at d742e5e64cee2fe1.
       Read-only: edit the Markdown requirement, not this file. Sanad regenerates it on
       every corpus change and the same corpus always gives byte-identical text. */

    requirement <'MRTM-LA-001'> MRTM_LA_001 {
        doc /* The alarm logical component shall show the low-priority excursion alarm signal within 1 s of the first valid out-of-band sample. */
    }

    requirement <'MRTM-LA-002'> MRTM_LA_002 {
        doc /* The alarm logical component shall confirm the excursion when 31 consecutive valid samples, spanning 60 s, are outside the allowed band. */
    }

    requirement <'MRTM-LA-003'> MRTM_LA_003 {
        doc /* The alarm logical component shall sound the buzzer within 1 s of excursion confirmation. */
    }

    requirement <'MRTM-LA-004'> MRTM_LA_004 {
        doc /* The alarm logical component shall stop the buzzer within 1 s of a debounced acknowledge press. */
    }

    requirement <'MRTM-LA-005'> MRTM_LA_005 {
        doc /* The alarm logical component shall sound the buzzer from the backup alarm within 10 s of the last watchdog service pulse. */
    }

    requirement <'MRTM-LA-006'> MRTM_LA_006 {
        doc /* The alarm logical component shall sound the confirmed excursion alarm as bursts of 10 pulses with a burst repetition interval from 2.5 s to 15 s. */
    }

    requirement <'MRTM-LA-007'> MRTM_LA_007 {
        doc /* The alarm logical component shall end the excursion after 31 consecutive valid samples, spanning 60 s, inside the allowed band. */
    }

    requirement <'MRTM-LA-008'> MRTM_LA_008 {
        doc /* The alarm logical component shall sound the backup alarm for 60 s or more after the loss of both mains and battery power. */
    }

    requirement <'MRTM-LA-009'> MRTM_LA_009 {
        doc /* The display logical component shall show the excursion warning within 1 s of excursion confirmation until the excursion ends. */
    }

    requirement <'MRTM-LA-010'> MRTM_LA_010 {
        doc /* The display logical component shall show the current temperature at 0.1 °C resolution in digits of 5 mm or more, refreshed at a period of 10 s. */
    }

    requirement <'MRTM-LA-011'> MRTM_LA_011 {
        doc /* The display logical component shall show the probe fault, calibration due, band limits and log capacity messages within 1 s of their cause. */
    }

    requirement <'MRTM-LA-012'> MRTM_LA_012 {
        doc /* The logging logical component shall store each event record in 2 separate flash sectors within 1 s of the event. */
    }

    requirement <'MRTM-LA-013'> MRTM_LA_013 {
        doc /* When the **Event Log** reaches its capacity, the logging logical component shall store the newest 10000 records in the **Event Log**. */
    }

    requirement <'MRTM-LA-014'> MRTM_LA_014 {
        doc /* The logging logical component shall give the USB host read-only access to the event records within 30 s of connection. */
    }

    requirement <'MRTM-LA-015'> MRTM_LA_015 {
        doc /* The logging logical component shall time-stamp each record with UTC at 1 s resolution with a drift of 2 s per day or less. */
    }

    requirement <'MRTM-LA-016'> MRTM_LA_016 {
        doc /* The power logical component shall switch the load to the battery within 100 ms of mains power loss. */
    }

    requirement <'MRTM-LA-017'> MRTM_LA_017 {
        doc /* The power logical component shall supply the monitor from the battery for 4 h. */
    }

    requirement <'MRTM-LA-018'> MRTM_LA_018 {
        doc /* The power logical component shall report mains loss, mains restore and battery voltage below 3.4 V within 1 s. */
    }

    requirement <'MRTM-LA-019'> MRTM_LA_019 {
        doc /* The sensing logical component shall deliver one fridge air temperature sample at a period of 2 s. */
    }

    requirement <'MRTM-LA-020'> MRTM_LA_020 {
        doc /* The sensing logical component shall deliver each sample within 750 ms of the start of its conversion. */
    }

    requirement <'MRTM-LA-021'> MRTM_LA_021 {
        doc /* The sensing logical component shall measure the fridge air temperature with an accuracy of ±0.5 °C over the range 0 °C to 15 °C. */
    }

    requirement <'MRTM-LA-022'> MRTM_LA_022 {
        doc /* The sensing logical component shall mark a sample invalid when its CRC-8 check fails or its value is outside -30 °C to 50 °C. */
    }

    requirement <'MRTM-LA-023'> MRTM_LA_023 {
        doc /* The supervision logical component shall restart the monitoring software within 2 s of a software watchdog timeout. */
    }

    requirement <'MRTM-LA-024'> MRTM_LA_024 {
        doc /* The supervision logical component shall test the buzzer within 5 s and the backup alarm within 15 s of power-up. */
    }

    requirement <'MRTM-LA-025'> MRTM_LA_025 {
        doc /* When a stored allowed band fails its CRC-32 check, the supervision logical component shall disable that **Allowed Band**. */
    }

    requirement <'MRTM-LA-026'> MRTM_LA_026 {
        doc /* The supervision logical component shall stop the watchdog service pulses within 2 s of the alarm item missing its 1 s cycle. */
    }
}
