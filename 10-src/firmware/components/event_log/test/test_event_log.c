/* test_event_log.c — unit verification of event_log (IEC 62304 §5.5.3–5.5.5, Class C). */
#include <stddef.h>
#include "unity.h"
#include "test_support.h"
#include "rtc_clock.h"

void setUp(void) { ts_fresh(); bool osc; host.rtc_utc = 1790001234u; rtc_clock_init(&osc); }
void tearDown(void) {}

/* The stamp is taken when the event is posted, not when logTask writes it. */
/* @verifies MRTM-SYS-008 MRTM-SYS-010 MRTM-SYS-023 */
void test_time_stamp_is_the_utc_second_of_the_post(void)
{
    event_log_post(MRTM_EV_EXCURSION_START, 85, 0);
    host.rtc_utc += 7; rtc_clock_tick();
    event_record_t e;
    TEST_ASSERT_TRUE(ts_find(MRTM_EV_EXCURSION_START, &e));
    TEST_ASSERT_EQUAL_UINT32(1790001234u, e.utc_s);
}

/* @verifies MRTM-SYS-009 */
void test_end_record_carries_the_peak_in_tenths(void)
{
    event_log_post(MRTM_EV_EXCURSION_END, 79, 123);
    event_record_t e;
    TEST_ASSERT_TRUE(ts_find(MRTM_EV_EXCURSION_END, &e));
    TEST_ASSERT_EQUAL_INT16(123, e.peak_tenths);
}

/* @verifies MRTM-SAF-018 */
void test_step_numbers_checksums_and_stores_every_queued_record(void)
{
    for (int i = 0; i < 5; i++) event_log_post(MRTM_EV_ACK, (int16_t)i, 0);
    event_log_step(0);
    TEST_ASSERT_EQUAL_UINT32(0, event_log_pending());
    TEST_ASSERT_EQUAL_UINT32(5, history_ring_count(&ts_ring));
    event_record_t e;
    TEST_ASSERT_EQUAL(MRTM_OK, history_ring_read(&ts_ring, 0, &e));
    TEST_ASSERT_EQUAL_UINT32(5, e.seq);
    TEST_ASSERT_EQUAL_UINT32(mrtm_crc32(&e, offsetof(event_record_t, crc32)), e.crc32);
}

/* Error code of the contract: queue depth 32, then MRTM_ERR_FULL. */
/* @verifies MRTM-SAF-018 */
void test_error_code_full_after_32(void)
{
    for (int i = 0; i < 32; i++) TEST_ASSERT_EQUAL(MRTM_OK, event_log_post(MRTM_EV_ACK, 0, 0));
    TEST_ASSERT_EQUAL(MRTM_ERR_FULL, event_log_post(MRTM_EV_ACK, 0, 0));
}

/* A flash failure is retried once and does not loop on its own report. */
/* @verifies MRTM-SAF-018 */
void test_flash_failure_does_not_loop(void)
{
    host.flash_fail = true;
    event_log_post(MRTM_EV_ACK, 0, 0);
    event_log_step(0);
    TEST_ASSERT_EQUAL_UINT32(0, event_log_pending());
}

int main(void)
{
    UNITY_BEGIN();
    RUN_TEST(test_time_stamp_is_the_utc_second_of_the_post);
    RUN_TEST(test_end_record_carries_the_peak_in_tenths);
    RUN_TEST(test_step_numbers_checksums_and_stores_every_queued_record);
    RUN_TEST(test_error_code_full_after_32);
    RUN_TEST(test_flash_failure_does_not_loop);
    return UNITY_END();
}
