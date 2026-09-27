/* test_rtc_clock.c — unit verification of rtc_clock (IEC 62304 §5.5.3–5.5.5, Class C). */
#include "unity.h"
#include "test_support.h"
#include "rtc_clock.h"

void setUp(void) { ts_fresh(); }
void tearDown(void) {}

/* @verifies MRTM-LLR-040 MRTM-HLR-032 */
void test_oscillator_stop_at_power_up_logs_clock_fault(void)
{
    host.rtc_osc_stopped = true;
    bool stopped = false;
    TEST_ASSERT_EQUAL(MRTM_OK, rtc_clock_init(&stopped));
    TEST_ASSERT_TRUE(stopped);
    TEST_ASSERT_FALSE(host.rtc_osc_stopped);          /* flag cleared once read */
    event_record_t e;
    TEST_ASSERT_TRUE(ts_find(MRTM_EV_CLOCK_FAULT, &e));
}

/* @verifies MRTM-LLR-041 MRTM-LLR-042 MRTM-HLR-032 */
void test_now_is_the_rtc_copy_refreshed_each_second(void)
{
    bool stopped;
    host.rtc_utc = 1790000000u;
    rtc_clock_init(&stopped);
    host.rtc_utc += 1;
    TEST_ASSERT_EQUAL_UINT32(1790000000u, rtc_clock_now());   /* no I2C in the caller's path */
    rtc_clock_tick();
    TEST_ASSERT_EQUAL_UINT32(1790000001u, rtc_clock_now());
    host.rtc_fail = true;
    rtc_clock_tick();
    TEST_ASSERT_EQUAL_UINT32(1790000001u, rtc_clock_now());   /* a failed read keeps the last copy */
}

/* Error codes of the contract. */
/* @verifies MRTM-LLR-040 */
void test_error_codes_bus_and_arg(void)
{
    TEST_ASSERT_EQUAL(MRTM_ERR_ARG, rtc_clock_init(NULL));
    TEST_ASSERT_EQUAL(MRTM_ERR_ARG, rtc_clock_set(0));
    host.rtc_fail = true;
    bool stopped;
    TEST_ASSERT_EQUAL(MRTM_ERR_BUS, rtc_clock_init(&stopped));
    TEST_ASSERT_EQUAL(MRTM_ERR_BUS, rtc_clock_set(1800000000u));
}

int main(void)
{
    UNITY_BEGIN();
    RUN_TEST(test_oscillator_stop_at_power_up_logs_clock_fault);
    RUN_TEST(test_now_is_the_rtc_copy_refreshed_each_second);
    RUN_TEST(test_error_codes_bus_and_arg);
    return UNITY_END();
}
