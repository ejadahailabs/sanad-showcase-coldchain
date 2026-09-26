/* app_main.c — FreeRTOS start-up: power-up sequence, then the six tasks of ADR-0019.
 * IEC 62304 §5.5.1, Class C. UNTESTED on a target (A-30). REVIEW: priorities, stacks, cores. */
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "alarm_mgr.h"
#include "mrtm_app.h"
#include "mrtm_config.h"
#include "mrtm_hal.h"

TaskHandle_t mrtm_alarm_task;
portMUX_TYPE mrtm_mux = portMUX_INITIALIZER_UNLOCKED;

static void sensor_task(void *p)     { (void)p; TickType_t t = xTaskGetTickCount(); for (;;) { app_sensor_step(hal_now_ms()); vTaskDelayUntil(&t, pdMS_TO_TICKS(MRTM_SAMPLE_PERIOD_MS)); } }
static void alarm_task(void *p)      { (void)p; for (;;) { ulTaskNotifyTake(pdTRUE, pdMS_TO_TICKS(MRTM_ALARM_PERIOD_MS)); app_alarm_step(hal_now_ms()); esp_task_wdt_reset(); } }
static void supervisor_task(void *p) { (void)p; TickType_t t = xTaskGetTickCount(); for (;;) { app_supervisor_step(hal_now_ms()); esp_task_wdt_reset(); vTaskDelayUntil(&t, pdMS_TO_TICKS(500)); } }
static void log_task(void *p)        { (void)p; for (;;) { app_log_step(); vTaskDelay(pdMS_TO_TICKS(100)); } }   /* REVIEW: queue wait instead of 100 ms poll */
static void display_task(void *p)    { (void)p; TickType_t t = xTaskGetTickCount(); for (;;) { app_display_step(); vTaskDelayUntil(&t, pdMS_TO_TICKS(MRTM_DISPLAY_PERIOD_MS)); } }

void app_main(void)
{
    (void)app_power_up(hal_now_ms());
    /* Core 1 = safety tasks, core 0 = slow I/O (ADR-0019, A-28). USB runs inside TinyUSB's own task. */
    xTaskCreatePinnedToCore(alarm_task, "alarm", 4096, NULL, MRTM_PRIO_ALARM, &mrtm_alarm_task, 1);
    xTaskCreatePinnedToCore(supervisor_task, "supervisor", 4096, NULL, MRTM_PRIO_SUPERVISOR, NULL, 1);
    xTaskCreatePinnedToCore(sensor_task, "sensor", 4096, NULL, MRTM_PRIO_SENSOR, NULL, 1);
    xTaskCreatePinnedToCore(log_task, "log", 4096, NULL, MRTM_PRIO_LOG, NULL, 0);
    xTaskCreatePinnedToCore(display_task, "display", 6144, NULL, MRTM_PRIO_DISPLAY, NULL, 0);
}
