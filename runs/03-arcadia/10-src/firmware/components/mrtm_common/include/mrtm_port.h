/* mrtm_port.h — critical sections around the few words an ISR and a task share.
 * IEC 62304 §5.5.1, Class C. REVIEW: target form uses one spinlock for all queues. */
#ifndef MRTM_PORT_H
#define MRTM_PORT_H
#ifdef ESP_PLATFORM
#include "freertos/FreeRTOS.h"
extern portMUX_TYPE mrtm_mux;
#define MRTM_ENTER() portENTER_CRITICAL_SAFE(&mrtm_mux)
#define MRTM_EXIT()  portEXIT_CRITICAL_SAFE(&mrtm_mux)
#else
#define MRTM_ENTER() ((void)0)   /* host build is single-threaded */
#define MRTM_EXIT()  ((void)0)
#endif
#endif
