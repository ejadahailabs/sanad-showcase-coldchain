/* sim.h — cooperative stand-in for the six FreeRTOS tasks (ADR-0019 periods), host only.
 * IEC 62304 §5.6.2 (integration environment). */
#ifndef SIM_H
#define SIM_H
#include <stdbool.h>
#include <stdint.h>

extern bool sim_alarm_task_alive;   /* false = the alarm task hangs (watchdog procedures) */
void sim_reset(void);                /* call after host_reset */
void sim_run(uint32_t ms);           /* advance the clock in 100 ms ticks, running each task when due */
#endif
