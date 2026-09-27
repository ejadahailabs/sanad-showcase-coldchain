/* mrtm_crc.c — bitwise CRCs; no tables, the data are a few bytes at a time.
 * IEC 62304 §5.5.1 (unit implementation), Class C. */
#include "mrtm_crc.h"

/* @implements MRTM-SYS-012 */
uint8_t mrtm_crc8_maxim(const uint8_t *p, size_t n)
{
    uint8_t crc = 0;
    for (size_t i = 0; i < n; i++) {
        crc ^= p[i];
        for (int b = 0; b < 8; b++) crc = (uint8_t)((crc & 1u) ? (crc >> 1) ^ 0x8Cu : crc >> 1);
    }
    return crc;
}

/* @implements MRTM-SYS-021 MRTM-SAF-017 */
uint32_t mrtm_crc32(const void *p, size_t n)
{
    const uint8_t *b = p;
    uint32_t crc = 0xFFFFFFFFu;
    for (size_t i = 0; i < n; i++) {
        crc ^= b[i];
        for (int k = 0; k < 8; k++) crc = (crc & 1u) ? (crc >> 1) ^ 0xEDB88320u : crc >> 1;
    }
    return ~crc;
}
