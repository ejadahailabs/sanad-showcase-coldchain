package Display_item_leaf_classesView {

    comment /* A view file. It imports the packages it draws, exposes elements and names a
       rendering; it declares nothing of the model. Delete it and every package file is
       byte-identical and the model reads unchanged. */

    private import MrtmSwDetail::*;
    private import SanadRenderings::*;

    view 'display_item_leaf_classes' : StandardViewDefinitions::GeneralView {
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
