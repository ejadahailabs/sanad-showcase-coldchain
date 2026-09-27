package L4_units_data_contractsView {

    comment /* A view file. It imports the packages it draws, exposes elements and names a
       rendering; it declares nothing of the model. Delete it and every package file is
       byte-identical and the model reads unchanged. */

    private import MrtmSwDetail::*;
    private import SanadRenderings::*;

    view 'L4_units_data_contracts' : StandardViewDefinitions::GeneralView {
        expose MrtmSwDetail::DisplayMgrApi;
        expose MrtmSwDetail::EventLogApi;
        expose MrtmSwDetail::HistoryRingApi;
        expose MrtmSwDetail::RtcClockApi;
        expose MrtmSwDetail::PowerMonApi;
        expose MrtmSwDetail::UsbExportApi;
        render asGeneralView;
    }
}
