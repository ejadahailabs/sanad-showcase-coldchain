/* history_ring.h — 10 000 records over two mirrored flash rings (contract: ../contracts.md).
 * IEC 62304 §5.4.2, Class C. */
#ifndef HISTORY_RING_H
#define HISTORY_RING_H
#include <stdbool.h>
#include <stdint.h>
#include "event_log.h"
#include "mrtm_config.h"
#include "mrtm_errors.h"

#define HISTORY_SLOTS (MRTM_LOG_SECTORS * MRTM_LOG_SLOTS_PER_SECTOR)
typedef struct history_ring { uint32_t head_seq; uint32_t count; bool warned; } history_ring_t;

mrtm_err_t history_ring_init(history_ring_t *r);
mrtm_err_t history_ring_append(history_ring_t *r, const event_record_t *rec);
mrtm_err_t history_ring_read(const history_ring_t *r, uint32_t age, event_record_t *out);
uint32_t history_ring_count(const history_ring_t *r);
uint32_t history_ring_next_seq(const history_ring_t *r);

#endif
