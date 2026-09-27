/* alarm_mgr.c — MrtmSwDetail::AlarmMgrApi, the table of MrtmSwStates::AlarmStates.
 * IEC 62304 §5.5.1, Class C. REVIEW: safety-relevant and timing-critical throughout. */
#include <stddef.h>
#include <string.h>
#include "alarm_mgr.h"
#include "event_log.h"
#include "mrtm_config.h"
#include "mrtm_hal.h"
#include "mrtm_port.h"

#define QDEPTH 8u
static struct {
    alarm_state_t state;
    bool fail_safe;
    uint32_t ack_ms, fault_ms;
    uint8_t no_current_steps;
    volatile uint32_t beat;
    alarm_signal_t q[QDEPTH];
    uint32_t q_head, q_len;
    bool btn_stable, btn_stuck;           /* debounced level; stuck = held 60 s */
    uint32_t btn_since_ms;
} a;

static void persist(void)
{
    uint8_t v = (uint8_t)a.state;
    (void)hal_nvs_set("alarm", &v, 1);    /* restored at restart (MRTM-SAF-006) */
}

/* @implements MRTM-SAF-006 */
mrtm_err_t alarm_mgr_init(void)
{
    uint8_t saved = ALARM_QUIET;
    memset(&a, 0, sizeof a);              /* ALARM_QUIET, empty queue, button released */
    mrtm_err_t e = hal_nvs_get("alarm", &saved, 1);
    if (e != MRTM_OK) (void)event_log_post(MRTM_EV_SELF_TEST_FAIL, MRTM_ERR_NVS, 0);
    else if (saved == ALARM_SOUNDING) a.state = ALARM_SOUNDING;   /* unacknowledged: sound again */
    return e == MRTM_OK ? MRTM_OK : MRTM_ERR_NVS;
}

/* @implements MRTM-SYS-006 */
mrtm_err_t alarm_mgr_post(alarm_signal_t sig)
{
    mrtm_err_t e = MRTM_OK;
    MRTM_ENTER();
    if (a.q_len == QDEPTH) e = MRTM_ERR_FULL;
    else a.q[(a.q_head + a.q_len++) % QDEPTH] = sig;
    MRTM_EXIT();
    hal_notify_alarm_task();              /* woken at once, not at the next 1 s tick */
    return e;
}

mrtm_err_t alarm_mgr_post_from_isr(alarm_signal_t sig)
{
    return alarm_mgr_post(sig);
}

static void enter(alarm_state_t s, uint32_t now_ms)
{
    a.state = s;
    a.no_current_steps = 0;
    if (s == ALARM_SILENCED) a.ack_ms = now_ms;
    if (s == ALARM_PROBE_FAULT) a.fault_ms = now_ms;
    persist();
}

static bool pop(alarm_signal_t *out)
{
    MRTM_ENTER();
    bool have = a.q_len > 0;
    if (have) { *out = a.q[a.q_head]; a.q_head = (a.q_head + 1) % QDEPTH; a.q_len--; }
    MRTM_EXIT();
    return have;
}

/* One row per transition of MrtmSwStates::AlarmStates. */
/* @implements MRTM-SYS-003 MRTM-SYS-006 MRTM-SAF-002 MRTM-SYS-024 MRTM-SW-001 */
static void take(alarm_signal_t sig, uint32_t now_ms)
{
    switch (sig) {
    case SIG_EXCURSION_EARLY:
        if (a.state == ALARM_QUIET) enter(ALARM_EARLY, now_ms);                    /* earlyFromQuiet */
        break;
    case SIG_EARLY_CLEARED:
        if (a.state == ALARM_EARLY) enter(ALARM_QUIET, now_ms);                    /* earlyCleared */
        break;
    case SIG_EXCURSION_CONFIRMED:
        if (a.state == ALARM_QUIET || a.state == ALARM_EARLY) enter(ALARM_SOUNDING, now_ms); /* confirm, confirmFromEarly */
        break;
    case SIG_ACK_PRESSED:
        if (a.state == ALARM_SOUNDING) {                                           /* ack */
            enter(ALARM_SILENCED, now_ms);
            (void)event_log_post(MRTM_EV_ACK, 0, 0);
        }
        break;
    case SIG_EXCURSION_ENDED:
        if (a.state == ALARM_SOUNDING || a.state == ALARM_SILENCED) enter(ALARM_QUIET, now_ms); /* endSounding, endSilenced */
        break;
    case SIG_PROBE_FAULT:
        if (a.state == ALARM_QUIET || a.state == ALARM_EARLY || a.state == ALARM_SOUNDING || a.state == ALARM_SILENCED)
            enter(ALARM_PROBE_FAULT, now_ms);                                      /* probeFrom* */
        break;
    case SIG_PROBE_RECOVERED:
        if (a.state == ALARM_PROBE_FAULT) enter(ALARM_QUIET, now_ms);             /* probeRecovered */
        break;
    case SIG_BATTERY_LOW:
    case SIG_FAIL_SAFE:
        a.fail_safe = true;                                                        /* SystemModes::failSafe */
        break;
    }
}

