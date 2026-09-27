/* test_diagnostics.c — unit verification of the power-up tests (IEC 62304 §5.5.3–5.5.5, Class C). */
#include "unity.h"
#include "test_support.h"
#include "diagnostics.h"
#include "wdt_kicker.h"

static diag_result_t d;
void setUp(void) { ts_fresh(); wdt_kicker_init(); d = (diag_result_t){ .config_ok = true, .clock_ok = true }; }
void tearDown(void) {}

/* Buzzer tested within 5 s, backup alarm within 15 s, both from t = 0. */
/* @verifies MRTM-LLR-019 MRTM-HLR-018 */
void test_power_up_tests_pass_inside_their_windows(void)
{
    TEST_ASSERT_EQUAL(MRTM_OK, diagnostics_power_up(&d));
    TEST_ASSERT_TRUE(d.buzzer_ok);
    TEST_ASSERT_TRUE(d.backup_ok);
    TEST_ASSERT_LESS_OR_EQUAL_UINT32(15000, host.now_ms);
    TEST_ASSERT_FALSE(host.buzzer_on);
    event_record_t e;
    TEST_ASSERT_TRUE(ts_find(MRTM_EV_SELF_TEST_PASS, &e));
}

/* @verifies MRTM-LLR-019 MRTM-HLR-018 */
void test_silent_buzzer_fails_the_power_up_test(void)
{
    host.buzzer_broken = true;
    TEST_ASSERT_EQUAL(MRTM_ERR_HW, diagnostics_power_up(&d));
    TEST_ASSERT_FALSE(d.buzzer_ok);
    event_record_t e;
    TEST_ASSERT_TRUE(ts_find(MRTM_EV_SELF_TEST_FAIL, &e));
    TEST_ASSERT_EQUAL_INT16(1, e.tenths);              /* bit 0 = buzzer */
}

/* @verifies MRTM-LLR-019 MRTM-HLR-018 */
void test_backup_alarm_not_heard_fails_and_pulses_resume(void)
{
    host.backup_broken = true;
    TEST_ASSERT_EQUAL(MRTM_ERR_HW, diagnostics_power_up(&d));
    TEST_ASSERT_FALSE(d.backup_ok);
    wdt_kicker_step(host.now_ms, 1);
    TEST_ASSERT_EQUAL_UINT32(1, host.pulses);          /* hold released */
}

int main(void)
{
    UNITY_BEGIN();
    RUN_TEST(test_power_up_tests_pass_inside_their_windows);
    RUN_TEST(test_silent_buzzer_fails_the_power_up_test);
    RUN_TEST(test_backup_alarm_not_heard_fails_and_pulses_resume);
    return UNITY_END();
}
