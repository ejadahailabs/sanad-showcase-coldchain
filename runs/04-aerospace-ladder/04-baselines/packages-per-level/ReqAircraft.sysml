package ReqAircraft {
    comment /* GENERATED from the Markdown requirement corpus at dc071cf5babac10d.
       Read-only: edit the Markdown requirement, not this file. Sanad regenerates it on
       every corpus change and the same corpus always gives byte-identical text. */

    requirement <'MRTM-FUN-001'> MRTM_FUN_001 {
        doc /* The monitor shall measure the fridge air temperature and show when the measurement is not valid. */
    }

    requirement <'MRTM-FUN-002'> MRTM_FUN_002 {
        doc /* The monitor shall warn clinic staff when the fridge air stays outside the allowed band longer than the confirmation time. */
    }

    requirement <'MRTM-FUN-003'> MRTM_FUN_003 {
        doc /* The monitor shall let clinic staff silence an excursion warning without ending the watch on the excursion. */
    }

    requirement <'MRTM-FUN-004'> MRTM_FUN_004 {
        doc /* The monitor shall keep an unchangeable record of every excursion and alarm event. */
    }

    requirement <'MRTM-FUN-005'> MRTM_FUN_005 {
        doc /* The monitor shall keep watching and warning while the mains power is lost. */
    }

    requirement <'MRTM-SOB-001'> MRTM_SOB_001 {
        doc /* No single failure shall cause the loss of the excursion warning without an alarm signal to clinic staff. */
    }

    requirement <'MRTM-SOB-002'> MRTM_SOB_002 {
        doc /* No single failure shall make the monitor judge the air against a band other than the stored band without an alarm signal. */
    }

    requirement <'MRTM-SOB-003'> MRTM_SOB_003 {
        doc /* The monitor shall bound probe drift by a calibration interval of 365 days and show staff when it has passed. */
    }

    requirement <'MRTM-SOB-004'> MRTM_SOB_004 {
        doc /* The monitor shall not sound the buzzer for an out-of-band period shorter than the 60 s confirmation time. */
    }

    requirement <'MRTM-SOB-005'> MRTM_SOB_005 {
        doc /* No single failure shall lose an excursion record without an event that shows the loss. */
    }

    requirement <'MRTM-STK-001'> MRTM_STK_001 {
        doc /* The monitor shall alert the nurse at the fridge when the fridge air temperature leaves the allowed band. */
    }

    requirement <'MRTM-STK-002'> MRTM_STK_002 {
        doc /* The monitor shall raise no audible alert for the temperature departure shorter than the excursion confirmation time. */
    }

    requirement <'MRTM-STK-003'> MRTM_STK_003 {
        doc /* The monitor shall let the nurse silence the alert. */
    }

    requirement <'MRTM-STK-004'> MRTM_STK_004 {
        doc /* The monitor shall display the current fridge air temperature to the nurse. */
    }

    requirement <'MRTM-STK-005'> MRTM_STK_005 {
        doc /* The monitor shall give the clinic manager the excursion history for audit. */
    }

    requirement <'MRTM-STK-006'> MRTM_STK_006 {
        doc /* The monitor shall protect the excursion history from change by the user. */
    }

    requirement <'MRTM-STK-007'> MRTM_STK_007 {
        doc /* The monitor shall tell the technician when the temperature probe fails. */
    }

    requirement <'MRTM-STK-008'> MRTM_STK_008 {
        doc /* The monitor shall keep monitoring during a mains power loss of up to 4 h. */
    }

    dependency from MRTM_FUN_001 to MRTM_STK_004;
    dependency from MRTM_FUN_001 to MRTM_STK_007;
    dependency from MRTM_FUN_002 to MRTM_STK_001;
    dependency from MRTM_FUN_002 to MRTM_STK_002;
    dependency from MRTM_FUN_003 to MRTM_STK_003;
    dependency from MRTM_FUN_004 to MRTM_STK_005;
    dependency from MRTM_FUN_004 to MRTM_STK_006;
    dependency from MRTM_FUN_005 to MRTM_STK_008;
    dependency from MRTM_SOB_001 to MRTM_FUN_002;
    dependency from MRTM_SOB_001 to MRTM_FUN_005;
    dependency from MRTM_SOB_002 to MRTM_FUN_002;
    dependency from MRTM_SOB_003 to MRTM_FUN_001;
    dependency from MRTM_SOB_004 to MRTM_FUN_002;
    dependency from MRTM_SOB_005 to MRTM_FUN_004;
}
