/* test_alarm_mgr.c — unit verification of the alarm state machine (MrtmSwStates::AlarmStates).
 * IEC 62304 §5.5.3–5.5.5, Class C. */
#include "unity.h"
#include "test_support.h"
#include "alarm_mgr.h"
#include "mrtm_config.h"

static uint32_t now;
void setUp(void) { ts_fresh(); alarm_mgr_init(); now = 0; alarm_mgr_step(now); }
void tearDown(void) {}
static void go(alarm_signal_t s) { alarm_mgr_post(s); alarm_mgr_step(now); }
static void wait_s(uint32_t s) { for (uint32_t i = 0; i < s; i++) { now += 1000; host.now_ms = now; alarm_mgr_step(now); } }

/* @verifies MRTM-SYS-003 MRTM-SYS-004 */
void test_confirm_sounds_the_buzzer_and_flashes_red_at_2_hz(void)
{
    TEST_ASSERT_TRUE(host.green);
    go(SIG_EXCURSION_CONFIRMED);
    TEST_ASSERT_EQUAL(ALARM_SOUNDING, alarm_mgr_state());
    TEST_ASSERT_TRUE(host.buzzer_on);
    TEST_ASSERT_EQUAL_UINT8(2, host.red_hz);
    TEST_ASSERT_FALSE(host.green);
}

/* Posting wakes the task at once (notification), so the buzzer stops in the same step. */
/* @verifies MRTM-SYS-006 MRTM-SYS-010 */
void test_ack_stops_the_buzzer_in_the_same_step_and_logs(void)
{
    go(SIG_EXCURSION_CONFIRMED);
    uint32_t before = host.notifications;
    go(SIG_ACK_PRESSED);
    TEST_ASSERT_GREATER_THAN_UINT32(before, host.notifications);
    TEST_ASSERT_EQUAL(ALARM_SILENCED, alarm_mgr_state());
    TEST_ASSERT_FALSE(host.buzzer_on);
    TEST_ASSERT_EQUAL_UINT8(2, host.red_hz);
    event_record_t e;
    TEST_ASSERT_TRUE(ts_find(MRTM_EV_ACK, &e));
}

/* @verifies MRTM-SYS-019 */
void test_re_sounds_15_minutes_after_the_ack(void)
{
    go(SIG_EXCURSION_CONFIRMED);
    go(SIG_ACK_PRESSED);
    wait_s(899);
    TEST_ASSERT_EQUAL(ALARM_SILENCED, alarm_mgr_state());
    wait_s(1);
    TEST_ASSERT_EQUAL(ALARM_SOUNDING, alarm_mgr_state());
    TEST_ASSERT_TRUE(host.buzzer_on);
    event_record_t e;
    TEST_ASSERT_TRUE(ts_find(MRTM_EV_REALARM, &e));
}

/* @verifies MRTM-SYS-018 */
void test_end_returns_to_quiet_from_sounding_and_silenced(void)
{
    go(SIG_EXCURSION_CONFIRMED); go(SIG_EXCURSION_ENDED);
    TEST_ASSERT_EQUAL(ALARM_QUIET, alarm_mgr_state());
    go(SIG_EXCURSION_CONFIRMED); go(SIG_ACK_PRESSED); go(SIG_EXCURSION_ENDED);
    TEST_ASSERT_EQUAL(ALARM_QUIET, alarm_mgr_state());
    TEST_ASSERT_FALSE(host.buzzer_on);
    TEST_ASSERT_TRUE(host.green);
}

/* @verifies MRTM-SAF-002 MRTM-SAF-011 */
void test_probe_fault_sounds_1_s_on_1_s_off(void)
{
    go(SIG_PROBE_FAULT);
    TEST_ASSERT_EQUAL(ALARM_PROBE_FAULT, alarm_mgr_state());
    bool pattern[6];
    for (int i = 0; i < 6; i++) { pattern[i] = host.buzzer_on; wait_s(1); }
    for (int i = 0; i < 6; i++) TEST_ASSERT_EQUAL(i % 2 == 0, pattern[i]);
    go(SIG_PROBE_RECOVERED);
    TEST_ASSERT_EQUAL(ALARM_QUIET, alarm_mgr_state());
}

/* @verifies MRTM-SAF-014 MRTM-SAF-015 */
void test_no_buzzer_current_for_5_steps_declares_buzzer_fault_red_4_hz(void)
{
    host.buzzer_broken = true;
    go(SIG_EXCURSION_CONFIRMED);
    wait_s(3);
    TEST_ASSERT_EQUAL(ALARM_SOUNDING, alarm_mgr_state());
    wait_s(1);
    TEST_ASSERT_EQUAL(ALARM_BUZZER_FAULT, alarm_mgr_state());
    alarm_mgr_step(now);
    TEST_ASSERT_EQUAL_UINT8(4, host.red_hz);
    event_record_t e;
    TEST_ASSERT_TRUE(ts_find(MRTM_EV_BUZZER_FAULT, &e));
}

