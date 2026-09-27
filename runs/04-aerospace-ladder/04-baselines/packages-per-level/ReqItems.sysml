package ReqItems {
    comment /* GENERATED from the Markdown requirement corpus at 9c111547f3e08441.
       Read-only: edit the Markdown requirement, not this file. Sanad regenerates it on
       every corpus change and the same corpus always gives byte-identical text. */
    private import RequirementDerivation::*;

    requirement <'MRTM-HLR-001'> MRTM_HLR_001 {
        doc /* The alarm software item shall start one probe conversion at a period of 2 s and read the scratchpad 750 ms after the start. */
    }

    requirement <'MRTM-HLR-002'> MRTM_HLR_002 {
        doc /* The alarm software item shall mark a sample invalid when its CRC-8 check fails or its value is outside -30 °C to 50 °C. */
    }

    requirement <'MRTM-HLR-003'> MRTM_HLR_003 {
        doc /* The alarm software item shall declare a probe fault at once for an out-of-range sample and after 30 s without a valid sample. */
    }

    requirement <'MRTM-HLR-004'> MRTM_HLR_004 {
        doc /* The alarm software item shall report the early excursion at the first valid sample outside the allowed band. */
    }

    requirement <'MRTM-HLR-005'> MRTM_HLR_005 {
        doc /* The alarm software item shall report the confirmed excursion at the 31st consecutive valid sample outside the allowed band, 60 s after the first of them. */
    }

    requirement <'MRTM-HLR-006'> MRTM_HLR_006 {
        doc /* The alarm software item shall report the excursion end, with its peak, at the 31st consecutive valid sample inside the allowed band. */
    }

    requirement <'MRTM-HLR-007'> MRTM_HLR_007 {
        doc /* The alarm software item shall flash the red indicator at 1 Hz, without the buzzer, within one 1 s alarm cycle of the early excursion report. */
    }

    requirement <'MRTM-HLR-008'> MRTM_HLR_008 {
        doc /* The alarm software item shall switch the buzzer drive on, and the red indicator to 2 Hz, within one 1 s alarm cycle of the confirmed excursion report. */
    }

    requirement <'MRTM-HLR-009'> MRTM_HLR_009 {
        doc /* The alarm software item shall switch the buzzer drive off within one 1 s alarm cycle of an acknowledge press stable for 50 ms. */
    }

    requirement <'MRTM-HLR-010'> MRTM_HLR_010 {
        doc /* The alarm software item shall advance its heartbeat counter once per 1 s alarm cycle. */
    }

    requirement <'MRTM-HLR-011'> MRTM_HLR_011 {
        doc /* The alarm software item shall switch the buzzer drive on again 15 min after an acknowledge while the excursion is still open. */
    }

    requirement <'MRTM-HLR-012'> MRTM_HLR_012 {
        doc /* While a probe fault is declared, the alarm software item shall drive the buzzer 1 s on and 1 s off. */
    }

    requirement <'MRTM-HLR-013'> MRTM_HLR_013 {
        doc /* When the buzzer draws no current for 5 consecutive alarm cycles while driven, the alarm software item shall flash the red indicator at 4 Hz and log a buzzer fault. */
    }

    requirement <'MRTM-HLR-014'> MRTM_HLR_014 {
        doc /* The alarm software item shall sound an unacknowledged excursion alarm again within 2 s of a restart. */
    }

    requirement <'MRTM-HLR-015'> MRTM_HLR_015 {
        doc /* The alarm software item shall ignore an acknowledge press held for 60 s until the button is released. */
    }

    requirement <'MRTM-HLR-016'> MRTM_HLR_016 {
        doc /* The platform software item shall stop the watchdog service pulses within 2 s of the alarm heartbeat stopping. */
    }

    requirement <'MRTM-HLR-017'> MRTM_HLR_017 {
        doc /* The platform software item shall restart the monitoring software within 2 s of a task watchdog timeout. */
    }

    requirement <'MRTM-HLR-018'> MRTM_HLR_018 {
        doc /* The platform software item shall test the buzzer within 5 s and the backup alarm within 15 s of power-up. */
    }

    requirement <'MRTM-HLR-019'> MRTM_HLR_019 {
        doc /* The platform software item shall enter fail-safe, instead of monitoring, when the stored band fails its CRC-32 check. */
    }

    requirement <'MRTM-HLR-020'> MRTM_HLR_020 {
        doc /* The platform software item shall post the mains-lost and mains-restored events within 1 s of the mains sense edge. */
    }

    requirement <'MRTM-HLR-021'> MRTM_HLR_021 {
        doc /* The platform software item shall post the battery-low signal after 2 consecutive battery readings below 3.4 V. */
    }

    requirement <'MRTM-HLR-022'> MRTM_HLR_022 {
        doc /* The platform software item shall set the calibration-due flag 365 days after the stored calibration date and the log-capacity flag at 9000 records. */
    }

    requirement <'MRTM-HLR-023'> MRTM_HLR_023 {
        doc /* At power-up the platform software item shall restore the alarm state, read the clock and the band, and start monitoring only after the power-up tests pass. */
    }

    #derive requirement <'MRTM-HLR-024'> MRTM_HLR_024 {
        doc /* The platform software item shall run the alarm, supervisor and sensor tasks on core 1 at priorities 18 to 22, above every task of the display, record and export software items. */
    }

    requirement <'MRTM-HLR-025'> MRTM_HLR_025 {
        doc /* The display software item shall show the excursion warning for the whole excursion and the probe fault message within 1 s of the state change. */
    }

    requirement <'MRTM-HLR-026'> MRTM_HLR_026 {
        doc /* The display software item shall show the temperature at 0.1 °C resolution in digits 32 pixels tall and change it at most once per 10 s. */
    }

    requirement <'MRTM-HLR-027'> MRTM_HLR_027 {
        doc /* The display software item shall show the allowed band and the firmware version for the first 3 s after power-up. */
    }

    requirement <'MRTM-HLR-028'> MRTM_HLR_028 {
        doc /* The display software item shall show the calibration-due and log-capacity messages when their flags are set, and the battery level in steps of 10 %. */
    }

    requirement <'MRTM-HLR-029'> MRTM_HLR_029 {
        doc /* The display software item shall recover the display bus within 1 s of a 100 ms bus timeout. */
    }

    requirement <'MRTM-HLR-030'> MRTM_HLR_030 {
        doc /* The record software item shall write each event record with its CRC-32 to 2 separate flash sectors within 1 s of the event. */
    }

    requirement <'MRTM-HLR-031'> MRTM_HLR_031 {
        doc /* When the event log holds 10000 records, the record software item shall write each new record over the oldest one. */
    }

    requirement <'MRTM-HLR-032'> MRTM_HLR_032 {
        doc /* The record software item shall time-stamp each record with UTC at 1 s resolution and log a clock fault when the clock oscillator has stopped. */
    }

    requirement <'MRTM-HLR-033'> MRTM_HLR_033 {
        doc /* The record software item shall read a record from whichever copy passes its CRC-32 check and log a corrupt-record event when neither does. */
    }

    requirement <'MRTM-HLR-034'> MRTM_HLR_034 {
        doc /* The record software item shall log one capacity-warning event when the event log reaches 9000 records. */
    }

    requirement <'MRTM-HLR-035'> MRTM_HLR_035 {
        doc /* The export software item shall present the event log as a read-only mass-storage volume within 30 s of connection. */
    }

    requirement <'MRTM-HLR-036'> MRTM_HLR_036 {
        doc /* When the USB host sends a write request, the export software item shall refuse the write. */
    }

    #derive requirement <'MRTM-HLR-037'> MRTM_HLR_037 {
        doc /* The export software item shall read the event log only through the record software item's read accessor. */
    }

    requirement <'MRTM-HLR-038'> MRTM_HLR_038 {
        doc /* While a fail-safe or battery-low signal is set, the alarm software item shall drive the buzzer. */
    }

    requirement <'MRTM-HWR-001'> MRTM_HWR_001 {
        doc /* The sensor hardware item shall complete a 12-bit temperature conversion within 750 ms. */
    }

    requirement <'MRTM-HWR-002'> MRTM_HWR_002 {
        doc /* The sensor hardware item shall read the air temperature with an accuracy of ±0.5 °C from -10 °C to 50 °C. */
    }

    requirement <'MRTM-HWR-003'> MRTM_HWR_003 {
        doc /* The sensor hardware item shall send a CRC-8 value with every scratchpad read. */
    }

    requirement <'MRTM-HWR-004'> MRTM_HWR_004 {
        doc /* The alarm hardware item shall produce a sound pressure level of 65 dB(A) or more at 1 m when either buzzer drive input is active. */
    }

    requirement <'MRTM-HWR-005'> MRTM_HWR_005 {
        doc /* The alarm hardware item shall switch the red indicator within 10 ms of a change of its drive input. */
    }

    requirement <'MRTM-HWR-006'> MRTM_HWR_006 {
        doc /* While a clinic staff member presses the acknowledge button, the alarm hardware item shall close the acknowledge contact. */
    }

    requirement <'MRTM-HWR-007'> MRTM_HWR_007 {
        doc /* The alarm hardware item shall assert the backup timeout 9 s ± 0.9 s after the last watchdog service pulse. */
    }

    requirement <'MRTM-HWR-008'> MRTM_HWR_008 {
        doc /* The alarm hardware item shall drive the buzzer backup input within 100 ms of the backup timeout. */
    }

    requirement <'MRTM-HWR-009'> MRTM_HWR_009 {
        doc /* The alarm hardware item shall supply the backup timer and the backup driver for 60 s or more after all power is lost. */
    }

    requirement <'MRTM-HWR-010'> MRTM_HWR_010 {
        doc /* The controller hardware item shall reset the processor within 1 s of its hardware watchdog expiry. */
    }

    requirement <'MRTM-HWR-011'> MRTM_HWR_011 {
        doc /* The controller hardware item shall keep UTC time with a drift of 2 s per day or less from 10 °C to 35 °C. */
    }

    requirement <'MRTM-HWR-012'> MRTM_HWR_012 {
        doc /* The power hardware item shall switch the load from mains to battery within 100 ms of mains loss. */
    }

    requirement <'MRTM-HWR-013'> MRTM_HWR_013 {
        doc /* The power hardware item shall store 2000 mAh or more at 3.7 V nominal. */
    }

    requirement <'MRTM-HWR-014'> MRTM_HWR_014 {
        doc /* The display hardware item shall draw the temperature digits at a character height of 5 mm or more. */
    }
}
