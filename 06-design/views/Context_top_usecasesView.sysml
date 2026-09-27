package Context_top_usecasesView {

    comment /* A view file. It imports the packages it draws, exposes elements and names a
       rendering; it declares nothing of the model. Delete it and every package file is
       byte-identical and the model reads unchanged. */

    private import MrtmUseCases::*;
    private import SanadRenderings::*;

    view 'context_top_usecases' : StandardViewDefinitions::GeneralView {
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

    metadata def 'Hidden' {
        attribute 'viewName' : String;
    }

    metadata 'l1' : 'Layout' about 'MrtmUseCases'::'AcknowledgeAlert' {
        'viewName' = "context_top_usecases";
        'x' = 268;
        'y' = 460;
    }

    metadata 'l2' : 'Layout' about 'MrtmUseCases'::'DetectExcursion' {
        'viewName' = "context_top_usecases";
        'x' = 268;
        'y' = 116;
    }

    metadata 'l3' : 'Layout' about 'MrtmUseCases'::'DetectExcursion'::'fridge' {
        'viewName' = "context_top_usecases";
        'x' = 636;
        'y' = 172;
    }

    metadata 'l4' : 'Layout' about 'MrtmUseCases'::'DetectExcursion'::'monitor' {
        'viewName' = "context_top_usecases";
        'x' = 244;
        'y' = 44;
    }

    metadata 'l5' : 'Layout' about 'MrtmUseCases'::'MonitorTemperature' {
        'viewName' = "context_top_usecases";
        'x' = 268;
        'y' = 192;
    }

    metadata 'l6' : 'Layout' about 'MrtmUseCases'::'MonitorTemperature'::'nurse' {
        'viewName' = "context_top_usecases";
        'x' = 24;
        'y' = 356;
    }

    metadata 'l7' : 'Layout' about 'MrtmUseCases'::'RaiseAlert' {
        'viewName' = "context_top_usecases";
        'x' = 268;
        'y' = 336;
    }

    metadata 'l8' : 'Layout' about 'MrtmUseCases'::'ReviewHistory' {
        'viewName' = "context_top_usecases";
        'x' = 268;
        'y' = 572;
    }

    metadata 'l9' : 'Layout' about 'MrtmUseCases'::'ReviewHistory'::'manager' {
        'viewName' = "context_top_usecases";
        'x' = 636;
        'y' = 588;
    }

    metadata 'l10' : 'Layout' about 'MrtmUseCases'::'ReviewHistory'::'quality' {
        'viewName' = "context_top_usecases";
        'x' = 24;
        'y' = 588;
    }

    metadata 'l11' : 'Layout' about 'MrtmUseCases'::'ServiceMonitor' {
        'viewName' = "context_top_usecases";
        'x' = 268;
        'y' = 680;
    }

    metadata 'l12' : 'Layout' about 'MrtmUseCases'::'ServiceMonitor'::'technician' {
        'viewName' = "context_top_usecases";
        'x' = 636;
        'y' = 700;
    }

    metadata 'h1' : 'Hidden' about 'MrtmUseCases'::'detectExcursion' {
        'viewName' = "context_top_usecases";
    }
}
