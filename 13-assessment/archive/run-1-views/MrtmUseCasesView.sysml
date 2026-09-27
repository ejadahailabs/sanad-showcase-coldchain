package MrtmUseCasesView {

    comment /* A view file. It imports the packages it draws, exposes elements and names a
       rendering; it declares nothing of the model. Delete it and every package file is
       byte-identical and the model reads unchanged. */

    private import MrtmUseCases::*;
    private import SanadRenderings::*;

    view 'mrtmUseCases' : StandardViewDefinitions::GeneralView {
        expose MrtmUseCases::**;
        render asUseCaseView;
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

    metadata 'l1' : 'Layout' about 'MrtmUseCases'::'AcknowledgeAlert' {
        'viewName' = "mrtmUseCases";
        'x' = 268;
        'y' = 564;
    }

    metadata 'l2' : 'Layout' about 'MrtmUseCases'::'DetectExcursion' {
        'viewName' = "mrtmUseCases";
        'x' = 268;
        'y' = 116;
    }

    metadata 'l3' : 'Layout' about 'MrtmUseCases'::'DetectExcursion'::'fridge' {
        'viewName' = "mrtmUseCases";
        'x' = 636;
        'y' = 220;
    }

    metadata 'l4' : 'Layout' about 'MrtmUseCases'::'DetectExcursion'::'monitor' {
        'viewName' = "mrtmUseCases";
        'x' = 244;
        'y' = 44;
    }

    metadata 'l5' : 'Layout' about 'MrtmUseCases'::'MonitorTemperature' {
        'viewName' = "mrtmUseCases";
        'x' = 268;
        'y' = 292;
    }

    metadata 'l6' : 'Layout' about 'MrtmUseCases'::'MonitorTemperature'::'nurse' {
        'viewName' = "mrtmUseCases";
        'x' = 24;
        'y' = 456;
    }

    metadata 'l7' : 'Layout' about 'MrtmUseCases'::'RaiseAlert' {
        'viewName' = "mrtmUseCases";
        'x' = 268;
        'y' = 436;
    }

    metadata 'l8' : 'Layout' about 'MrtmUseCases'::'ReviewHistory' {
        'viewName' = "mrtmUseCases";
        'x' = 268;
        'y' = 672;
    }

    metadata 'l9' : 'Layout' about 'MrtmUseCases'::'ReviewHistory'::'manager' {
        'viewName' = "mrtmUseCases";
        'x' = 636;
        'y' = 688;
    }

    metadata 'l10' : 'Layout' about 'MrtmUseCases'::'ReviewHistory'::'quality' {
        'viewName' = "mrtmUseCases";
        'x' = 24;
        'y' = 688;
    }

    metadata 'l11' : 'Layout' about 'MrtmUseCases'::'ServiceMonitor' {
        'viewName' = "mrtmUseCases";
        'x' = 268;
        'y' = 784;
    }

    metadata 'l12' : 'Layout' about 'MrtmUseCases'::'ServiceMonitor'::'technician' {
        'viewName' = "mrtmUseCases";
        'x' = 636;
        'y' = 800;
    }

    metadata 'l13' : 'Layout' about 'MrtmUseCases'::'detectExcursion' {
        'viewName' = "mrtmUseCases";
        'x' = 268;
        'y' = 220;
    }
}
