/* test_power_mon.c — unit verification of power_mon (IEC 62304 §5.5.3–5.5.5, Class C). */
#include "unity.h"
#include "test_support.h"
#include "alarm_mgr.h"
#include "power_mon.h"

void setUp(void) { ts_fresh(); host.nvs_alarm_present = true; alarm_mgr_init(); power_mon_init(); }
void tearDown(void) {}

/* The ISR posts the event on the edge itself; logTask writes it well inside 1 s. */
/* @verifies MRTM-SAF-005 MRTM-SYS-023 MRTM-PWI-001 */
void test_mains_loss_and_restore_are_logged_from_the_edge(void)
{
    host.mains = false; power_mon_isr(NULL);
    event_record_t e;
    TEST_ASSERT_TRUE(ts_find(MRTM_EV_POWER_LOSS, &e));
    host.mains = true; power_mon_isr(NULL);
    TEST_ASSERT_TRUE(ts_find(MRTM_EV_POWER_RESTORE, &e));
    power_mon_isr(NULL);                               /* no edge, no event */
    event_log_step(0);
    TEST_ASSERT_EQUAL_UINT32(2, history_ring_count(&ts_ring));
}

/* Two reads below 3.4 V in a row (1 s at 500 ms) raise the alarm; one dip does not. */
/* @verifies MRTM-SAF-008 MRTM-PWI-002 */
void test_battery_below_3400_mv_twice_sounds_the_buzzer(void)
{
    host.battery_mv = 3390; power_mon_step(0);
    host.battery_mv = 3500; power_mon_step(500);
    alarm_mgr_step(500);
    TEST_ASSERT_FALSE(host.buzzer_on);
    host.battery_mv = 3390; power_mon_step(1000); power_mon_step(1500);
    alarm_mgr_step(1500);
    TEST_ASSERT_TRUE(host.buzzer_on);
    event_record_t e;
    TEST_ASSERT_TRUE(ts_find(MRTM_EV_LOW_BATTERY, &e));
}

int main(void)
{
    UNITY_BEGIN();
    RUN_TEST(test_mains_loss_and_restore_are_logged_from_the_edge);
    RUN_TEST(test_battery_below_3400_mv_twice_sounds_the_buzzer);
    return UNITY_END();
}
