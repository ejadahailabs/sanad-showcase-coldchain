/* test_mrtm_common.c — CRCs and the generated code tables (IEC 62304 §5.5.3–5.5.5, Class C). */
#include "unity.h"
#include "mrtm_crc.h"
#include "mrtm_errors.h"
#include "mrtm_events.h"

void setUp(void) {}
void tearDown(void) {}

/* Check values from the CRC catalogue for "123456789". */
/* @verifies MRTM-LLR-005 MRTM-LLR-022 */
void test_crc_check_values(void)
{
    TEST_ASSERT_EQUAL_HEX8(0xA1, mrtm_crc8_maxim((const uint8_t *)"123456789", 9));
    TEST_ASSERT_EQUAL_HEX32(0xCBF43926u, mrtm_crc32("123456789", 9));
}

/* A DS18B20 scratchpad is valid when the CRC of bytes 0..7 equals byte 8. */
/* @verifies MRTM-LLR-005 MRTM-HLR-002 */
void test_crc8_over_a_scratchpad(void)
{
    uint8_t sp[9] = { 0x50, 0x05, 0x4B, 0x46, 0x7F, 0xFF, 0x0C, 0x10, 0 };
    sp[8] = mrtm_crc8_maxim(sp, 8);
    TEST_ASSERT_EQUAL_HEX8(0, mrtm_crc8_maxim(sp, 9));   /* CRC over data + CRC is 0 */
}

/* The headers generated from MrtmSwCodes carry the model's values (ADR-0025). */
void test_generated_codes_match_the_model(void)
{
    TEST_ASSERT_EQUAL(0, MRTM_OK);
    TEST_ASSERT_EQUAL(10, MRTM_ERR_HW);
    TEST_ASSERT_EQUAL(1, MRTM_EV_EXCURSION_START);
    TEST_ASSERT_EQUAL(20, MRTM_EV_REALARM);
}

int main(void)
{
    UNITY_BEGIN();
    RUN_TEST(test_crc_check_values);
    RUN_TEST(test_crc8_over_a_scratchpad);
    RUN_TEST(test_generated_codes_match_the_model);
    return UNITY_END();
}