/* A change shorter than 50 ms is ignored; a press held past 50 ms is taken once. */
/* @verifies MRTM-IFC-002 */
void test_button_debounce_50_ms(void)
{
    go(SIG_EXCURSION_CONFIRMED);
    host.button = true; alarm_mgr_button_isr(NULL); host_advance(30);
    host.button = false; alarm_mgr_button_isr(NULL); host_advance(49);
    alarm_mgr_step(host.now_ms);
    TEST_ASSERT_EQUAL(ALARM_SOUNDING, alarm_mgr_state());
    host_advance(10);
    host.button = true; alarm_mgr_button_isr(NULL); host_advance(49);
    alarm_mgr_step(host.now_ms);
    TEST_ASSERT_EQUAL(ALARM_SOUNDING, alarm_mgr_state());
    host_advance(1);
    alarm_mgr_step(host.now_ms);
    TEST_ASSERT_EQUAL(ALARM_SILENCED, alarm_mgr_state());
}

/* @verifies MRTM-SAF-019 */
void test_button_held_60_s_is_a_button_fault_and_ignored(void)
{
    host.button = true; alarm_mgr_button_isr(NULL); host_advance(50);
    now = host.now_ms;
    wait_s(59);
    event_record_t e;
    TEST_ASSERT_FALSE(ts_find(MRTM_EV_BUTTON_FAULT, &e));
    wait_s(1);
    TEST_ASSERT_TRUE(ts_find(MRTM_EV_BUTTON_FAULT, &e));
    go(SIG_EXCURSION_CONFIRMED);
    wait_s(5);
    TEST_ASSERT_EQUAL(ALARM_SOUNDING, alarm_mgr_state());   /* a stuck button acknowledges nothing */
}

/* @verifies MRTM-SAF-006 */
void test_unacknowledged_alarm_is_restored_after_a_restart(void)
{
    go(SIG_EXCURSION_CONFIRMED);
    TEST_ASSERT_EQUAL(ALARM_SOUNDING, host.nvs_alarm);
    host.buzzer_on = false;                          /* the restart */
    TEST_ASSERT_EQUAL(MRTM_OK, alarm_mgr_init());
    alarm_mgr_step(0);
    TEST_ASSERT_EQUAL(ALARM_SOUNDING, alarm_mgr_state());
    TEST_ASSERT_TRUE(host.buzzer_on);
}

/* @verifies MRTM-SAF-006 */
void test_acknowledged_alarm_is_not_restored_as_sounding(void)
{
    go(SIG_EXCURSION_CONFIRMED); go(SIG_ACK_PRESSED);
    alarm_mgr_init(); alarm_mgr_step(0);
    TEST_ASSERT_EQUAL(ALARM_QUIET, alarm_mgr_state());
}

/* @verifies MRTM-SAF-008 MRTM-SAF-017 */
void test_battery_low_or_fail_safe_forces_the_buzzer(void)
{
    go(SIG_BATTERY_LOW);
    TEST_ASSERT_TRUE(host.buzzer_on);
    TEST_ASSERT_TRUE(alarm_mgr_fail_safe());
    TEST_ASSERT_EQUAL(ALARM_QUIET, alarm_mgr_state());
}

/* @verifies MRTM-SAF-010 */
void test_heartbeat_moves_on_every_step(void)
{
    uint32_t b = alarm_mgr_heartbeat();
    alarm_mgr_step(now);
    TEST_ASSERT_EQUAL_UINT32(b + 1, alarm_mgr_heartbeat());
}

/* Error codes of the contract: queue depth 8, then MRTM_ERR_FULL; NVS missing at init. */
void test_error_codes_full_and_nvs(void)
{
    for (int i = 0; i < 8; i++) TEST_ASSERT_EQUAL(MRTM_OK, alarm_mgr_post(SIG_PROBE_RECOVERED));
    TEST_ASSERT_EQUAL(MRTM_ERR_FULL, alarm_mgr_post(SIG_PROBE_RECOVERED));
    host.nvs_alarm_present = false;
    TEST_ASSERT_EQUAL(MRTM_ERR_NVS, alarm_mgr_init());
    TEST_ASSERT_EQUAL(ALARM_QUIET, alarm_mgr_state());
}

int main(void)
{
    UNITY_BEGIN();
    RUN_TEST(test_confirm_sounds_the_buzzer_and_flashes_red_at_2_hz);
    RUN_TEST(test_ack_stops_the_buzzer_in_the_same_step_and_logs);
    RUN_TEST(test_re_sounds_15_minutes_after_the_ack);
    RUN_TEST(test_end_returns_to_quiet_from_sounding_and_silenced);
    RUN_TEST(test_probe_fault_sounds_1_s_on_1_s_off);
    RUN_TEST(test_no_buzzer_current_for_5_steps_declares_buzzer_fault_red_4_hz);
    RUN_TEST(test_button_debounce_50_ms);
    RUN_TEST(test_button_held_60_s_is_a_button_fault_and_ignored);
    RUN_TEST(test_unacknowledged_alarm_is_restored_after_a_restart);
    RUN_TEST(test_acknowledged_alarm_is_not_restored_as_sounding);
    RUN_TEST(test_battery_low_or_fail_safe_forces_the_buzzer);
    RUN_TEST(test_heartbeat_moves_on_every_step);
    RUN_TEST(test_error_codes_full_and_nvs);
    return UNITY_END();
}
