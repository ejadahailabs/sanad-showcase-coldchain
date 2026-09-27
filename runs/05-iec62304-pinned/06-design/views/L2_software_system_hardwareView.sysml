package L2_software_system_hardwareView {

    comment /* A view file. It imports the packages it draws, exposes elements and names a
       rendering; it declares nothing of the model. Delete it and every package file is
       byte-identical and the model reads unchanged. */

    private import NodeSoftwareSystemHardwareInterface::*;
    private import SanadRenderings::*;

    view 'L2_software_system_hardware' : StandardViewDefinitions::InterconnectionView {
        expose NodeSoftwareSystemHardwareInterface::**;
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

    metadata def 'Hidden' {
        attribute 'viewName' : String;
    }

    metadata def 'PlainBoxes' {
        attribute 'viewName' : String;
    }

    metadata 'l1' : 'Layout' about 'NodeSoftwareSystemHardwareInterface'::'alarmItem' {
        'viewName' = "L2_software_system_hardware";
        'x' = 20;
        'y' = 150;
    }

    metadata 'l2' : 'Layout' about 'NodeSoftwareSystemHardwareInterface'::'displayItem' {
        'viewName' = "L2_software_system_hardware";
        'x' = 20;
        'y' = 280;
    }

    metadata 'l3' : 'Layout' about 'NodeSoftwareSystemHardwareInterface'::'hardwareItem' {
        'viewName' = "L2_software_system_hardware";
        'x' = 700;
        'y' = 300;
    }

    metadata 'l4' : 'Layout' about 'NodeSoftwareSystemHardwareInterface'::'logItem' {
        'viewName' = "L2_software_system_hardware";
        'x' = 20;
        'y' = 410;
    }

    metadata 'l5' : 'Layout' about 'NodeSoftwareSystemHardwareInterface'::'powerItem' {
        'viewName' = "L2_software_system_hardware";
        'x' = 20;
        'y' = 670;
    }

    metadata 'l6' : 'Layout' about 'NodeSoftwareSystemHardwareInterface'::'sensorItem' {
        'viewName' = "L2_software_system_hardware";
        'x' = 20;
        'y' = 20;
    }

    metadata 'l7' : 'Layout' about 'NodeSoftwareSystemHardwareInterface'::'supervisorItem' {
        'viewName' = "L2_software_system_hardware";
        'x' = 20;
        'y' = 800;
    }

    metadata 'l8' : 'Layout' about 'NodeSoftwareSystemHardwareInterface'::'usbItem' {
        'viewName' = "L2_software_system_hardware";
        'x' = 20;
        'y' = 540;
    }

    metadata 'h1' : 'Hidden' about 'NodeSoftwareSystemHardwareInterface'::'excursionItem' {
        'viewName' = "L2_software_system_hardware";
    }

    metadata 'p1' : 'PlainBoxes' {
        'viewName' = "L2_software_system_hardware";
    }
}
