/* mrtm_app.h — the task bodies (MrtmSoftware 6 tasks, ADR-0019) as plain step functions, so the
 * same code runs under FreeRTOS (main/app_main.c) and in the host simulation (10-src/host/sim_main.c).
 * IEC 62304 §5.5.1 / §5.6 (integration), Class C. */
#ifndef MRTM_APP_H
#define MRTM_APP_H
#include <stdbool.h>
#include <stdint.h>
#include "history_ring.h"

typedef enum { MODE_SELF_TEST = 0, MODE_MONITORING, MODE_FAIL_SAFE } mrtm_mode_t;  /* SystemModes (onBattery: power_mon) */

mrtm_mode_t app_power_up(uint32_t now_ms);
void app_sensor_step(uint32_t now_ms);      /* sensorTask, every 10 s */
void app_alarm_step(uint32_t now_ms);       /* alarmTask, every 1 s and on notification */
void app_supervisor_step(uint32_t now_ms);  /* supervisorTask, every 500 ms */
void app_log_step(void);                    /* logTask, on queue */
void app_display_step(void);                /* displayTask, every 500 ms */
mrtm_mode_t app_mode(void);
history_ring_t *app_history(void);

#endif
