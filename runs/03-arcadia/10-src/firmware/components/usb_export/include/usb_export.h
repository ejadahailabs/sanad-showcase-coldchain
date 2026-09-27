/* usb_export.h — the history as a read-only USB drive (contract: ../contracts.md). IEC 62304 §5.4.2, Class C. */
#ifndef USB_EXPORT_H
#define USB_EXPORT_H
#include <stdint.h>
#include "history_ring.h"
#include "mrtm_errors.h"

#define USB_BLOCK 512u
#define USB_LINE 48u
#define USB_DATA_SECTORS 940u   /* (10 000 records + 1 header line) x 48 B = 938 sectors */
#define USB_FAT_SECTORS 3u
#define USB_TOTAL_SECTORS (1u + USB_FAT_SECTORS + 1u + USB_DATA_SECTORS)

/* The ring is a parameter here: the Phase-8 contract had no way to reach it (F-86). */
mrtm_err_t usb_export_init(const history_ring_t *ring);
int32_t usb_export_read10(uint32_t lba, uint32_t offset, void *buf, uint32_t size);
int32_t usb_export_write10(uint32_t lba, uint32_t offset, const void *buf, uint32_t size);

#endif
