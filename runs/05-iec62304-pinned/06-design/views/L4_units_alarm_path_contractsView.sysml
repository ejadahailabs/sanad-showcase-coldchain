package L4_units_alarm_path_contractsView {

    comment /* A view file. It imports the packages it draws, exposes elements and names a
       rendering; it declares nothing of the model. Delete it and every package file is
       byte-identical and the model reads unchanged. */

    private import MrtmSwDetail::*;
    private import SanadRenderings::*;

    view 'L4_units_alarm_path_contracts' : StandardViewDefinitions::GeneralView {
        expose MrtmSwDetail::SensorSamplerApi;
        expose MrtmSwDetail::LimitEvaluatorApi;
        expose MrtmSwDetail::AlarmMgrApi;
        expose MrtmSwDetail::WdtKickerApi;
        expose MrtmSwDetail::DiagnosticsApi;
        expose MrtmSwDetail::ConfigMgrApi;
        render asGeneralView;
    }
}
