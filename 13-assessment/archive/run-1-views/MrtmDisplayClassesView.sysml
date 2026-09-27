package MrtmDisplayClassesView {

    comment /* A view file. It imports the packages it draws, exposes elements and names a
       rendering; it declares nothing of the model. Delete it and every package file is
       byte-identical and the model reads unchanged. */

    private import MrtmSwDetail::*;
    private import SanadRenderings::*;

    view 'mrtmDisplayClasses' : StandardViewDefinitions::GeneralView {
        expose MrtmSwDetail::FrameBuffer;
        expose MrtmSwDetail::Widget;
        expose MrtmSwDetail::TextWidget;
        expose MrtmSwDetail::BannerWidget;
        expose MrtmSwDetail::IconWidget;
        expose MrtmSwDetail::Ssd1306Driver;
        expose MrtmSwDetail::Screen;
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

    metadata 'l1' : 'Layout' about 'MrtmSwDetail'::'BannerWidget' {
        'viewName' = "mrtmDisplayClasses";
        'x' = 304;
        'y' = 44;
    }

    metadata 'l2' : 'Layout' about 'MrtmSwDetail'::'FrameBuffer' {
        'viewName' = "mrtmDisplayClasses";
        'x' = 24;
        'y' = 332;
    }

    metadata 'l3' : 'Layout' about 'MrtmSwDetail'::'IconWidget' {
        'viewName' = "mrtmDisplayClasses";
        'x' = 580;
        'y' = 44;
    }

    metadata 'l4' : 'Layout' about 'MrtmSwDetail'::'Screen' {
        'viewName' = "mrtmDisplayClasses";
        'x' = 580;
        'y' = 332;
    }

    metadata 'l5' : 'Layout' about 'MrtmSwDetail'::'Ssd1306Driver' {
        'viewName' = "mrtmDisplayClasses";
        'x' = 304;
        'y' = 332;
    }

    metadata 'l6' : 'Layout' about 'MrtmSwDetail'::'TextWidget' {
        'viewName' = "mrtmDisplayClasses";
        'x' = 24;
        'y' = 44;
    }

    metadata 'l7' : 'Layout' about 'MrtmSwDetail'::'Widget' {
        'viewName' = "mrtmDisplayClasses";
        'x' = 24;
        'y' = 232;
    }
}
