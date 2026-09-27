/* config_mgr.h — technician values in NVS (contract: ../contracts.md). IEC 62304 §5.4.2, Class C. */
#ifndef CONFIG_MGR_H
#define CONFIG_MGR_H
#include <stdint.h>
#include "mrtm_errors.h"

typedef struct {
    uint16_t version;
    int16_t band_low_tenths, band_high_tenths, probe_offset_tenths;
    uint32_t calibration_utc;
    uint32_t crc32;               /* CRC-32 over every byte before this field */
} mrtm_config_t;

mrtm_err_t config_mgr_load(mrtm_config_t *out);
mrtm_err_t config_mgr_store(const mrtm_config_t *in);

#endif
