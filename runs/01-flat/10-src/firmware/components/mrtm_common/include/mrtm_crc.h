/* mrtm_crc.h — the two checksums the firmware uses. IEC 62304 §5.5.1, Class C. */
#ifndef MRTM_CRC_H
#define MRTM_CRC_H
#include <stddef.h>
#include <stdint.h>

/* CRC-8 Dallas/Maxim (poly 0x31 reflected = 0x8C, init 0): the DS18B20 scratchpad check. */
uint8_t mrtm_crc8_maxim(const uint8_t *p, size_t n);
/* CRC-32/ISO-HDLC (poly 0x04C11DB7 reflected, init/xorout 0xFFFFFFFF): log records and the stored config. */
uint32_t mrtm_crc32(const void *p, size_t n);

#endif
