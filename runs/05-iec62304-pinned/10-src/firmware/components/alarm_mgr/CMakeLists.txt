idf_component_register(SRC_DIRS "src" INCLUDE_DIRS "include"
    REQUIRES mrtm_common sensor_sampler limit_evaluator display_mgr event_log history_ring rtc_clock config_mgr wdt_kicker diagnostics power_mon usb_export)
