/* config_mgr.c — load and check the technician values (MrtmSwDetail::ConfigMgrApi).
 * IEC 62304 §5.5.1, Class C. There is NO default band here on purpose (MRTM-SAF-017). */
#include <stddef.h>
#include "config_mgr.h"
#include "event_log.h"
#include "mrtm_config.h"
#include "mrtm_crc.h"
#include "mrtm_hal.h"

#define CRC_SPAN offsetof(mrtm_config_t, crc32)

static int band_ok(const mrtm_config_t *c)
{
    return MRTM_BAND_MIN_TENTHS <= c->band_low_tenths && c->band_low_tenths < c->band_high_tenths &&
           c->band_high_tenths <= MRTM_BAND_MAX_TENTHS;
}

/* A missing or bad record returns an error; the caller enters failSafe (buzzer on). */
/* @implements MRTM-SAF-017 MRTM-SYS-017 */
mrtm_err_t config_mgr_load(mrtm_config_t *out)
{
    if (out == NULL) return MRTM_ERR_ARG;
    mrtm_config_t c;
    if (hal_nvs_get("cfg", &c, sizeof c) != MRTM_OK) return MRTM_ERR_NVS;
    if (mrtm_crc32(&c, CRC_SPAN) != c.crc32 || !band_ok(&c)) return MRTM_ERR_CRC;
    *out = c;
    return MRTM_OK;
}

/* Technician command over USB (Q-15); takes effect at the next restart. */
/* @implements MRTM-SAF-017 */
mrtm_err_t config_mgr_store(const mrtm_config_t *in)
{
    if (in == NULL || !band_ok(in)) return MRTM_ERR_ARG;
    mrtm_config_t c = *in;
    c.crc32 = mrtm_crc32(&c, CRC_SPAN);
    if (hal_nvs_set("cfg", &c, sizeof c) != MRTM_OK) return MRTM_ERR_NVS;
    (void)event_log_post(MRTM_EV_CONFIG_CHANGED, c.band_low_tenths, c.band_high_tenths);
    return MRTM_OK;
}
