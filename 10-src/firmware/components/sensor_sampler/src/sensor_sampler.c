/* sensor_sampler.c — the DS18B20 read path (MrtmSwDetail::SensorSamplerApi).
 * IEC 62304 §5.5.1, Class C. Called by sensorTask every MRTM_SAMPLE_PERIOD_MS. */
#include <stddef.h>
#include "sensor_sampler.h"
#include "mrtm_config.h"
#include "mrtm_crc.h"
#include "mrtm_hal.h"

static struct {
    int16_t offset;
    bool started;
    uint32_t last_valid_s;
    bool out_of_range;
} s;

/* @implements MRTM-IFC-001 */
mrtm_err_t sensor_sampler_init(const mrtm_config_t *cfg)
{
    if (cfg == NULL) return MRTM_ERR_ARG;
    s.offset = cfg->probe_offset_tenths;
    s.started = false;
    s.out_of_range = false;
    if (!hal_onewire_reset() || !hal_onewire_start_conversion()) return MRTM_ERR_BUS;
    return MRTM_OK;
}

/* raw = 12-bit two's complement in 1/16 degC; result rounded half away from zero to 0.1 degC.
   REVIEW: accuracy itself is the probe's (+-0.5 degC); firmware adds only the calibrated offset. */
/* @implements MRTM-PRF-001 MRTM-SYS-011 */
int16_t sensor_sampler_to_tenths(int16_t raw, int16_t offset_tenths)
{
    int32_t x = (int32_t)raw * 10;
    int32_t t = (x >= 0 ? x + 8 : x - 8) / 16;
    return (int16_t)(t + offset_tenths);
}

/* @implements MRTM-SYS-001 MRTM-IFC-001 MRTM-SAF-003 MRTM-SYS-012 */
mrtm_err_t sensor_sampler_read(uint32_t now_s, mrtm_sample_t *out)
{
    if (out == NULL) return MRTM_ERR_ARG;
    if (!s.started) { s.started = true; s.last_valid_s = now_s; }
    out->utc_s = now_s;
    out->valid = false;
    out->tenths = 0;
    uint8_t sp[9];
    bool read_ok = hal_onewire_read_scratchpad(sp);
    (void)hal_onewire_start_conversion();   /* next 750 ms conversion, ready long before the next read */
    if (!read_ok) return MRTM_ERR_BUS;
    if (mrtm_crc8_maxim(sp, 8) != sp[8]) return MRTM_ERR_CRC;   /* neither valid nor out of range (A-29) */
    int16_t t = sensor_sampler_to_tenths((int16_t)((uint16_t)sp[0] | ((uint16_t)sp[1] << 8)), s.offset);
    out->tenths = t;
    if (t < MRTM_PROBE_MIN_TENTHS || t > MRTM_PROBE_MAX_TENTHS) {
        s.out_of_range = true;                 /* MRTM-SAF-003: fault at once */
        return MRTM_ERR_RANGE;
    }
    s.out_of_range = false;
    s.last_valid_s = now_s;
    out->valid = true;
    return MRTM_OK;
}

/* @implements MRTM-SYS-012 MRTM-SAF-003 */
bool sensor_sampler_probe_fault(uint32_t now_s)
{
    if (!s.started) return false;
    return s.out_of_range || (now_s - s.last_valid_s >= MRTM_PROBE_FAULT_S);
}
