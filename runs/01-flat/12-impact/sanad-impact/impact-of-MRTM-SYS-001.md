# Impact of a Requirement

**Export schema:** `sanad/impact-of/1`

**Subject:** `MRTM-SYS-001` — Sampling period

**Walk depth:** 2 hop(s) — every dependent edge, followed until nothing new was reached; no limit is applied.

36 artifact(s) shown rest on it.

| Artifact | Kind | Hops | Via | Basis |
|---|---|---:|---|---|
| `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw` | `codeSymbol` | 2 | `MRTM-SYS-001` → `MRTM-MNT-003` → `10-src/firmware/components/display_mgr/src/display_mgr.cpp#draw` | declared |
| `10-src/firmware/components/display_mgr/src/display_mgr.cpp#renderFrame` | `codeSymbol` | 2 | `MRTM-SYS-001` → `MRTM-MNT-003` → `10-src/firmware/components/display_mgr/src/display_mgr.cpp#renderFrame` | declared |
| `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_power_up` | `codeSymbol` | 2 | `MRTM-SYS-001` → `MRTM-MNT-003` → `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_power_up` | declared |
| `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step` | `codeSymbol` | 1 | `MRTM-SYS-001` → `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_sensor_step` | declared |
| `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step` | `codeSymbol` | 2 | `MRTM-SYS-001` → `MRTM-SAF-012` → `10-src/firmware/components/mrtm_app/src/mrtm_app.c#app_supervisor_step` | declared |
| `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_init` | `codeSymbol` | 2 | `MRTM-SYS-001` → `MRTM-IFC-001` → `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_init` | declared |
| `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_probe_fault` | `codeSymbol` | 2 | `MRTM-SYS-001` → `MRTM-SAF-003` → `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_probe_fault` | declared |
| `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_read` | `codeSymbol` | 1 | `MRTM-SYS-001` → `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_read` | declared |
| `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_to_tenths` | `codeSymbol` | 2 | `MRTM-SYS-001` → `MRTM-PRF-001` → `10-src/firmware/components/sensor_sampler/src/sensor_sampler.c#sensor_sampler_to_tenths` | declared |
| `10-src/firmware/components/wdt_kicker/src/wdt_kicker.c#wdt_kicker_init` | `codeSymbol` | 2 | `MRTM-SYS-001` → `MRTM-SAF-004` → `10-src/firmware/components/wdt_kicker/src/wdt_kicker.c#wdt_kicker_init` | declared |
| `MRTM-ENV-002` | `requirement` | 1 | `MRTM-SYS-001` → `MRTM-ENV-002` | declared |
| `MRTM-ENV-003` | `requirement` | 1 | `MRTM-SYS-001` → `MRTM-ENV-003` | declared |
| `MRTM-ENV-004` | `requirement` | 1 | `MRTM-SYS-001` → `MRTM-ENV-004` | declared |
| `MRTM-IFC-001` | `requirement` | 1 | `MRTM-SYS-001` → `MRTM-IFC-001` | declared |
| `MRTM-MNT-003` | `requirement` | 1 | `MRTM-SYS-001` → `MRTM-MNT-003` | declared |
| `MRTM-PRF-001` | `requirement` | 1 | `MRTM-SYS-001` → `MRTM-PRF-001` | declared |
| `MRTM-SAF-003` | `requirement` | 1 | `MRTM-SYS-001` → `MRTM-SAF-003` | declared |
| `MRTM-SAF-004` | `requirement` | 1 | `MRTM-SYS-001` → `MRTM-SAF-004` | declared |
| `MRTM-SAF-012` | `requirement` | 1 | `MRTM-SYS-001` → `MRTM-SAF-012` | declared |
| `MRTM-SAF-020` | `requirement` | 1 | `MRTM-SYS-001` → `MRTM-SAF-020` | declared |
| `SP-01` | `verificationCase` | 1 | `MRTM-SYS-001` → `SP-01` | declared |
| `SP-01-H` | `verificationCase` | 1 | `MRTM-SYS-001` → `SP-01-H` | declared |
| `SP-02` | `verificationCase` | 2 | `MRTM-SYS-001` → `MRTM-SAF-003` → `SP-02` | declared |
| `SP-03` | `verificationCase` | 2 | `MRTM-SYS-001` → `MRTM-SAF-004` → `SP-03` | declared |
| `SP-05` | `verificationCase` | 2 | `MRTM-SYS-001` → `MRTM-MNT-003` → `SP-05` | declared |
| `SP-09` | `verificationCase` | 2 | `MRTM-SYS-001` → `MRTM-SAF-012` → `SP-09` | declared |
| `SP-10` | `verificationCase` | 2 | `MRTM-SYS-001` → `MRTM-ENV-004` → `SP-10` | declared |
| `SP-11` | `verificationCase` | 2 | `MRTM-SYS-001` → `MRTM-ENV-002` → `SP-11` | declared |
| `SP-14` | `verificationCase` | 2 | `MRTM-SYS-001` → `MRTM-SAF-020` → `SP-14` | declared |
| `test_display_mgr.test_band_and_version_shown_in_the_first_3_s` | `verificationCase` | 2 | `MRTM-SYS-001` → `MRTM-MNT-003` → `test_display_mgr.test_band_and_version_shown_in_the_first_3_s` | declared |
| `test_display_mgr.test_calibration_due_and_log_capacity_messages` | `verificationCase` | 2 | `MRTM-SYS-001` → `MRTM-SAF-012` → `test_display_mgr.test_calibration_due_and_log_capacity_messages` | declared |
| `test_sensor_sampler.test_conversion_rounds_to_a_tenth_and_adds_the_offset` | `verificationCase` | 2 | `MRTM-SYS-001` → `MRTM-PRF-001` → `test_sensor_sampler.test_conversion_rounds_to_a_tenth_and_adds_the_offset` | declared |
| `test_sensor_sampler.test_error_codes_arg_and_bus` | `verificationCase` | 2 | `MRTM-SYS-001` → `MRTM-IFC-001` → `test_sensor_sampler.test_error_codes_arg_and_bus` | declared |
| `test_sensor_sampler.test_good_scratchpad_gives_a_valid_sample` | `verificationCase` | 1 | `MRTM-SYS-001` → `test_sensor_sampler.test_good_scratchpad_gives_a_valid_sample` | declared |
| `test_sensor_sampler.test_reading_outside_minus30_to_50_declares_the_fault_at_once` | `verificationCase` | 2 | `MRTM-SYS-001` → `MRTM-SAF-003` → `test_sensor_sampler.test_reading_outside_minus30_to_50_declares_the_fault_at_once` | declared |
| `test_wdt_kicker.test_task_watchdog_armed_at_5_s` | `verificationCase` | 2 | `MRTM-SYS-001` → `MRTM-SAF-004` → `test_wdt_kicker.test_task_watchdog_armed_at_5_s` | declared |
