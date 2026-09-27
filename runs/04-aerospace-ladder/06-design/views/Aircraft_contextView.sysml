package Aircraft_contextView {

    comment /* A view file. It imports the packages it draws, exposes elements and names a
       rendering; it declares nothing of the model. Delete it and every package file is
       byte-identical and the model reads unchanged. */

    private import AircraftContext::*;
    private import SanadRenderings::*;

    view 'aircraft_context' : StandardViewDefinitions::InterconnectionView {
        expose AircraftContext::**;
        render asInterconnectionView;
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

    metadata def 'PlainBoxes' {
        attribute 'viewName' : String;
    }

    metadata 'l1' : 'Layout' about 'AircraftContext'::'fridge' {
        'viewName' = "aircraft_context";
        'x' = 20;
        'y' = 60;
    }

    metadata 'l2' : 'Layout' about 'AircraftContext'::'mains' {
        'viewName' = "aircraft_context";
        'x' = 20;
        'y' = 300;
    }

    metadata 'l3' : 'Layout' about 'AircraftContext'::'monitor' {
        'viewName' = "aircraft_context";
        'x' = 400;
        'y' = 180;
    }

    metadata 'l4' : 'Layout' about 'AircraftContext'::'staff' {
        'viewName' = "aircraft_context";
        'x' = 820;
        'y' = 300;
    }

    metadata 'l5' : 'Layout' about 'AircraftContext'::'usbHost' {
        'viewName' = "aircraft_context";
        'x' = 820;
        'y' = 60;
    }

    metadata 'p1' : 'PlainBoxes' {
        'viewName' = "aircraft_context";
    }
}
