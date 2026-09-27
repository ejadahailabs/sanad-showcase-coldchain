/* sensor_sampler.h — read and check the probe (contract: ../contracts.md). IEC 62304 §5.4.2, Class C. */
#ifndef SENSOR_SAMPLER_H
#define SENSOR_SAMPLER_H
#include <stdbool.h>
#include <stdint.h>
#include "config_mgr.h"
#include "mrtm_errors.h"

typedef struct { int16_t tenths; uint32_t utc_s; bool valid; } mrtm_sample_t;  /* valid = CRC ok AND -30..50 degC */

mrtm_err_t sensor_sampler_init(const mrtm_config_t *cfg);
mrtm_err_t sensor_sampler_read(uint32_t now_s, mrtm_sample_t *out);
bool sensor_sampler_probe_fault(uint32_t now_s);
int16_t sensor_sampler_to_tenths(int16_t raw, int16_t offset_tenths);

#endif
