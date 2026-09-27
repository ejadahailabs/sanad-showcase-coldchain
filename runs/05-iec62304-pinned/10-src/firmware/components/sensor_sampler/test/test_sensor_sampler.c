/* test_sensor_sampler.c — unit verification of sensor_sampler (IEC 62304 §5.5.3–5.5.5, Class C). */
#include "unity.h"
#include "test_support.h"
#include "sensor_sampler.h"

static mrtm_config_t cfg = { .band_low_tenths = 20, .band_high_tenths = 80 };
void setUp(void) { ts_fresh(); cfg.probe_offset_tenths = 0; TEST_ASSERT_EQUAL(MRTM_OK, sensor_sampler_init(&cfg)); }
void tearDown(void) {}

/* @verifies MRTM-SYS-001 MRTM-IFC-001 MRTM-SNI-001 MRTM-SMP-001 */
void test_good_scratchpad_gives_a_valid_sample(void)
{
    mrtm_sample_t s;
    host.probe_tenths = 45;
    TEST_ASSERT_EQUAL(MRTM_OK, sensor_sampler_read(10, &s));
    TEST_ASSERT_TRUE(s.valid);
    TEST_ASSERT_EQUAL_INT16(45, s.tenths);
}

/* @verifies MRTM-SYS-012 MRTM-SNI-002 MRTM-SMP-002 */
void test_bad_crc_is_invalid_but_not_out_of_range(void)
{
    mrtm_sample_t s;
    host.probe_bad_crc = true;
    TEST_ASSERT_EQUAL(MRTM_ERR_CRC, sensor_sampler_read(10, &s));
    TEST_ASSERT_FALSE(s.valid);
    TEST_ASSERT_FALSE(sensor_sampler_probe_fault(10));
}

/* @verifies MRTM-SAF-003 MRTM-SNI-002 MRTM-SMP-002 */
void test_reading_outside_minus30_to_50_declares_the_fault_at_once(void)
{
    mrtm_sample_t s;
    host.probe_tenths = 501;
    TEST_ASSERT_EQUAL(MRTM_ERR_RANGE, sensor_sampler_read(10, &s));
    TEST_ASSERT_TRUE(sensor_sampler_probe_fault(10));
    host.probe_tenths = -301;
    TEST_ASSERT_EQUAL(MRTM_ERR_RANGE, sensor_sampler_read(20, &s));
    TEST_ASSERT_TRUE(sensor_sampler_probe_fault(20));
}

/* @verifies MRTM-SYS-012 */
void test_fault_after_30_s_without_a_correct_crc(void)
{
    mrtm_sample_t s;
    TEST_ASSERT_EQUAL(MRTM_OK, sensor_sampler_read(100, &s));
    host.probe_bad_crc = true;
    for (uint32_t t = 110; t < 130; t += 10) { sensor_sampler_read(t, &s); TEST_ASSERT_FALSE(sensor_sampler_probe_fault(t)); }
    sensor_sampler_read(130, &s);
    TEST_ASSERT_TRUE(sensor_sampler_probe_fault(130));
}

/* @verifies MRTM-SYS-012 */
void test_fault_clears_on_the_next_valid_sample(void)
{
    mrtm_sample_t s;
    host.probe_bus_fail = true;
    TEST_ASSERT_EQUAL(MRTM_ERR_BUS, sensor_sampler_read(0, &s));
    TEST_ASSERT_TRUE(sensor_sampler_probe_fault(40));
    host.probe_bus_fail = false;
    TEST_ASSERT_EQUAL(MRTM_OK, sensor_sampler_read(50, &s));
    TEST_ASSERT_FALSE(sensor_sampler_probe_fault(50));
}

/* @verifies MRTM-SYS-011 MRTM-PRF-001 */
void test_conversion_rounds_to_a_tenth_and_adds_the_offset(void)
{
    TEST_ASSERT_EQUAL_INT16(0, sensor_sampler_to_tenths(0, 0));
    TEST_ASSERT_EQUAL_INT16(1, sensor_sampler_to_tenths(1, 0));        /* 0.0625 -> 0.1 */
    TEST_ASSERT_EQUAL_INT16(-1, sensor_sampler_to_tenths(-1, 0));
    TEST_ASSERT_EQUAL_INT16(250, sensor_sampler_to_tenths(400, 0));    /* +25.0 */
    TEST_ASSERT_EQUAL_INT16(-100, sensor_sampler_to_tenths(-160, 0));  /* -10.0 */
    TEST_ASSERT_EQUAL_INT16(53, sensor_sampler_to_tenths(80, 3));      /* offset +0.3 */
}

/* Error codes of the contract: NULL config, NULL out, bus failure at init. */
/* @verifies MRTM-IFC-001 */
void test_error_codes_arg_and_bus(void)
{
    TEST_ASSERT_EQUAL(MRTM_ERR_ARG, sensor_sampler_init(NULL));
    TEST_ASSERT_EQUAL(MRTM_ERR_ARG, sensor_sampler_read(0, NULL));
    host.probe_bus_fail = true;
    TEST_ASSERT_EQUAL(MRTM_ERR_BUS, sensor_sampler_init(&cfg));
}

int main(void)
{
    UNITY_BEGIN();
    RUN_TEST(test_good_scratchpad_gives_a_valid_sample);
    RUN_TEST(test_bad_crc_is_invalid_but_not_out_of_range);
    RUN_TEST(test_reading_outside_minus30_to_50_declares_the_fault_at_once);
    RUN_TEST(test_fault_after_30_s_without_a_correct_crc);
    RUN_TEST(test_fault_clears_on_the_next_valid_sample);
    RUN_TEST(test_conversion_rounds_to_a_tenth_and_adds_the_offset);
    RUN_TEST(test_error_codes_arg_and_bus);
    return UNITY_END();
}
