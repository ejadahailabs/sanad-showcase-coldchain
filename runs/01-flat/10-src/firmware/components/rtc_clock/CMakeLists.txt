idf_component_register(SRC_DIRS "src" INCLUDE_DIRS "include"
    REQUIRES mrtm_common sensor_sampler limit_evaluator alarm_mgr display_mgr event_log history_ring config_mgr wdt_kicker diagnostics power_mon usb_export)
