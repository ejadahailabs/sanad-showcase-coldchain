/* test_limit_evaluator.c — unit verification of limit_evaluator (IEC 62304 §5.5.3–5.5.5, Class C).
 * Every test names the requirement it verifies with Sanad's @verifies marker. */
#include "unity.h"
#include "limit_evaluator.h"

static limit_eval_t st;
void setUp(void) { limit_evaluator_init(&st, 20, 80); }
void tearDown(void) {}

static limit_event_t feed(int16_t tenths, bool valid) { mrtm_sample_t s = { tenths, 0, valid }; return limit_evaluator_step(&st, &s); }

/* @verifies MRTM-SYS-002 */
void test_seventh_consecutive_out_sample_confirms(void)
{
    for (int i = 0; i < 6; i++) TEST_ASSERT_EQUAL(LIMIT_NONE, feed(81, true));
    TEST_ASSERT_EQUAL(LIMIT_CONFIRMED, feed(81, true));
    TEST_ASSERT_TRUE(st.excursion);
}

/* @verifies MRTM-SYS-002 MRTM-STK-002 */
void test_six_out_then_one_in_does_not_confirm(void)
{
    for (int i = 0; i < 6; i++) feed(19, true);
    TEST_ASSERT_EQUAL(LIMIT_NONE, feed(50, true));
    for (int i = 0; i < 6; i++) TEST_ASSERT_EQUAL(LIMIT_NONE, feed(19, true));
    TEST_ASSERT_FALSE(st.excursion);
}

/* A-29: a bad-CRC sample neither counts toward the run nor resets it. */
/* @verifies MRTM-SYS-002 */
void test_invalid_sample_neither_counts_nor_resets(void)
{
    for (int i = 0; i < 6; i++) feed(90, true);
    TEST_ASSERT_EQUAL(LIMIT_NONE, feed(0, false));
    TEST_ASSERT_EQUAL(6, st.out_run);
    TEST_ASSERT_EQUAL(LIMIT_CONFIRMED, feed(90, true));
}

/* @verifies MRTM-SYS-017 */
void test_band_edges_two_and_eight_degrees_are_inside(void)
{
    for (int i = 0; i < 20; i++) { TEST_ASSERT_EQUAL(LIMIT_NONE, feed(20, true)); TEST_ASSERT_EQUAL(LIMIT_NONE, feed(80, true)); }
    TEST_ASSERT_EQUAL(0, st.out_run);
}

/* @verifies MRTM-SYS-018 */
void test_seventh_consecutive_in_sample_ends_excursion(void)
{
    for (int i = 0; i < 7; i++) feed(85, true);
    for (int i = 0; i < 6; i++) TEST_ASSERT_EQUAL(LIMIT_NONE, feed(50, true));
    TEST_ASSERT_EQUAL(LIMIT_ENDED, feed(50, true));
    TEST_ASSERT_FALSE(st.excursion);
}

/* Hysteresis in time: one out sample during the return restarts the 7-sample in-run. */
/* @verifies MRTM-SYS-018 */
void test_out_sample_restarts_the_in_run(void)
{
    for (int i = 0; i < 7; i++) feed(85, true);
    for (int i = 0; i < 6; i++) feed(50, true);
    TEST_ASSERT_EQUAL(LIMIT_NONE, feed(81, true));
    for (int i = 0; i < 6; i++) TEST_ASSERT_EQUAL(LIMIT_NONE, feed(50, true));
    TEST_ASSERT_EQUAL(LIMIT_ENDED, feed(50, true));
}

/* A-26: the dead band knob is 0, so 7.9 degC ends an excursion that 8.1 degC started. */
/* @verifies MRTM-SYS-018 */
void test_hysteresis_knob_is_zero(void)
{
    TEST_ASSERT_EQUAL(0, st.hyst);
    for (int i = 0; i < 7; i++) feed(81, true);
    for (int i = 0; i < 6; i++) feed(79, true);
    TEST_ASSERT_EQUAL(LIMIT_ENDED, feed(79, true));
}

/* @verifies MRTM-SYS-009 */
void test_peak_is_the_most_extreme_sample(void)
{
    int16_t seq[] = { 85, 97, 92, 88, 86, 84, 83, 99, 90 };
    for (unsigned i = 0; i < sizeof seq / sizeof seq[0]; i++) feed(seq[i], true);
    TEST_ASSERT_EQUAL_INT16(99, limit_evaluator_peak(&st));
}

/* @verifies MRTM-SYS-009 */
void test_peak_below_band_counts_distance_downwards(void)
{
    int16_t seq[] = { 15, 5, 12, 18, 19, 17, 16 };
    for (unsigned i = 0; i < sizeof seq / sizeof seq[0]; i++) feed(seq[i], true);
    TEST_ASSERT_EQUAL_INT16(5, limit_evaluator_peak(&st));
}

int main(void)
{
    UNITY_BEGIN();
    RUN_TEST(test_seventh_consecutive_out_sample_confirms);
    RUN_TEST(test_six_out_then_one_in_does_not_confirm);
    RUN_TEST(test_invalid_sample_neither_counts_nor_resets);
    RUN_TEST(test_band_edges_two_and_eight_degrees_are_inside);
    RUN_TEST(test_seventh_consecutive_in_sample_ends_excursion);
    RUN_TEST(test_out_sample_restarts_the_in_run);
    RUN_TEST(test_hysteresis_knob_is_zero);
    RUN_TEST(test_peak_is_the_most_extreme_sample);
    RUN_TEST(test_peak_below_band_counts_distance_downwards);
    return UNITY_END();
}