/* @implements MRTM-SYS-024 MRTM-SYS-003 MRTM-SYS-004 MRTM-SYS-019 MRTM-PRF-002 MRTM-SAF-002 MRTM-SAF-008 MRTM-SAF-011 MRTM-SAF-014 MRTM-SAF-015 MRTM-SAF-017 MRTM-SAF-019 MRTM-SW-002 */
void alarm_mgr_step(uint32_t now_ms)
{
    alarm_signal_t sig;
    while (pop(&sig)) take(sig, now_ms);
    if (a.state == ALARM_SILENCED && now_ms - a.ack_ms >= MRTM_REALARM_MS) {       /* realarm */
        enter(ALARM_SOUNDING, now_ms);
        (void)event_log_post(MRTM_EV_REALARM, 0, 0);
    }
    if (a.btn_stable && !a.btn_stuck && now_ms - a.btn_since_ms >= MRTM_BUTTON_STUCK_MS) {
        a.btn_stuck = true;                                                         /* MRTM-SAF-019 */
        (void)event_log_post(MRTM_EV_BUTTON_FAULT, 0, 0);
    }

    bool buzz, led_green = false;
    uint8_t red_hz = 0;
    switch (a.state) {
    case ALARM_EARLY: buzz = false; red_hz = MRTM_RED_LED_EARLY_HZ; break;             /* low priority: light only */
    case ALARM_SOUNDING: buzz = true; red_hz = MRTM_RED_LED_ALARM_HZ; break;
    case ALARM_SILENCED: buzz = false; red_hz = MRTM_RED_LED_ALARM_HZ; break;
    case ALARM_PROBE_FAULT: buzz = ((now_ms - a.fault_ms) / 1000u) % 2u == 0u; break;   /* 1 s on / 1 s off */
    case ALARM_BUZZER_FAULT: buzz = true; red_hz = MRTM_RED_LED_FAULT_HZ; break;       /* REVIEW: keep trying */
    case ALARM_QUIET: default: buzz = false; led_green = true; break;
    }
    if (a.fail_safe) { buzz = true; led_green = false; if (red_hz == 0) red_hz = MRTM_RED_LED_ALARM_HZ; }
    hal_buzzer_set(buzz);
    hal_red_led(red_hz);
    hal_green_led(led_green);

    /* Buzzer current check while driven (MRTM-SAF-014); the step runs at least every 1 s. */
    if (buzz && !hal_buzzer_current_ok()) {
        if (++a.no_current_steps >= MRTM_BUZZER_FAULT_STEPS && a.state == ALARM_SOUNDING) {  /* buzzerFailed */
            enter(ALARM_BUZZER_FAULT, now_ms);
            (void)event_log_post(MRTM_EV_BUZZER_FAULT, 0, 0);
        }
    } else {
        a.no_current_steps = 0;
    }
    a.beat++;                                                                       /* read by wdt_kicker */
}

/* Edge on the button line: (re)arm the 50 ms debounce one-shot. */
/* @implements MRTM-IFC-002 */
void alarm_mgr_button_isr(void *arg)
{
    (void)arg;
    hal_timer_once(MRTM_BUTTON_DEBOUNCE_MS, alarm_mgr_button_debounced);
}

/* REVIEW: the 60 s stuck check runs in alarm_mgr_step (<= 1 s late) instead of a second one-shot. */
/* @implements MRTM-IFC-002 MRTM-SAF-019 MRTM-SYS-006 MRTM-SW-003 */
void alarm_mgr_button_debounced(void)
{
    bool pressed = hal_button_pressed();
    if (pressed == a.btn_stable) return;                  /* bounce: no change after 50 ms */
    a.btn_stable = pressed;
    a.btn_since_ms = hal_now_ms();
    if (!pressed) { a.btn_stuck = false; return; }
    if (!a.btn_stuck) (void)alarm_mgr_post(SIG_ACK_PRESSED);
}

/* @implements MRTM-SAF-010 MRTM-SW-004 */
uint32_t alarm_mgr_heartbeat(void)
{
    return a.beat;
}

alarm_state_t alarm_mgr_state(void) { return a.state; }
bool alarm_mgr_fail_safe(void) { return a.fail_safe; }
