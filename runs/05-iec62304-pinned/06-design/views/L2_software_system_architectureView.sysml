package L2_software_system_architectureView {

    comment /* A view file. It imports the packages it draws, exposes elements and names a
       rendering; it declares nothing of the model. Delete it and every package file is
       byte-identical and the model reads unchanged. */

    private import NodeSoftwareSystemArchitecture::*;
    private import SanadRenderings::*;

    view 'L2_software_system_architecture' : StandardViewDefinitions::InterconnectionView {
        expose NodeSoftwareSystemArchitecture::**;
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

    metadata 'l1' : 'Layout' about 'NodeSoftwareSystemArchitecture'::'alarmItem' {
        'viewName' = "L2_software_system_architecture";
        'x' = 820;
        'y' = 20;
    }

    metadata 'l2' : 'Layout' about 'NodeSoftwareSystemArchitecture'::'displayItem' {
        'viewName' = "L2_software_system_architecture";
        'x' = 1220;
        'y' = 20;
    }

    metadata 'l3' : 'Layout' about 'NodeSoftwareSystemArchitecture'::'excursionItem' {
        'viewName' = "L2_software_system_architecture";
        'x' = 420;
        'y' = 20;
    }

    metadata 'l4' : 'Layout' about 'NodeSoftwareSystemArchitecture'::'logItem' {
        'viewName' = "L2_software_system_architecture";
        'x' = 820;
        'y' = 360;
    }

    metadata 'l5' : 'Layout' about 'NodeSoftwareSystemArchitecture'::'powerItem' {
        'viewName' = "L2_software_system_architecture";
        'x' = 1220;
        'y' = 360;
    }

    metadata 'l6' : 'Layout' about 'NodeSoftwareSystemArchitecture'::'sensorItem' {
        'viewName' = "L2_software_system_architecture";
        'x' = 20;
        'y' = 20;
    }

    metadata 'l7' : 'Layout' about 'NodeSoftwareSystemArchitecture'::'supervisorItem' {
        'viewName' = "L2_software_system_architecture";
        'x' = 420;
        'y' = 360;
    }

    metadata 'l8' : 'Layout' about 'NodeSoftwareSystemArchitecture'::'usbItem' {
        'viewName' = "L2_software_system_architecture";
        'x' = 820;
        'y' = 700;
    }
}
