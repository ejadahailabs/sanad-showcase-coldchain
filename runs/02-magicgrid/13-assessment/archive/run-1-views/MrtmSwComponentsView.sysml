package MrtmSwComponentsView {

    comment /* A view file. It imports the packages it draws, exposes elements and names a
       rendering; it declares nothing of the model. Delete it and every package file is
       byte-identical and the model reads unchanged. */

    private import MrtmSoftware::*;
    private import SanadRenderings::*;

    view 'mrtmSwComponents' : StandardViewDefinitions::GeneralView {
        expose MrtmSoftware::**;
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

    metadata 'l1' : 'Layout' about 'MrtmSoftware'::'AlarmItem' {
        'viewName' = "mrtmSwComponents";
        'x' = 736;
        'y' = 836;
    }

    metadata 'l2' : 'Layout' about 'MrtmSoftware'::'AlarmItem'::'alarmMgr' {
        'viewName' = "mrtmSwComponents";
        'x' = 732;
        'y' = 1232;
    }

    metadata 'l3' : 'Layout' about 'MrtmSoftware'::'AlarmMgr' {
        'viewName' = "mrtmSwComponents";
        'x' = 732;
        'y' = 1472;
    }

    metadata 'l4' : 'Layout' about 'MrtmSoftware'::'AlarmOut' {
        'viewName' = "mrtmSwComponents";
        'x' = 784;
        'y' = 1860;
    }

    metadata 'l5' : 'Layout' about 'MrtmSoftware'::'AlarmTask' {
        'viewName' = "mrtmSwComponents";
        'x' = 4272;
        'y' = 836;
    }

    metadata 'l6' : 'Layout' about 'MrtmSoftware'::'ConfigMgr' {
        'viewName' = "mrtmSwComponents";
        'x' = 3920;
        'y' = 1472;
    }

    metadata 'l7' : 'Layout' about 'MrtmSoftware'::'Diagnostics' {
        'viewName' = "mrtmSwComponents";
        'x' = 3564;
        'y' = 1472;
    }

    metadata 'l8' : 'Layout' about 'MrtmSoftware'::'DisplayItem' {
        'viewName' = "mrtmSwComponents";
        'x' = 1092;
        'y' = 836;
    }

    metadata 'l9' : 'Layout' about 'MrtmSoftware'::'DisplayItem'::'displayMgr' {
        'viewName' = "mrtmSwComponents";
        'x' = 1088;
        'y' = 1232;
    }

    metadata 'l10' : 'Layout' about 'MrtmSoftware'::'DisplayMgr' {
        'viewName' = "mrtmSwComponents";
        'x' = 1088;
        'y' = 1472;
    }

    metadata 'l11' : 'Layout' about 'MrtmSoftware'::'DisplayTask' {
        'viewName' = "mrtmSwComponents";
        'x' = 5368;
        'y' = 836;
    }

    metadata 'l12' : 'Layout' about 'MrtmSoftware'::'EventLog' {
        'viewName' = "mrtmSwComponents";
        'x' = 1440;
        'y' = 1472;
    }

    metadata 'l13' : 'Layout' about 'MrtmSoftware'::'EventRecord' {
        'viewName' = "mrtmSwComponents";
        'x' = 220;
        'y' = 1596;
    }

    metadata 'l14' : 'Layout' about 'MrtmSoftware'::'ExcursionItem' {
        'viewName' = "mrtmSwComponents";
        'x' = 384;
        'y' = 836;
    }

    metadata 'l15' : 'Layout' about 'MrtmSoftware'::'ExcursionItem'::'limitEvaluator' {
        'viewName' = "mrtmSwComponents";
        'x' = 380;
        'y' = 1232;
    }

    metadata 'l16' : 'Layout' about 'MrtmSoftware'::'ExcursionOut' {
        'viewName' = "mrtmSwComponents";
        'x' = 576;
        'y' = 1860;
    }

    metadata 'l17' : 'Layout' about 'MrtmSoftware'::'HeartbeatOut' {
        'viewName' = "mrtmSwComponents";
        'x' = 232;
        'y' = 2096;
    }

    metadata 'l18' : 'Layout' about 'MrtmSoftware'::'HistoryRing' {
        'viewName' = "mrtmSwComponents";
        'x' = 24;
        'y' = 1860;
    }

    metadata 'l19' : 'Layout' about 'MrtmSoftware'::'HistoryRingStore' {
        'viewName' = "mrtmSwComponents";
        'x' = 1796;
        'y' = 1472;
    }

    metadata 'l20' : 'Layout' about 'MrtmSoftware'::'LimitEvaluator' {
        'viewName' = "mrtmSwComponents";
        'x' = 380;
        'y' = 1472;
    }

    metadata 'l21' : 'Layout' about 'MrtmSoftware'::'LogIn' {
        'viewName' = "mrtmSwComponents";
        'x' = 24;
        'y' = 2096;
    }

    metadata 'l22' : 'Layout' about 'MrtmSoftware'::'LogItem' {
        'viewName' = "mrtmSwComponents";
        'x' = 1800;
        'y' = 836;
    }

    metadata 'l23' : 'Layout' about 'MrtmSoftware'::'LogItem'::'eventLog' {
        'viewName' = "mrtmSwComponents";
        'x' = 1440;
        'y' = 1232;
    }

    metadata 'l24' : 'Layout' about 'MrtmSoftware'::'LogItem'::'historyRing' {
        'viewName' = "mrtmSwComponents";
        'x' = 1796;
        'y' = 1232;
    }

    metadata 'l25' : 'Layout' about 'MrtmSoftware'::'LogItem'::'rtcClock' {
        'viewName' = "mrtmSwComponents";
        'x' = 2148;
        'y' = 1232;
    }

    metadata 'l26' : 'Layout' about 'MrtmSoftware'::'LogTask' {
        'viewName' = "mrtmSwComponents";
        'x' = 5048;
        'y' = 836;
    }

    metadata 'l27' : 'Layout' about 'MrtmSoftware'::'MonitorConfig' {
        'viewName' = "mrtmSwComponents";
        'x' = 564;
        'y' = 1596;
    }

    metadata 'l28' : 'Layout' about 'MrtmSoftware'::'MrtmFirmware' {
        'viewName' = "mrtmSwComponents";
        'x' = 2808;
        'y' = 536;
    }

    metadata 'l29' : 'Layout' about 'MrtmSoftware'::'MrtmFirmware'::'alarmItem' {
        'viewName' = "mrtmSwComponents";
        'x' = 732;
        'y' = 644;
    }

    metadata 'l30' : 'Layout' about 'MrtmSoftware'::'MrtmFirmware'::'alarmTask' {
        'viewName' = "mrtmSwComponents";
        'x' = 4272;
        'y' = 644;
    }

    metadata 'l31' : 'Layout' about 'MrtmSoftware'::'MrtmFirmware'::'displayItem' {
        'viewName' = "mrtmSwComponents";
        'x' = 1088;
        'y' = 644;
    }

    metadata 'l32' : 'Layout' about 'MrtmSoftware'::'MrtmFirmware'::'displayTask' {
        'viewName' = "mrtmSwComponents";
        'x' = 5368;
        'y' = 644;
    }

    metadata 'l33' : 'Layout' about 'MrtmSoftware'::'MrtmFirmware'::'excursionItem' {
        'viewName' = "mrtmSwComponents";
        'x' = 380;
        'y' = 644;
    }

    metadata 'l34' : 'Layout' about 'MrtmSoftware'::'MrtmFirmware'::'logItem' {
        'viewName' = "mrtmSwComponents";
        'x' = 1796;
        'y' = 644;
    }

    metadata 'l35' : 'Layout' about 'MrtmSoftware'::'MrtmFirmware'::'logTask' {
        'viewName' = "mrtmSwComponents";
        'x' = 5108;
        'y' = 644;
    }

    metadata 'l36' : 'Layout' about 'MrtmSoftware'::'MrtmFirmware'::'powerItem' {
        'viewName' = "mrtmSwComponents";
        'x' = 2856;
        'y' = 644;
    }

    metadata 'l37' : 'Layout' about 'MrtmSoftware'::'MrtmFirmware'::'sensorItem' {
        'viewName' = "mrtmSwComponents";
        'x' = 24;
        'y' = 644;
    }

    metadata 'l38' : 'Layout' about 'MrtmSoftware'::'MrtmFirmware'::'sensorTask' {
        'viewName' = "mrtmSwComponents";
        'x' = 4804;
        'y' = 644;
    }

    metadata 'l39' : 'Layout' about 'MrtmSoftware'::'MrtmFirmware'::'supervisorItem' {
        'viewName' = "mrtmSwComponents";
        'x' = 3564;
        'y' = 644;
    }

    metadata 'l40' : 'Layout' about 'MrtmSoftware'::'MrtmFirmware'::'supervisorTask' {
        'viewName' = "mrtmSwComponents";
        'x' = 4504;
        'y' = 644;
    }

    metadata 'l41' : 'Layout' about 'MrtmSoftware'::'MrtmFirmware'::'usbItem' {
        'viewName' = "mrtmSwComponents";
        'x' = 2504;
        'y' = 644;
    }

    metadata 'l42' : 'Layout' about 'MrtmSoftware'::'MrtmFirmware'::'usbTask' {
        'viewName' = "mrtmSwComponents";
        'x' = 5632;
        'y' = 644;
    }

    metadata 'l43' : 'Layout' about 'MrtmSoftware'::'MrtmSwDeployment' {
        'viewName' = "mrtmSwComponents";
        'x' = 3000;
        'y' = 44;
    }

    metadata 'l44' : 'Layout' about 'MrtmSoftware'::'MrtmSwDeployment'::'board' {
        'viewName' = "mrtmSwComponents";
        'x' = 5876;
        'y' = 144;
    }

    metadata 'l45' : 'Layout' about 'MrtmSoftware'::'MrtmSwDeployment'::'firmware' {
        'viewName' = "mrtmSwComponents";
        'x' = 2756;
        'y' = 144;
    }

    metadata 'l46' : 'Layout' about 'MrtmSoftware'::'PowerItem' {
        'viewName' = "mrtmSwComponents";
        'x' = 2860;
        'y' = 836;
    }

    metadata 'l47' : 'Layout' about 'MrtmSoftware'::'PowerItem'::'powerMon' {
        'viewName' = "mrtmSwComponents";
        'x' = 2856;
        'y' = 1232;
    }

    metadata 'l48' : 'Layout' about 'MrtmSoftware'::'PowerMon' {
        'viewName' = "mrtmSwComponents";
        'x' = 2856;
        'y' = 1472;
    }

    metadata 'l49' : 'Layout' about 'MrtmSoftware'::'RtcClock' {
        'viewName' = "mrtmSwComponents";
        'x' = 2148;
        'y' = 1472;
    }

    metadata 'l50' : 'Layout' about 'MrtmSoftware'::'RtosTask' {
        'viewName' = "mrtmSwComponents";
        'x' = 4272;
        'y' = 1232;
    }

    metadata 'l51' : 'Layout' about 'MrtmSoftware'::'SafetyClass' {
        'viewName' = "mrtmSwComponents";
        'x' = 24;
        'y' = 1596;
    }

    metadata 'l52' : 'Layout' about 'MrtmSoftware'::'SampleOut' {
        'viewName' = "mrtmSwComponents";
        'x' = 372;
        'y' = 1860;
    }

    metadata 'l53' : 'Layout' about 'MrtmSoftware'::'SensorItem' {
        'viewName' = "mrtmSwComponents";
        'x' = 28;
        'y' = 836;
    }

    metadata 'l54' : 'Layout' about 'MrtmSoftware'::'SensorItem'::'sensorSampler' {
        'viewName' = "mrtmSwComponents";
        'x' = 24;
        'y' = 1232;
    }

    metadata 'l55' : 'Layout' about 'MrtmSoftware'::'SensorSampler' {
        'viewName' = "mrtmSwComponents";
        'x' = 24;
        'y' = 1472;
    }

    metadata 'l56' : 'Layout' about 'MrtmSoftware'::'SensorTask' {
        'viewName' = "mrtmSwComponents";
        'x' = 4804;
        'y' = 836;
    }

    metadata 'l57' : 'Layout' about 'MrtmSoftware'::'SupervisorItem' {
        'viewName' = "mrtmSwComponents";
        'x' = 3568;
        'y' = 836;
    }

    metadata 'l58' : 'Layout' about 'MrtmSoftware'::'SupervisorItem'::'configMgr' {
        'viewName' = "mrtmSwComponents";
        'x' = 3920;
        'y' = 1232;
    }

    metadata 'l59' : 'Layout' about 'MrtmSoftware'::'SupervisorItem'::'diagnostics' {
        'viewName' = "mrtmSwComponents";
        'x' = 3564;
        'y' = 1232;
    }

    metadata 'l60' : 'Layout' about 'MrtmSoftware'::'SupervisorItem'::'wdtKicker' {
        'viewName' = "mrtmSwComponents";
        'x' = 3212;
        'y' = 1232;
    }

    metadata 'l61' : 'Layout' about 'MrtmSoftware'::'SupervisorTask' {
        'viewName' = "mrtmSwComponents";
        'x' = 4504;
        'y' = 836;
    }

    metadata 'l62' : 'Layout' about 'MrtmSoftware'::'UsbExport' {
        'viewName' = "mrtmSwComponents";
        'x' = 2504;
        'y' = 1472;
    }

    metadata 'l63' : 'Layout' about 'MrtmSoftware'::'UsbItem' {
        'viewName' = "mrtmSwComponents";
        'x' = 2508;
        'y' = 836;
    }

    metadata 'l64' : 'Layout' about 'MrtmSoftware'::'UsbItem'::'usbExport' {
        'viewName' = "mrtmSwComponents";
        'x' = 2504;
        'y' = 1232;
    }

    metadata 'l65' : 'Layout' about 'MrtmSoftware'::'UsbTask' {
        'viewName' = "mrtmSwComponents";
        'x' = 5628;
        'y' = 836;
    }

    metadata 'l66' : 'Layout' about 'MrtmSoftware'::'WdtKicker' {
        'viewName' = "mrtmSwComponents";
        'x' = 3212;
        'y' = 1472;
    }
}
