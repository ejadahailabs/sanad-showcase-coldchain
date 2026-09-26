/* test_wdt_kicker.c — unit verification of the watchdog service (IEC 62304 §5.5.3–5.5.5, Class C). */
#include "unity.h"
#include "test_support.h"
#include "wdt_kicker.h"

void setUp(void) { ts_fresh(); wdt_kicker_init(); }
void tearDown(void) {}

/* @verifies MRTM-SAF-004 */
void test_task_watchdog_armed_at_5_s(void)
{
    TEST_ASSERT_EQUAL_UINT32(5, host.task_wdt_s);
}

/* @verifies MRTM-SAF-010 */
void test_pulses_while_the_heartbeat_moves(void)
{
    uint32_t beat = 0;
    for (uint32_t t = 0; t < 10000; t += 500) { if (t % 1000 == 0) beat++; wdt_kicker_step(t, beat); }
    TEST_ASSERT_EQUAL_UINT32(20, host.pulses);
}

/* The alarm task misses its 1 s cycle at t = 1000; pulses must stop by t = 3000. */
/* @verifies MRTM-SAF-010 */
void test_pulses_stop_within_2_s_of_a_missed_alarm_cycle(void)
{
    wdt_kicker_step(0, 1);
    uint32_t last = 0;
    for (uint32_t t = 500; t <= 10000; t += 500) { uint32_t p = host.pulses; wdt_kicker_step(t, 1); if (host.pulses > p) last = t; }
    TEST_ASSERT_LESS_OR_EQUAL_UINT32(3000, last);
}

/* @verifies MRTM-SAF-023 */
void test_hold_stops_pulses_and_release_resumes(void)
{
    wdt_kicker_hold(true);
    for (uint32_t t = 0; t < 3000; t += 500) wdt_kicker_step(t, t);
    TEST_ASSERT_EQUAL_UINT32(0, host.pulses);
    wdt_kicker_hold(false);
    wdt_kicker_step(3000, 3000);
    TEST_ASSERT_EQUAL_UINT32(1, host.pulses);
}

int main(void)
{
    UNITY_BEGIN();
    RUN_TEST(test_task_watchdog_armed_at_5_s);
    RUN_TEST(test_pulses_while_the_heartbeat_moves);
    RUN_TEST(test_pulses_stop_within_2_s_of_a_missed_alarm_cycle);
    RUN_TEST(test_hold_stops_pulses_and_release_resumes);
    return UNITY_END();
}
