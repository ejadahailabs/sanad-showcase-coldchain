package MrtmSwContractsView {

    comment /* A view file. It imports the packages it draws, exposes elements and names a
       rendering; it declares nothing of the model. Delete it and every package file is
       byte-identical and the model reads unchanged. */

    private import MrtmSwDetail::*;
    private import SanadRenderings::*;

    view 'mrtmSwContracts' : StandardViewDefinitions::GeneralView {
        expose MrtmSwDetail::**;
        render asGeneralView;
    }
}

package 'Layout_Sanad' {

    comment /* Layout only. Written and read by this workbench.
       Every entry annotates an element by qualified name; no model element is modified.
       Delete this package and the model is unchanged. */

    private import ScalarValues::*;

    metadata def 'Layout' {
        attribute 'viewName' : String;
        attribute 'x' : Real;
        attribute 'y' : Real;
        attribute 'w' : Real;
        attribute 'h' : Real;
    }

    metadata def 'EdgeLayout' {
        attribute 'viewName' : String;
        attribute 'edge' : String;
        attribute 'bends' : String;
    }

    metadata 'l1' : 'Layout' about 'MrtmSwDetail'::'AlarmMgrApi' {
        'viewName' = "mrtmSwContracts";
        'x' = 2816;
        'y' = 380;
    }

    metadata 'l2' : 'Layout' about 'MrtmSwDetail'::'AlarmMgrApi'::'alarm_mgr_button_isr' {
        'viewName' = "mrtmSwContracts";
        'x' = 3112;
        'y' = 576;
    }

    metadata 'l3' : 'Layout' about 'MrtmSwDetail'::'AlarmMgrApi'::'alarm_mgr_heartbeat' {
        'viewName' = "mrtmSwContracts";
        'x' = 3456;
        'y' = 576;
    }

    metadata 'l4' : 'Layout' about 'MrtmSwDetail'::'AlarmMgrApi'::'alarm_mgr_init' {
        'viewName' = "mrtmSwContracts";
        'x' = 2076;
        'y' = 576;
    }

    metadata 'l5' : 'Layout' about 'MrtmSwDetail'::'AlarmMgrApi'::'alarm_mgr_post' {
        'viewName' = "mrtmSwContracts";
        'x' = 2420;
        'y' = 576;
    }

    metadata 'l6' : 'Layout' about 'MrtmSwDetail'::'AlarmMgrApi'::'alarm_mgr_step' {
        'viewName' = "mrtmSwContracts";
        'x' = 2764;
        'y' = 576;
    }

    metadata 'l7' : 'Layout' about 'MrtmSwDetail'::'BannerWidget' {
        'viewName' = "mrtmSwContracts";
        'x' = 12896;
        'y' = 1112;
    }

    metadata 'l8' : 'Layout' about 'MrtmSwDetail'::'BannerWidget'::'setMessage' {
        'viewName' = "mrtmSwContracts";
        'x' = 12896;
        'y' = 1380;
    }

    metadata 'l9' : 'Layout' about 'MrtmSwDetail'::'ConfigMgrApi' {
        'viewName' = "mrtmSwContracts";
        'x' = 8120;
        'y' = 380;
    }

    metadata 'l10' : 'Layout' about 'MrtmSwDetail'::'ConfigMgrApi'::'config_mgr_load' {
        'viewName' = "mrtmSwContracts";
        'x' = 7880;
        'y' = 576;
    }

    metadata 'l11' : 'Layout' about 'MrtmSwDetail'::'ConfigMgrApi'::'config_mgr_store' {
        'viewName' = "mrtmSwContracts";
        'x' = 8224;
        'y' = 576;
    }

    metadata 'l12' : 'Layout' about 'MrtmSwDetail'::'DiagnosticsApi' {
        'viewName' = "mrtmSwContracts";
        'x' = 9480;
        'y' = 380;
    }

    metadata 'l13' : 'Layout' about 'MrtmSwDetail'::'DiagnosticsApi'::'diagnostics_power_up' {
        'viewName' = "mrtmSwContracts";
        'x' = 9252;
        'y' = 576;
    }

    metadata 'l14' : 'Layout' about 'MrtmSwDetail'::'DiagnosticsApi'::'diagnostics_step' {
        'viewName' = "mrtmSwContracts";
        'x' = 9596;
        'y' = 576;
    }

    metadata 'l15' : 'Layout' about 'MrtmSwDetail'::'DisplayMgrApi' {
        'viewName' = "mrtmSwContracts";
        'x' = 4196;
        'y' = 380;
    }

    metadata 'l16' : 'Layout' about 'MrtmSwDetail'::'DisplayMgrApi'::'display_mgr_init' {
        'viewName' = "mrtmSwContracts";
        'x' = 3784;
        'y' = 576;
    }

    metadata 'l17' : 'Layout' about 'MrtmSwDetail'::'DisplayMgrApi'::'display_mgr_tick' {
        'viewName' = "mrtmSwContracts";
        'x' = 4476;
        'y' = 576;
    }

    metadata 'l18' : 'Layout' about 'MrtmSwDetail'::'DisplayMgrApi'::'display_mgr_update' {
        'viewName' = "mrtmSwContracts";
        'x' = 4128;
        'y' = 576;
    }

    metadata 'l19' : 'Layout' about 'MrtmSwDetail'::'EventLogApi' {
        'viewName' = "mrtmSwContracts";
        'x' = 5064;
        'y' = 380;
    }

    metadata 'l20' : 'Layout' about 'MrtmSwDetail'::'EventLogApi'::'event_log_post' {
        'viewName' = "mrtmSwContracts";
        'x' = 4820;
        'y' = 576;
    }

    metadata 'l21' : 'Layout' about 'MrtmSwDetail'::'EventLogApi'::'event_log_step' {
        'viewName' = "mrtmSwContracts";
        'x' = 5168;
        'y' = 576;
    }

    metadata 'l22' : 'Layout' about 'MrtmSwDetail'::'FrameBuffer' {
        'viewName' = "mrtmSwContracts";
        'x' = 12004;
        'y' = 1112;
    }

    metadata 'l23' : 'Layout' about 'MrtmSwDetail'::'FrameBuffer'::'clear' {
        'viewName' = "mrtmSwContracts";
        'x' = 11964;
        'y' = 1380;
    }

    metadata 'l24' : 'Layout' about 'MrtmSwDetail'::'FrameBuffer'::'setPixel' {
        'viewName' = "mrtmSwContracts";
        'x' = 12160;
        'y' = 1380;
    }

    metadata 'l25' : 'Layout' about 'MrtmSwDetail'::'HistoryRingApi' {
        'viewName' = "mrtmSwContracts";
        'x' = 6076;
        'y' = 380;
    }

    metadata 'l26' : 'Layout' about 'MrtmSwDetail'::'HistoryRingApi'::'history_ring_append' {
        'viewName' = "mrtmSwContracts";
        'x' = 5860;
        'y' = 576;
    }

    metadata 'l27' : 'Layout' about 'MrtmSwDetail'::'HistoryRingApi'::'history_ring_count' {
        'viewName' = "mrtmSwContracts";
        'x' = 6548;
        'y' = 576;
    }

    metadata 'l28' : 'Layout' about 'MrtmSwDetail'::'HistoryRingApi'::'history_ring_init' {
        'viewName' = "mrtmSwContracts";
        'x' = 5512;
        'y' = 576;
    }

    metadata 'l29' : 'Layout' about 'MrtmSwDetail'::'HistoryRingApi'::'history_ring_read' {
        'viewName' = "mrtmSwContracts";
        'x' = 6200;
        'y' = 576;
    }

    metadata 'l30' : 'Layout' about 'MrtmSwDetail'::'IconWidget' {
        'viewName' = "mrtmSwContracts";
        'x' = 13244;
        'y' = 1112;
    }

    metadata 'l31' : 'Layout' about 'MrtmSwDetail'::'IconWidget'::'setIcon' {
        'viewName' = "mrtmSwContracts";
        'x' = 13244;
        'y' = 1380;
    }

    metadata 'l32' : 'Layout' about 'MrtmSwDetail'::'LimitEvaluatorApi' {
        'viewName' = "mrtmSwContracts";
        'x' = 1444;
        'y' = 380;
    }

    metadata 'l33' : 'Layout' about 'MrtmSwDetail'::'LimitEvaluatorApi'::'limit_evaluator_init' {
        'viewName' = "mrtmSwContracts";
        'x' = 1044;
        'y' = 576;
    }

    metadata 'l34' : 'Layout' about 'MrtmSwDetail'::'LimitEvaluatorApi'::'limit_evaluator_peak' {
        'viewName' = "mrtmSwContracts";
        'x' = 1736;
        'y' = 576;
    }

    metadata 'l35' : 'Layout' about 'MrtmSwDetail'::'LimitEvaluatorApi'::'limit_evaluator_step' {
        'viewName' = "mrtmSwContracts";
        'x' = 1388;
        'y' = 576;
    }

    metadata 'l36' : 'Layout' about 'MrtmSwDetail'::'MrtmUnitContracts' {
        'viewName' = "mrtmSwContracts";
        'x' = 6972;
        'y' = 44;
    }

    metadata 'l37' : 'Layout' about 'MrtmSwDetail'::'MrtmUnitContracts'::'alarmMgrApi' {
        'viewName' = "mrtmSwContracts";
        'x' = 2800;
        'y' = 144;
    }

    metadata 'l38' : 'Layout' about 'MrtmSwDetail'::'MrtmUnitContracts'::'configMgrApi' {
        'viewName' = "mrtmSwContracts";
        'x' = 8088;
        'y' = 144;
    }

    metadata 'l39' : 'Layout' about 'MrtmSwDetail'::'MrtmUnitContracts'::'diagnosticsApi' {
        'viewName' = "mrtmSwContracts";
        'x' = 9444;
        'y' = 144;
    }

    metadata 'l40' : 'Layout' about 'MrtmSwDetail'::'MrtmUnitContracts'::'displayMgrApi' {
        'viewName' = "mrtmSwContracts";
        'x' = 4160;
        'y' = 144;
    }

    metadata 'l41' : 'Layout' about 'MrtmSwDetail'::'MrtmUnitContracts'::'eventLogApi' {
        'viewName' = "mrtmSwContracts";
        'x' = 5036;
        'y' = 144;
    }

    metadata 'l42' : 'Layout' about 'MrtmSwDetail'::'MrtmUnitContracts'::'historyRingApi' {
        'viewName' = "mrtmSwContracts";
        'x' = 6036;
        'y' = 144;
    }

    metadata 'l43' : 'Layout' about 'MrtmSwDetail'::'MrtmUnitContracts'::'limitEvaluatorApi' {
        'viewName' = "mrtmSwContracts";
        'x' = 1388;
        'y' = 144;
    }

    metadata 'l44' : 'Layout' about 'MrtmSwDetail'::'MrtmUnitContracts'::'powerMonApi' {
        'viewName' = "mrtmSwContracts";
        'x' = 10320;
        'y' = 144;
    }

    metadata 'l45' : 'Layout' about 'MrtmSwDetail'::'MrtmUnitContracts'::'rtcClockApi' {
        'viewName' = "mrtmSwContracts";
        'x' = 7240;
        'y' = 144;
    }

    metadata 'l46' : 'Layout' about 'MrtmSwDetail'::'MrtmUnitContracts'::'screen' {
        'viewName' = "mrtmSwContracts";
        'x' = 12928;
        'y' = 144;
    }

    metadata 'l47' : 'Layout' about 'MrtmSwDetail'::'MrtmUnitContracts'::'sensorSamplerApi' {
        'viewName' = "mrtmSwContracts";
        'x' = 368;
        'y' = 144;
    }

    metadata 'l48' : 'Layout' about 'MrtmSwDetail'::'MrtmUnitContracts'::'usbExportApi' {
        'viewName' = "mrtmSwContracts";
        'x' = 11320;
        'y' = 144;
    }

    metadata 'l49' : 'Layout' about 'MrtmSwDetail'::'MrtmUnitContracts'::'wdtKickerApi' {
        'viewName' = "mrtmSwContracts";
        'x' = 8772;
        'y' = 144;
    }

    metadata 'l50' : 'Layout' about 'MrtmSwDetail'::'PowerMonApi' {
        'viewName' = "mrtmSwContracts";
        'x' = 10344;
        'y' = 380;
    }

    metadata 'l51' : 'Layout' about 'MrtmSwDetail'::'PowerMonApi'::'power_mon_init' {
        'viewName' = "mrtmSwContracts";
        'x' = 9944;
        'y' = 576;
    }

    metadata 'l52' : 'Layout' about 'MrtmSwDetail'::'PowerMonApi'::'power_mon_isr' {
        'viewName' = "mrtmSwContracts";
        'x' = 10276;
        'y' = 576;
    }

    metadata 'l53' : 'Layout' about 'MrtmSwDetail'::'PowerMonApi'::'power_mon_step' {
        'viewName' = "mrtmSwContracts";
        'x' = 10620;
        'y' = 576;
    }

    metadata 'l54' : 'Layout' about 'MrtmSwDetail'::'RtcClockApi' {
        'viewName' = "mrtmSwContracts";
        'x' = 7268;
        'y' = 380;
    }

    metadata 'l55' : 'Layout' about 'MrtmSwDetail'::'RtcClockApi'::'rtc_clock_init' {
        'viewName' = "mrtmSwContracts";
        'x' = 6860;
        'y' = 576;
    }

    metadata 'l56' : 'Layout' about 'MrtmSwDetail'::'RtcClockApi'::'rtc_clock_now' {
        'viewName' = "mrtmSwContracts";
        'x' = 7204;
        'y' = 576;
    }

    metadata 'l57' : 'Layout' about 'MrtmSwDetail'::'RtcClockApi'::'rtc_clock_set' {
        'viewName' = "mrtmSwContracts";
        'x' = 7544;
        'y' = 576;
    }

    metadata 'l58' : 'Layout' about 'MrtmSwDetail'::'Screen' {
        'viewName' = "mrtmSwContracts";
        'x' = 12876;
        'y' = 380;
    }

    metadata 'l59' : 'Layout' about 'MrtmSwDetail'::'Screen'::'banner' {
        'viewName' = "mrtmSwContracts";
        'x' = 12956;
        'y' = 576;
    }

    metadata 'l60' : 'Layout' about 'MrtmSwDetail'::'Screen'::'driver' {
        'viewName' = "mrtmSwContracts";
        'x' = 13612;
        'y' = 576;
    }

    metadata 'l61' : 'Layout' about 'MrtmSwDetail'::'Screen'::'fb' {
        'viewName' = "mrtmSwContracts";
        'x' = 12044;
        'y' = 576;
    }

    metadata 'l62' : 'Layout' about 'MrtmSwDetail'::'Screen'::'icon' {
        'viewName' = "mrtmSwContracts";
        'x' = 13288;
        'y' = 576;
    }

    metadata 'l63' : 'Layout' about 'MrtmSwDetail'::'Screen'::'renderFrame' {
        'viewName' = "mrtmSwContracts";
        'x' = 13928;
        'y' = 576;
    }

    metadata 'l64' : 'Layout' about 'MrtmSwDetail'::'Screen'::'temperature' {
        'viewName' = "mrtmSwContracts";
        'x' = 12496;
        'y' = 576;
    }

    metadata 'l65' : 'Layout' about 'MrtmSwDetail'::'SensorSamplerApi' {
        'viewName' = "mrtmSwContracts";
        'x' = 400;
        'y' = 380;
    }

    metadata 'l66' : 'Layout' about 'MrtmSwDetail'::'SensorSamplerApi'::'sensor_sampler_init' {
        'viewName' = "mrtmSwContracts";
        'x' = 24;
        'y' = 576;
    }

    metadata 'l67' : 'Layout' about 'MrtmSwDetail'::'SensorSamplerApi'::'sensor_sampler_probe_fault' {
        'viewName' = "mrtmSwContracts";
        'x' = 696;
        'y' = 576;
    }

    metadata 'l68' : 'Layout' about 'MrtmSwDetail'::'SensorSamplerApi'::'sensor_sampler_read' {
        'viewName' = "mrtmSwContracts";
        'x' = 352;
        'y' = 576;
    }

    metadata 'l69' : 'Layout' about 'MrtmSwDetail'::'Ssd1306Driver' {
        'viewName' = "mrtmSwContracts";
        'x' = 13576;
        'y' = 1112;
    }

    metadata 'l70' : 'Layout' about 'MrtmSwDetail'::'Ssd1306Driver'::'recoverBus' {
        'viewName' = "mrtmSwContracts";
        'x' = 13732;
        'y' = 1380;
    }

    metadata 'l71' : 'Layout' about 'MrtmSwDetail'::'Ssd1306Driver'::'sendPages' {
        'viewName' = "mrtmSwContracts";
        'x' = 13536;
        'y' = 1380;
    }

    metadata 'l72' : 'Layout' about 'MrtmSwDetail'::'TextWidget' {
        'viewName' = "mrtmSwContracts";
        'x' = 12456;
        'y' = 1112;
    }

    metadata 'l73' : 'Layout' about 'MrtmSwDetail'::'TextWidget'::'setTenths' {
        'viewName' = "mrtmSwContracts";
        'x' = 12356;
        'y' = 1380;
    }

    metadata 'l74' : 'Layout' about 'MrtmSwDetail'::'UnitPort' {
        'viewName' = "mrtmSwContracts";
        'x' = 24;
        'y' = 1756;
    }

    metadata 'l75' : 'Layout' about 'MrtmSwDetail'::'UsbExportApi' {
        'viewName' = "mrtmSwContracts";
        'x' = 11352;
        'y' = 380;
    }

    metadata 'l76' : 'Layout' about 'MrtmSwDetail'::'UsbExportApi'::'usb_export_init' {
        'viewName' = "mrtmSwContracts";
        'x' = 10952;
        'y' = 576;
    }

    metadata 'l77' : 'Layout' about 'MrtmSwDetail'::'UsbExportApi'::'usb_export_read10' {
        'viewName' = "mrtmSwContracts";
        'x' = 11296;
        'y' = 576;
    }

    metadata 'l78' : 'Layout' about 'MrtmSwDetail'::'UsbExportApi'::'usb_export_write10' {
        'viewName' = "mrtmSwContracts";
        'x' = 11640;
        'y' = 576;
    }

    metadata 'l79' : 'Layout' about 'MrtmSwDetail'::'WdtKickerApi' {
        'viewName' = "mrtmSwContracts";
        'x' = 8808;
        'y' = 380;
    }

    metadata 'l80' : 'Layout' about 'MrtmSwDetail'::'WdtKickerApi'::'wdt_kicker_init' {
        'viewName' = "mrtmSwContracts";
        'x' = 8572;
        'y' = 576;
    }

    metadata 'l81' : 'Layout' about 'MrtmSwDetail'::'WdtKickerApi'::'wdt_kicker_step' {
        'viewName' = "mrtmSwContracts";
        'x' = 8904;
        'y' = 576;
    }

    metadata 'l82' : 'Layout' about 'MrtmSwDetail'::'Widget' {
        'viewName' = "mrtmSwContracts";
        'x' = 12552;
        'y' = 1380;
    }

    metadata 'l83' : 'Layout' about 'MrtmSwDetail'::'Widget'::'draw' {
        'viewName' = "mrtmSwContracts";
        'x' = 12552;
        'y' = 1632;
    }
}
