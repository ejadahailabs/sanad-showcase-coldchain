/* sim.c — runs the task bodies of mrtm_app at their periods on the host clock. Host only.
 * sensor 10 s · alarm 1 s + on notification · supervisor 500 ms · log on queue · display 500 ms. */
#include "sim.h"
#include "hal_host.h"
#include "mrtm_app.h"
#include "mrtm_config.h"

bool sim_alarm_task_alive = true;
static uint32_t due_sensor, due_alarm, due_half;

void sim_run(uint32_t ms)
{
    for (uint32_t t = 0; t < ms; t += 100u) {
        host_advance(100u);
        uint32_t now = host.now_ms;
        if (now >= due_sensor) { due_sensor = now + MRTM_SAMPLE_PERIOD_MS; app_sensor_step(now); }
        if (sim_alarm_task_alive && (now >= due_alarm || host.notifications)) {
            if (now >= due_alarm) due_alarm = now + MRTM_ALARM_PERIOD_MS;
            host.notifications = 0;
            app_alarm_step(now);
        }
        if (now >= due_half) { due_half = now + 500u; app_supervisor_step(now); app_display_step(); }
        app_log_step();
    }
}

void sim_reset(void)
{
    due_sensor = due_alarm = due_half = 0;
    sim_alarm_task_alive = true;
}
