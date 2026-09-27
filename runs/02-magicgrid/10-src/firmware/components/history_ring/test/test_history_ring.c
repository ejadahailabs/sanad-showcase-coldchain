/* test_history_ring.c — unit verification of the mirrored flash ring (IEC 62304 §5.5.3–5.5.5, Class C). */
#include <stddef.h>
#include "unity.h"
#include "test_support.h"

void setUp(void) { ts_fresh(); }
void tearDown(void) {}

static void add(uint32_t n)
{
    for (uint32_t i = 0; i < n; i++) {
        event_record_t r = { .seq = history_ring_next_seq(&ts_ring), .utc_s = 1000 + i, .kind = MRTM_EV_ACK, .tenths = (int16_t)(i % 100) };
        r.crc32 = mrtm_crc32(&r, offsetof(event_record_t, crc32));
        TEST_ASSERT_EQUAL(MRTM_OK, history_ring_append(&ts_ring, &r));
    }
}

/* @verifies MRTM-SAF-018 MRTM-LGI-001 */
void test_append_writes_copy_a_and_copy_b(void)
{
    add(1);
    event_record_t a, b;
    memcpy(&a, host_flash(0) + 32, 32);
    memcpy(&b, host_flash(1) + 32, 32);
    TEST_ASSERT_EQUAL_UINT32(1, a.seq);
    TEST_ASSERT_EQUAL_MEMORY(&a, &b, 32);
}

/* The ring wraps 2.5 times; every one of the newest 10 000 records still reads back. */
/* @verifies MRTM-SYS-015 MRTM-LGI-002 */
void test_retains_10000_records_after_wrapping(void)
{
    add(25000);
    TEST_ASSERT_EQUAL_UINT32(10000, history_ring_count(&ts_ring));
    for (uint32_t age = 0; age < 10000; age++) {
        event_record_t e;
        TEST_ASSERT_EQUAL(MRTM_OK, history_ring_read(&ts_ring, age, &e));
        TEST_ASSERT_EQUAL_UINT32(25000 - age, e.seq);
    }
}

/* Worst case: straight after an erase-ahead the ring still holds >= 10 000 (DEF-001). */
/* @verifies MRTM-SYS-015 */
void test_retains_10000_straight_after_an_erase_ahead(void)
{
    add(HISTORY_SLOTS);                                 /* seq 10240 lands in slot 0: sector 0 was just erased */
    uint32_t readable = 0;
    for (uint32_t seq = HISTORY_SLOTS; seq > 0; seq--) {
        event_record_t e;
        memcpy(&e, host_flash(0) + (seq % HISTORY_SLOTS) * 32u, 32);
        if (e.seq != seq) break;
        readable++;
    }
    TEST_ASSERT_GREATER_OR_EQUAL_UINT32(10000, readable);
}

/* @verifies MRTM-SAF-018 MRTM-SYS-021 */
void test_corrupt_copy_a_is_read_from_copy_b(void)
{
    add(3);
    host_flash(0)[2 * 32 + 10] ^= 0xFF;                 /* flip a byte of record 2 in copy A */
    event_record_t e;
    TEST_ASSERT_EQUAL(MRTM_OK, history_ring_read(&ts_ring, 1, &e));
    TEST_ASSERT_EQUAL_UINT32(2, e.seq);
}

/* @verifies MRTM-SYS-021 */
void test_both_copies_corrupt_reports_err_crc_and_logs_it(void)
{
    add(3);
    host_flash(0)[2 * 32 + 10] ^= 0xFF;
    host_flash(1)[2 * 32 + 10] ^= 0xFF;
    event_record_t e;
    TEST_ASSERT_EQUAL(MRTM_ERR_CRC, history_ring_read(&ts_ring, 1, &e));
    TEST_ASSERT_TRUE(ts_find(MRTM_EV_LOG_RECORD_CORRUPT, &e));
}

/* @verifies MRTM-SYS-022 */
void test_capacity_warning_once_at_9000(void)
{
    add(8999);
    event_record_t e;
    TEST_ASSERT_FALSE(ts_find(MRTM_EV_LOG_CAPACITY_WARNING, &e));
    add(1);
    TEST_ASSERT_TRUE(ts_find(MRTM_EV_LOG_CAPACITY_WARNING, &e));
    TEST_ASSERT_EQUAL_UINT32(9000 + 1, e.seq);         /* the warning is itself record 9001 */
}

/* @verifies MRTM-SYS-015 */
void test_init_finds_the_head_again_after_a_restart(void)
{
    add(12345);
    history_ring_t again;
    TEST_ASSERT_EQUAL(MRTM_OK, history_ring_init(&again));
    TEST_ASSERT_EQUAL_UINT32(12345, again.head_seq);
    TEST_ASSERT_EQUAL_UINT32(10000, history_ring_count(&again));
}

/* Error codes of the contract. */
/* @verifies MRTM-SAF-018 */
void test_error_codes_flash_arg(void)
{
    event_record_t r = { .seq = 5 };
    TEST_ASSERT_EQUAL(MRTM_ERR_ARG, history_ring_append(&ts_ring, &r));   /* seq must be head + 1 */
    TEST_ASSERT_EQUAL(MRTM_ERR_ARG, history_ring_read(&ts_ring, 0, &r));  /* empty */
    host.flash_fail = true;
    r.seq = 1;
    TEST_ASSERT_EQUAL(MRTM_ERR_FLASH, history_ring_append(&ts_ring, &r));
}

int main(void)
{
    UNITY_BEGIN();
    RUN_TEST(test_append_writes_copy_a_and_copy_b);
    RUN_TEST(test_retains_10000_records_after_wrapping);
    RUN_TEST(test_retains_10000_straight_after_an_erase_ahead);
    RUN_TEST(test_corrupt_copy_a_is_read_from_copy_b);
    RUN_TEST(test_both_copies_corrupt_reports_err_crc_and_logs_it);
    RUN_TEST(test_capacity_warning_once_at_9000);
    RUN_TEST(test_init_finds_the_head_again_after_a_restart);
    RUN_TEST(test_error_codes_flash_arg);
    return UNITY_END();
}
