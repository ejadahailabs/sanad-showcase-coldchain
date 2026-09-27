/* test_display_mgr.c — unit verification of display_mgr through its C interface
 * (IEC 62304 §5.5.3–5.5.5, Class C). The C++ classes are exercised behind it. */
#include "unity.h"
#include "test_support.h"
#include "display_mgr.h"

static display_model_t m;
void setUp(void)
{
    ts_fresh();
    m = (display_model_t){ .temp_tenths = 51, .temp_valid = true, .alarm = ALARM_QUIET, .battery_pct = 87 };
    display_mgr_update(&m);
    TEST_ASSERT_EQUAL(MRTM_OK, display_mgr_init());
}
void tearDown(void) {}
static void at(uint32_t ms) { host_advance(ms - host.now_ms); display_mgr_update(&m); display_mgr_tick(); }

/* @verifies MRTM-SAF-016 MRTM-MNT-003 */
void test_band_and_version_shown_in_the_first_3_s(void)
{
    at(100);  TEST_ASSERT_EQUAL(MSG_BAND, display_mgr_banner());
    at(1500); TEST_ASSERT_EQUAL(MSG_VERSION, display_mgr_banner());
    at(2500); TEST_ASSERT_EQUAL(MSG_BAND, display_mgr_banner());
    at(3000); TEST_ASSERT_EQUAL(MSG_NONE, display_mgr_banner());
}

/* @verifies MRTM-SYS-005 MRTM-SYS-007 MRTM-SW-008 */
void test_excursion_warning_for_the_whole_excursion(void)
{
    at(4000);
    m.alarm = ALARM_SOUNDING;  at(4500);  TEST_ASSERT_EQUAL(MSG_EXCURSION, display_mgr_banner());
    m.alarm = ALARM_SILENCED;  at(5000);  TEST_ASSERT_EQUAL(MSG_EXCURSION, display_mgr_banner());
    m.alarm = ALARM_QUIET;     at(5500);  TEST_ASSERT_EQUAL(MSG_NONE, display_mgr_banner());
}

/* @verifies MRTM-SYS-013 MRTM-SW-008 */
void test_probe_fault_message(void)
{
    m.alarm = ALARM_PROBE_FAULT; at(4000);
    TEST_ASSERT_EQUAL(MSG_PROBE_FAULT, display_mgr_banner());
}

/* @verifies MRTM-SAF-012 MRTM-SYS-022 MRTM-SW-008 */
void test_calibration_due_and_log_capacity_messages(void)
{
    m.calib_due = true; at(4000);
    TEST_ASSERT_EQUAL(MSG_CALIBRATION_DUE, display_mgr_banner());
    m.log_warn = true; at(4500);
    TEST_ASSERT_EQUAL(MSG_LOG_CAPACITY, display_mgr_banner());
}

/* The number on screen changes at most every 10 s, at 0.1 degC. */
/* @verifies MRTM-PRF-004 MRTM-SYS-011 MRTM-SW-009 */
void test_temperature_refreshes_every_10_s_in_tenths(void)
{
    at(500); TEST_ASSERT_EQUAL_INT16(51, display_mgr_shown_tenths());
    m.temp_tenths = 57; at(5000); TEST_ASSERT_EQUAL_INT16(51, display_mgr_shown_tenths());
    at(10500); TEST_ASSERT_EQUAL_INT16(57, display_mgr_shown_tenths());
}

/* @verifies MRTM-MNT-002 */
void test_battery_shown_in_steps_of_10_percent(void)
{
    at(500); TEST_ASSERT_EQUAL_UINT8(80, display_mgr_shown_battery_pct());
    m.battery_pct = 9; at(1000); TEST_ASSERT_EQUAL_UINT8(0, display_mgr_shown_battery_pct());
    m.battery_pct = 100; at(1500); TEST_ASSERT_EQUAL_UINT8(100, display_mgr_shown_battery_pct());
}

/* A 100 ms timeout triggers the bus reset and a log record, all inside 1 s. */
/* @verifies MRTM-SAF-021 */
void test_i2c_timeout_resets_the_bus_within_1_s(void)
{
    at(500);
    m.temp_tenths = 60; host.i2c_fail_next = 1;
    uint32_t t0 = host.now_ms;
    at(10500);
    TEST_ASSERT_EQUAL_UINT32(1, host.i2c_resets);
    TEST_ASSERT_LESS_OR_EQUAL_UINT32(10000u + 1000u, host.now_ms - t0);
    event_record_t e;
    TEST_ASSERT_TRUE(ts_find(MRTM_EV_I2C_BUS_RESET, &e));
}

int main(void)
{
    UNITY_BEGIN();
    RUN_TEST(test_band_and_version_shown_in_the_first_3_s);
    RUN_TEST(test_excursion_warning_for_the_whole_excursion);
    RUN_TEST(test_probe_fault_message);
    RUN_TEST(test_calibration_due_and_log_capacity_messages);
    RUN_TEST(test_temperature_refreshes_every_10_s_in_tenths);
    RUN_TEST(test_battery_shown_in_steps_of_10_percent);
    RUN_TEST(test_i2c_timeout_resets_the_bus_within_1_s);
    return UNITY_END();
}
