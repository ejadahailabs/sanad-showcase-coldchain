/* limit_evaluator.h — excursion start/end decision (contract: ../contracts.md). IEC 62304 §5.4.2, Class C. */
#ifndef LIMIT_EVALUATOR_H
#define LIMIT_EVALUATOR_H
#include <stdbool.h>
#include <stdint.h>
#include "sensor_sampler.h"

typedef enum { LIMIT_NONE = 0, LIMIT_CONFIRMED, LIMIT_ENDED } limit_event_t;
typedef struct { int16_t low, high, hyst; uint8_t out_run, in_run; bool excursion; int16_t peak; } limit_eval_t;

void limit_evaluator_init(limit_eval_t *st, int16_t low_tenths, int16_t high_tenths);
limit_event_t limit_evaluator_step(limit_eval_t *st, const mrtm_sample_t *s);
int16_t limit_evaluator_peak(const limit_eval_t *st);

#endif
