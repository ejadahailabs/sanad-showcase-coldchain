/* limit_evaluator.c — early alarm on the first out sample (ADR-0030), MRTM_CONFIRM_SAMPLES-in-a-row confirmation and end, with a hysteresis knob held at 0 (A-26).
 * MrtmSwDetail::LimitEvaluatorApi. IEC 62304 §5.5.1, Class C. Pure logic, no hardware. */
#include <assert.h>
#include <stddef.h>
#include "limit_evaluator.h"
#include "mrtm_config.h"

_Static_assert(MRTM_SAMPLE_PERIOD_MS + MRTM_PROBE_CONVERSION_MS + 1000u <= MRTM_EARLY_ALARM_MS,
               "early alarm budget exceeded: the sample period is too long for MRTM-SYS-024");
_Static_assert(MRTM_CONFIRM_SAMPLES <= 255u, "out_run / in_run are uint8_t");

/* @implements MRTM-SYS-017 */
void limit_evaluator_init(limit_eval_t *st, int16_t low_tenths, int16_t high_tenths)
{
    assert(st != NULL && low_tenths < high_tenths);
    *st = (limit_eval_t){ .low = low_tenths, .high = high_tenths, .hyst = MRTM_HYSTERESIS_TENTHS };
}

static int distance_outside(const limit_eval_t *st, int16_t t)
{
    return t < st->low ? st->low - t : (t > st->high ? t - st->high : 0);
}

/* @implements MRTM-SYS-002 MRTM-SYS-018 MRTM-SYS-017 MRTM-SYS-024 MRTM-EXI-001 MRTM-EXI-002 MRTM-EXI-003 MRTM-LEV-001 MRTM-LEV-002 MRTM-LEV-003 */
limit_event_t limit_evaluator_step(limit_eval_t *st, const mrtm_sample_t *s)
{
    if (!s->valid) return LIMIT_NONE;                       /* A-29: neither counts nor resets */
    int16_t t = s->tenths;
    bool out = t < st->low - st->hyst || t > st->high + st->hyst;
    bool in = st->low + st->hyst <= t && t <= st->high - st->hyst;
    if (!st->excursion) {
        if (!out) {
            bool was_early = st->out_run > 0;
            st->out_run = 0;
            return was_early ? LIMIT_EARLY_CLEARED : LIMIT_NONE;
        }
        if (st->out_run == 0 || distance_outside(st, t) > distance_outside(st, st->peak)) st->peak = t;
        if (++st->out_run < MRTM_CONFIRM_SAMPLES) return st->out_run == 1 ? LIMIT_EARLY : LIMIT_NONE;
        st->excursion = true;
        st->out_run = 0;
        st->in_run = 0;
        return LIMIT_CONFIRMED;
    }
    if (!in) {                                              /* still out: the in-run starts again */
        st->in_run = 0;
        if (distance_outside(st, t) > distance_outside(st, st->peak)) st->peak = t;
        return LIMIT_NONE;
    }
    if (++st->in_run < MRTM_CONFIRM_SAMPLES) return LIMIT_NONE;
    st->excursion = false;
    st->in_run = 0;
    return LIMIT_ENDED;
}

/* @implements MRTM-SYS-009 */
int16_t limit_evaluator_peak(const limit_eval_t *st)
{
    return st->peak;
}
