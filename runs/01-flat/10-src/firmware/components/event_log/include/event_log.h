/* event_log.h — stamped, checksummed records (contract: ../contracts.md). IEC 62304 §5.4.2, Class C. */
#ifndef EVENT_LOG_H
#define EVENT_LOG_H
#include <stdint.h>
#include "mrtm_errors.h"
#include "mrtm_events.h"

typedef struct __attribute__((packed)) {
    uint32_t seq; uint32_t utc_s; uint8_t kind; uint8_t rsv; int16_t tenths; int16_t peak_tenths;
    uint8_t pad[14]; uint32_t crc32;
} event_record_t;  /* 32 bytes; crc32 over bytes 0..27 */
#ifndef __cplusplus
_Static_assert(sizeof(event_record_t) == 32, "record must be 32 bytes");
#endif

struct history_ring;
void event_log_init(struct history_ring *ring);
mrtm_err_t event_log_post(mrtm_event_kind_t kind, int16_t tenths, int16_t peak_tenths);
mrtm_err_t event_log_post_from_isr(mrtm_event_kind_t kind, int16_t tenths, int16_t peak_tenths);
void event_log_step(uint32_t timeout_ms);
uint32_t event_log_pending(void);

#endif
