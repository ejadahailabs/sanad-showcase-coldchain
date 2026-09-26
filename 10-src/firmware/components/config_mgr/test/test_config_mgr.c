/* test_config_mgr.c — unit verification of config_mgr (IEC 62304 §5.5.3–5.5.5, Class C). */
#include "unity.h"
#include "test_support.h"

void setUp(void) { ts_fresh(); }
void tearDown(void) {}

/* @verifies MRTM-SYS-017 */
void test_valid_record_loads_the_2_to_8_degree_band(void)
{
    mrtm_config_t c;
    TEST_ASSERT_EQUAL(MRTM_OK, config_mgr_load(&c));
    TEST_ASSERT_EQUAL_INT16(20, c.band_low_tenths);
    TEST_ASSERT_EQUAL_INT16(80, c.band_high_tenths);
}

/* @verifies MRTM-SAF-017 */
void test_bad_crc_is_refused_with_err_crc(void)
{
    host.nvs_cfg[3] ^= 0x01;
    mrtm_config_t c;
    TEST_ASSERT_EQUAL(MRTM_ERR_CRC, config_mgr_load(&c));
}

/* No default band in firmware: a missing record is an error, never 2..8 made up. */
/* @verifies MRTM-SAF-017 */
void test_missing_record_is_err_nvs(void)
{
    host.nvs_cfg_present = false;
    mrtm_config_t c;
    TEST_ASSERT_EQUAL(MRTM_ERR_NVS, config_mgr_load(&c));
}

/* @verifies MRTM-SYS-017 */
void test_band_outside_2_to_8_is_refused(void)
{
    mrtm_config_t c = { .version = 1, .band_low_tenths = 10, .band_high_tenths = 80 };
    TEST_ASSERT_EQUAL(MRTM_ERR_ARG, config_mgr_store(&c));
    c.band_low_tenths = 20; c.band_high_tenths = 90;
    TEST_ASSERT_EQUAL(MRTM_ERR_ARG, config_mgr_store(&c));
    c.band_high_tenths = 20;
    TEST_ASSERT_EQUAL(MRTM_ERR_ARG, config_mgr_store(&c));
    TEST_ASSERT_EQUAL(MRTM_ERR_ARG, config_mgr_load(NULL));
}

/* @verifies MRTM-SAF-017 */
void test_store_writes_a_fresh_crc_and_logs_config_changed(void)
{
    mrtm_config_t c = { .version = 2, .band_low_tenths = 30, .band_high_tenths = 70, .probe_offset_tenths = -2 };
    TEST_ASSERT_EQUAL(MRTM_OK, config_mgr_store(&c));
    mrtm_config_t back;
    TEST_ASSERT_EQUAL(MRTM_OK, config_mgr_load(&back));
    TEST_ASSERT_EQUAL_INT16(-2, back.probe_offset_tenths);
    event_record_t e;
    TEST_ASSERT_TRUE(ts_find(MRTM_EV_CONFIG_CHANGED, &e));
}

int main(void)
{
    UNITY_BEGIN();
    RUN_TEST(test_valid_record_loads_the_2_to_8_degree_band);
    RUN_TEST(test_bad_crc_is_refused_with_err_crc);
    RUN_TEST(test_missing_record_is_err_nvs);
    RUN_TEST(test_band_outside_2_to_8_is_refused);
    RUN_TEST(test_store_writes_a_fresh_crc_and_logs_config_changed);
    return UNITY_END();
}
