/* test_int_chains.c — software integration tests on the host build (IEC 62304 §5.6.2–5.6.5, Class C).
 * The whole application (mrtm_app + 12 units) runs under the host scheduler (host/sim.c). */
#include "unity.h"
#include "test_support.h"
#include "alarm_mgr.h"
#include "display_mgr.h"
#include "mrtm_app.h"
#include "power_mon.h"
#include "sim.h"

void setUp(void) { ts_fresh(); sim_reset(); }
void tearDown(void) {}

static int find(mrtm_event_kind_t k, event_record_t *e)
{
    history_ring_t *r = app_history();
    for (uint32_t age = 0; age < history_ring_count(r); age++)
        if (history_ring_read(r, age, e) == MRTM_OK && e->kind == k) return 1;
    return 0;
}

/* INT-01: sensor -> limit -> alarm -> log -> display, one excursion. */
/* @verifies MRTM-HLR-005 MRTM-HLR-008 MRTM-HLR-025 MRTM-HLR-030 */
void test_int01_excursion_chain(void)
{
    TEST_ASSERT_EQUAL(MODE_MONITORING, app_power_up(host.now_ms));
    sim_run(20000);
    host.probe_tenths = 90;
    uint32_t t0 = host.now_ms;
    while (!host.buzzer_on && host.now_ms - t0 < 90000) sim_run(100);
    TEST_ASSERT_TRUE(host.buzzer_on);
    TEST_ASSERT_LESS_OR_EQUAL_UINT32(65000, host.now_ms - t0);
    sim_run(1000);
    TEST_ASSERT_EQUAL(MSG_EXCURSION, display_mgr_banner());
    event_record_t e;
    TEST_ASSERT_TRUE(find(MRTM_EV_EXCURSION_START, &e));
    TEST_ASSERT_EQUAL_INT16(90, e.tenths);
}

/* INT-02: alarm task hangs -> pulses stop -> backup alarm sounds within 10 s of the last pulse. */
/* @verifies MRTM-HLR-016 MRTM-HLR-010 */
void test_int02_watchdog_chain(void)
{
    app_power_up(host.now_ms);
    sim_run(5000);
    sim_alarm_task_alive = false;
    uint32_t hang = host.now_ms;
    sim_run(15000);
    TEST_ASSERT_LESS_OR_EQUAL_UINT32(2000 + 500, host.last_pulse_ms - hang);
    TEST_ASSERT_TRUE(host_backup_alarm_sounding());
    TEST_ASSERT_LESS_OR_EQUAL_UINT32(15000, host.now_ms - hang);
}

/* INT-03: corrupt stored band at power-up -> failSafe, buzzer at once, no monitoring. */
/* @verifies MRTM-HLR-019 MRTM-HLR-023 */
void test_int03_corrupt_config_fail_safe(void)
{
    host.nvs_cfg[2] ^= 0x40;
    TEST_ASSERT_EQUAL(MODE_FAIL_SAFE, app_power_up(host.now_ms));
    TEST_ASSERT_TRUE(host.buzzer_on);
    TEST_ASSERT_LESS_OR_EQUAL_UINT32(5000, host.now_ms);
    sim_run(1000);
    event_record_t e;
    TEST_ASSERT_TRUE(find(MRTM_EV_CONFIG_CRC_FAULT, &e));
}

/* INT-04: restart during an unacknowledged alarm -> sounding again within 2 s. */
/* @verifies MRTM-HLR-014 MRTM-HLR-023 */
void test_int04_restart_restores_the_alarm(void)
{
    app_power_up(host.now_ms);
    host.probe_tenths = 95;
    sim_run(90000);
    TEST_ASSERT_EQUAL(ALARM_SOUNDING, alarm_mgr_state());
    host.buzzer_on = false;                     /* the watchdog restart */
    uint32_t t0 = host.now_ms;
    app_power_up(host.now_ms);
    TEST_ASSERT_EQUAL(ALARM_SOUNDING, alarm_mgr_state());
    TEST_ASSERT_TRUE(host.buzzer_on);                  /* still on after the ~12 s self-test (DEF-002) */
    TEST_ASSERT_LESS_OR_EQUAL_UINT32(2000, host.buzzer_changed_ms - t0);
}

/* INT-05: mains loss logged within 1 s, with the UTC second. */
/* @verifies MRTM-HLR-020 MRTM-HLR-030 */
void test_int05_power_loss_logged_within_1_s(void)
{
    app_power_up(host.now_ms);
    sim_run(3000);
    host.mains = false; power_mon_isr(NULL);
    uint32_t utc = host.rtc_utc;
    sim_run(1000);
    event_record_t e;
    TEST_ASSERT_TRUE(find(MRTM_EV_POWER_LOSS, &e));
    TEST_ASSERT_UINT32_WITHIN(1, utc, e.utc_s);
}

int main(void)
{
    UNITY_BEGIN();
    RUN_TEST(test_int01_excursion_chain);
    RUN_TEST(test_int02_watchdog_chain);
    RUN_TEST(test_int03_corrupt_config_fail_safe);
    RUN_TEST(test_int04_restart_restores_the_alarm);
    RUN_TEST(test_int05_power_loss_logged_within_1_s);
    return UNITY_END();
}
