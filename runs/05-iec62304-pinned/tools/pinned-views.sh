#!/usr/bin/env bash
# RUN-05: write every level view through Sanad's view writer (tools/new-view-headless.cjs), then draw each with
# Sanad's canvas (tools/render-view-headless.cjs) and turn it into a PNG next to its node's INDEX.md.
# Usage (run folder): tools/pinned-views.sh [write|render] [view]. Names <level>_<node>_<kind> (F-128: no '-').
set -u
EXT=${SANAD_EXT:-$HOME/.cache/tmp-dogfood1/vsix/extension}
cap() { systemd-run --user --scope -q -p MemoryMax=6G -p MemorySwapMax=1G "$@"; }
# name | kind | expose (comma list) | node folder under 06-design
VIEWS='L1_device_context|internal block|NodeDeviceContext::**|L1-device
L1_device_block|internal block|NodeDeviceWhiteBox::**|L1-device
L1_device_usecases|use case|MrtmUseCases::**|L1-device
L2_hardware_item_parts|internal block|NodeHardwareItemParts::**|L2-hardware-item
L2_software_system_architecture|internal block|NodeSoftwareSystemArchitecture::**|L2-software-system
L2_software_system_hardware|internal block|NodeSoftwareSystemHardwareInterface::**|L2-software-system
L2_software_system_modes|state machine|MrtmSwStates::SystemModes::**|L2-software-system
L2_software_system_excursion|sequence|L2SeqExcursion::**|L2-software-system
L3_sensor_item_structure|internal block|NodeSensorItemStructure::**|L3-software-items/sensor-item
L3_excursion_item_structure|internal block|NodeExcursionItemStructure::**|L3-software-items/excursion-item
L3_alarm_item_structure|internal block|NodeAlarmItemStructure::**|L3-software-items/alarm-item
L3_alarm_item_states|state machine|MrtmSwStates::AlarmStates::**|L3-software-items/alarm-item
L3_display_item_structure|internal block|NodeDisplayItemStructure::**|L3-software-items/display-item
L3_log_item_structure|internal block|NodeLogItemStructure::**|L3-software-items/log-item
L3_usb_item_structure|internal block|NodeUsbItemStructure::**|L3-software-items/usb-item
L3_power_item_structure|internal block|NodePowerItemStructure::**|L3-software-items/power-item
L3_supervisor_item_structure|internal block|NodeSupervisorItemStructure::**|L3-software-items/supervisor-item
L4_units_alarm_path_contracts|block|MrtmSwDetail::SensorSamplerApi,MrtmSwDetail::LimitEvaluatorApi,MrtmSwDetail::AlarmMgrApi,MrtmSwDetail::WdtKickerApi,MrtmSwDetail::DiagnosticsApi,MrtmSwDetail::ConfigMgrApi|L4-software-units
L4_units_data_contracts|block|MrtmSwDetail::DisplayMgrApi,MrtmSwDetail::EventLogApi,MrtmSwDetail::HistoryRingApi,MrtmSwDetail::RtcClockApi,MrtmSwDetail::PowerMonApi,MrtmSwDetail::UsbExportApi|L4-software-units
L4_display_mgr_classes|block|MrtmSwDetail::FrameBuffer,MrtmSwDetail::Widget,MrtmSwDetail::TextWidget,MrtmSwDetail::BannerWidget,MrtmSwDetail::IconWidget,MrtmSwDetail::Ssd1306Driver,MrtmSwDetail::Screen|L4-software-units/display-mgr'
mkdir -p 06-design/views/rendered
echo "$VIEWS" | while IFS='|' read -r name kind expose node; do
  [ -n "${2:-}" ] && [ "$2" != "$name" ] && continue
  if [ "${1:-write}" = write ]; then
    cap node tools/new-view-headless.cjs "$EXT" "$PWD" "$name" "$kind" "$expose" | tail -1
  else
    cap node tools/render-view-headless.cjs "$EXT" "$PWD" "$name" "06-design/views/rendered/$name.svg" | tail -1
    mkdir -p "06-design/$node/pictures"; cap tools/render-view.sh "06-design/views/rendered/$name.svg" "06-design/$node/pictures/$name.png" >/dev/null && python3 tools/crop-png.py "06-design/$node/pictures/$name.png" && echo "  png 06-design/$node/pictures/$name.png"
  fi
done
