package Epbs_breakdownView {

    comment /* A view file. It imports the packages it draws, exposes elements and names a
       rendering; it declares nothing of the model. Delete it and every package file is
       byte-identical and the model reads unchanged. */

    private import EpbsBreakdown::*;
    private import SanadRenderings::*;

    view 'epbs_breakdown' : StandardViewDefinitions::BrowserView {
        expose EpbsBreakdown::MonitorProduct;
        expose EpbsBreakdown::MonitorProduct::**;
        render asBrowserView;
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

    metadata 'l1' : 'Layout' about 'EpbsBreakdown'::'MonitorProduct' {
        'viewName' = "epbs_breakdown";
        'x' = 560;
        'y' = 20;
    }

    metadata 'l2' : 'Layout' about 'EpbsBreakdown'::'MonitorProduct'::'backupAlarmBoard' {
        'viewName' = "epbs_breakdown";
        'x' = 980;
        'y' = 220;
    }

    metadata 'l3' : 'Layout' about 'EpbsBreakdown'::'MonitorProduct'::'batteryPack' {
        'viewName' = "epbs_breakdown";
        'x' = 1220;
        'y' = 220;
    }

    metadata 'l4' : 'Layout' about 'EpbsBreakdown'::'MonitorProduct'::'displayModule' {
        'viewName' = "epbs_breakdown";
        'x' = 740;
        'y' = 220;
    }

    metadata 'l5' : 'Layout' about 'EpbsBreakdown'::'MonitorProduct'::'firmwareImage' {
        'viewName' = "epbs_breakdown";
        'x' = 20;
        'y' = 220;
    }

    metadata 'l6' : 'Layout' about 'EpbsBreakdown'::'MonitorProduct'::'mainBoard' {
        'viewName' = "epbs_breakdown";
        'x' = 260;
        'y' = 220;
    }

    metadata 'l7' : 'Layout' about 'EpbsBreakdown'::'MonitorProduct'::'probeAssembly' {
        'viewName' = "epbs_breakdown";
        'x' = 500;
        'y' = 220;
    }
}
