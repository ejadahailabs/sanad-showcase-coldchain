/* event_log.c — MrtmSwDetail::EventLogApi. IEC 62304 §5.5.1, Class C.
 * Time-stamped at post time, written by logTask; queue of 32 shared by tasks and ISRs. */
#include <stddef.h>
#include <string.h>
#include "event_log.h"
#include "history_ring.h"
#include "mrtm_crc.h"
#include "mrtm_port.h"
#include "rtc_clock.h"

#define QDEPTH 32u
static event_record_t q[QDEPTH];
static uint32_t q_head, q_len;
static history_ring_t *ring;

void event_log_init(struct history_ring *r)
{
    ring = r;
    q_head = q_len = 0;
}

/* @implements MRTM-SYS-008 MRTM-SYS-009 MRTM-SYS-010 MRTM-SYS-023 */
mrtm_err_t event_log_post(mrtm_event_kind_t kind, int16_t tenths, int16_t peak_tenths)
{
    event_record_t r;
    memset(&r, 0, sizeof r);
    r.utc_s = rtc_clock_now();              /* stamped at the event, 1 s resolution */
    r.kind = (uint8_t)kind;
    r.tenths = tenths;
    r.peak_tenths = peak_tenths;            /* 0.1 degC resolution (MRTM-SYS-009) */
    mrtm_err_t e = MRTM_OK;
    MRTM_ENTER();
    if (q_len == QDEPTH) e = MRTM_ERR_FULL;
    else q[(q_head + q_len++) % QDEPTH] = r;
    MRTM_EXIT();
    return e;
}

mrtm_err_t event_log_post_from_isr(mrtm_event_kind_t kind, int16_t tenths, int16_t peak_tenths)
{
    return event_log_post(kind, tenths, peak_tenths);   /* MRTM_ENTER is ISR-safe on the target */
}

/* REVIEW: timing — logTask must run within 1 s of any post (priority 16, ADR-0019). */
/* @implements MRTM-SAF-018 MRTM-SW-010 */
void event_log_step(uint32_t timeout_ms)
{
    (void)timeout_ms;                       /* target: the queue wait; host: returns at once */
    while (ring != NULL) {
        event_record_t r;
        MRTM_ENTER();
        bool have = q_len > 0;
        if (have) { r = q[q_head]; q_head = (q_head + 1) % QDEPTH; q_len--; }
        MRTM_EXIT();
        if (!have) return;
        r.seq = history_ring_next_seq(ring);
        r.crc32 = mrtm_crc32(&r, offsetof(event_record_t, crc32));
        if (history_ring_append(ring, &r) != MRTM_OK && history_ring_append(ring, &r) != MRTM_OK &&
            r.kind != MRTM_EV_SELF_TEST_FAIL)   /* retried once; never report a report's own failure */
            (void)event_log_post(MRTM_EV_SELF_TEST_FAIL, MRTM_ERR_FLASH, 0);
    }
}

uint32_t event_log_pending(void)
{
    return q_len;
}
