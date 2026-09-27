// MRTM error codes and event kinds — IEC 62304 §5.4.2 (detailed design), §5.4.3 (interfaces).
// Each enumeration value names its C constant; the same terms are in 01-data-dictionary/data-dictionary.md
// (Error Code, Event Kind). Generated from one table with the contracts (tools/detail-design.py).
private import ScalarValues::*;

package MrtmSwCodes {

    doc /* What can go wrong (ErrorCode) and what the history records (EventKind). */

    enum def ErrorCode {
        doc /* C type mrtm_err_t (int32_t). */
        enum ok; // MRTM_OK = 0: Done, nothing wrong.
        enum errArg; // MRTM_ERR_ARG = 1: A caller passed a bad argument (NULL pointer, value out of range).
        enum errTimeout; // MRTM_ERR_TIMEOUT = 2: A bus or queue did not answer in time.
        enum errCrc; // MRTM_ERR_CRC = 3: A checksum did not match (probe scratchpad, log record, stored config).
        enum errRange; // MRTM_ERR_RANGE = 4: A reading is outside what the part can physically report (-30..50 degC).
        enum errBus; // MRTM_ERR_BUS = 5: A 1-Wire or I2C transaction failed.
        enum errFlash; // MRTM_ERR_FLASH = 6: A flash erase or write failed.
        enum errNvs; // MRTM_ERR_NVS = 7: The stored configuration is missing or unreadable.
        enum errFull; // MRTM_ERR_FULL = 8: A queue is full; the item was not taken.
        enum errState; // MRTM_ERR_STATE = 9: Called in the wrong mode (for example before init).
        enum errHw; // MRTM_ERR_HW = 10: A hardware self-test failed (buzzer current, backup alarm, RTC).
    }

    enum def EventKind {
        doc /* C type mrtm_event_kind_t (uint8_t), stored in EventRecord.kind. */
        enum excursionStart; // MRTM_EV_EXCURSION_START = 1: An excursion was confirmed. (MRTM-SYS-008)
        enum excursionEnd; // MRTM_EV_EXCURSION_END = 2: An excursion ended; the record carries the peak. (MRTM-SYS-009)
        enum acknowledged; // MRTM_EV_ACK = 3: Staff pressed the acknowledge button during an alarm. (MRTM-SYS-010)
        enum powerLoss; // MRTM_EV_POWER_LOSS = 4: Mains power was lost. (MRTM-SAF-005)
        enum powerRestore; // MRTM_EV_POWER_RESTORE = 5: Mains power came back. (MRTM-SYS-023)
        enum probeFault; // MRTM_EV_PROBE_FAULT = 6: The probe fault was declared. (MRTM-SYS-012)
        enum probeRecovered; // MRTM_EV_PROBE_RECOVERED = 7: Good samples arrived again after a probe fault. (MRTM-SYS-012)
        enum buzzerFault; // MRTM_EV_BUZZER_FAULT = 8: The buzzer drew too little current while driven. (MRTM-SAF-014)
        enum buttonFault; // MRTM_EV_BUTTON_FAULT = 9: The acknowledge button stayed pressed for 60 s. (MRTM-SAF-019)
        enum clockFault; // MRTM_EV_CLOCK_FAULT = 10: The RTC reported an oscillator stop at power-up. (MRTM-SAF-022)
        enum configCrcFault; // MRTM_EV_CONFIG_CRC_FAULT = 11: The stored allowed band failed its CRC-32 check. (MRTM-SAF-017)
        enum selfTestPass; // MRTM_EV_SELF_TEST_PASS = 12: All power-up tests passed. (MRTM-SAF-007)
        enum selfTestFail; // MRTM_EV_SELF_TEST_FAIL = 13: A power-up test failed; the record's value says which. (MRTM-SAF-023)
        enum lowBattery; // MRTM_EV_LOW_BATTERY = 14: The battery fell below 3.4 V. (MRTM-SAF-008)
        enum watchdogRestart; // MRTM_EV_WATCHDOG_RESTART = 15: The firmware restarted after a software watchdog timeout. (MRTM-SAF-004)
        enum logRecordCorrupt; // MRTM_EV_LOG_RECORD_CORRUPT = 16: A log record failed its CRC-32 when read. (MRTM-SYS-021)
        enum logCapacityWarning; // MRTM_EV_LOG_CAPACITY_WARNING = 17: The log reached 9000 records. (MRTM-SYS-022)
        enum configChanged; // MRTM_EV_CONFIG_CHANGED = 18: A technician stored a new configuration. (MRTM-SAF-017)
        enum i2cBusReset; // MRTM_EV_I2C_BUS_RESET = 19: The I2C bus was reset after a timeout. (MRTM-SAF-021)
        enum realarm; // MRTM_EV_REALARM = 20: The buzzer sounded again 15 min after an acknowledgement. (MRTM-SYS-019)
    }
}
