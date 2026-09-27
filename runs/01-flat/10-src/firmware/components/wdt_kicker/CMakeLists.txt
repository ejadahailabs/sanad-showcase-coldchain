idf_component_register(SRC_DIRS "src" INCLUDE_DIRS "include"
    REQUIRES mrtm_common sensor_sampler limit_evaluator alarm_mgr display_mgr event_log history_ring rtc_clock config_mgr diagnostics power_mon usb_export)
