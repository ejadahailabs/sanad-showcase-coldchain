package L3_excursion_item_structureView {

    comment /* A view file. It imports the packages it draws, exposes elements and names a
       rendering; it declares nothing of the model. Delete it and every package file is
       byte-identical and the model reads unchanged. */

    private import NodeExcursionItemStructure::*;
    private import SanadRenderings::*;

    view 'L3_excursion_item_structure' : StandardViewDefinitions::InterconnectionView {
        expose NodeExcursionItemStructure::**;
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

    metadata 'l1' : 'Layout' about 'NodeExcursionItemStructure'::'alarmItem' {
        'viewName' = "L3_excursion_item_structure";
        'x' = 700;
        'y' = 100;
    }

    metadata 'l2' : 'Layout' about 'NodeExcursionItemStructure'::'limitEvaluator' {
        'viewName' = "L3_excursion_item_structure";
        'x' = 360;
        'y' = 100;
    }

    metadata 'l3' : 'Layout' about 'NodeExcursionItemStructure'::'sensorItem' {
        'viewName' = "L3_excursion_item_structure";
        'x' = 20;
        'y' = 100;
    }

    metadata 'l4' : 'Layout' about 'NodeExcursionItemStructure'::'supervisorItem' {
        'viewName' = "L3_excursion_item_structure";
        'x' = 360;
        'y' = 320;
    }

    metadata 'p1' : 'PlainBoxes' {
        'viewName' = "L3_excursion_item_structure";
    }
}
