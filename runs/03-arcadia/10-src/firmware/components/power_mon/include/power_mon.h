/* power_mon.h — mains and battery watch (contract: ../contracts.md). IEC 62304 §5.4.2, Class C. */
#ifndef POWER_MON_H
#define POWER_MON_H
#include <stdint.h>
#include "mrtm_errors.h"

mrtm_err_t power_mon_init(void);
void power_mon_isr(void *arg);
void power_mon_step(uint32_t now_ms);

#endif
