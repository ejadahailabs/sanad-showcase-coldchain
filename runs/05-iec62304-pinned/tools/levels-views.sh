#!/usr/bin/env bash
# MODEL-LEVELS: write every node view through Sanad's view writer (tools/new-view-headless.cjs), then draw
# each with Sanad's canvas (tools/render-view-headless.cjs) and turn it into a PNG next to its node's INDEX.md.
# Usage: tools/levels-views.sh [write|render]   (repo root). Views named <node>_<blackbox|whitebox|leaf>_<kind> (F-128: no '-').
set -u
EXT=${SANAD_EXT:-$HOME/.cache/tmp-dogfood1/vsix/extension}
cap() { systemd-run --user --scope -q -p MemoryMax=6G -p MemorySwapMax=1G "$@"; }
# name | kind | expose (comma list) | node folder under 06-design
VIEWS='context_top_usecases|use case|MrtmUseCases::**|context
system_blackbox_interfaces|internal block|NodeContext::**|mrtm
system_whitebox_interconnection|internal block|NodeMrtmWhiteBox::**|mrtm
system_whitebox_modes|state machine|MrtmSwStates::SystemModes::**|mrtm
system_whitebox_excursion|sequence|SystemExcursion::**|mrtm
system_whitebox_powerloss|sequence|SystemPowerLoss::**|mrtm
system_whitebox_probefault|sequence|SystemProbeFault::**|mrtm
sensing_blackbox_interfaces|internal block|NodeSensingContext::**|mrtm/sensing
sensing_whitebox_interconnection|internal block|NodeSensingWhiteBox::**|mrtm/sensing
alarm_blackbox_interfaces|internal block|NodeAlarmContext::**|mrtm/alarm
alarm_whitebox_interconnection|internal block|NodeAlarmWhiteBox::**|mrtm/alarm
backup_alarm_blackbox_interfaces|internal block|NodeBackupAlarmContext::**|mrtm/alarm/backup-alarm
backup_alarm_whitebox_interconnection|internal block|NodeBackupAlarmWhiteBox::**|mrtm/alarm/backup-alarm
alarm_item_leaf_states|state machine|MrtmSwStates::AlarmStates::**|mrtm/alarm/alarm-item
display_blackbox_interfaces|internal block|NodeDisplayContext::**|mrtm/display
display_whitebox_interconnection|internal block|NodeDisplayWhiteBox::**|mrtm/display
display_item_leaf_classes|block|MrtmSwDetail::FrameBuffer,MrtmSwDetail::Widget,MrtmSwDetail::TextWidget,MrtmSwDetail::BannerWidget,MrtmSwDetail::IconWidget,MrtmSwDetail::Ssd1306Driver,MrtmSwDetail::Screen|mrtm/display/display-item
logging_blackbox_interfaces|internal block|NodeLoggingContext::**|mrtm/logging
logging_whitebox_interconnection|internal block|NodeLoggingWhiteBox::**|mrtm/logging
power_blackbox_interfaces|internal block|NodePowerContext::**|mrtm/power
power_whitebox_interconnection|internal block|NodePowerWhiteBox::**|mrtm/power
supervision_blackbox_interfaces|internal block|NodeSupervisionContext::**|mrtm/supervision
supervision_whitebox_interconnection|internal block|NodeSupervisionWhiteBox::**|mrtm/supervision'
mkdir -p 06-design/views/rendered
echo "$VIEWS" | while IFS='|' read -r name kind expose node; do
  [ -n "${2:-}" ] && [ "$2" != "$name" ] && continue
  if [ "${1:-write}" = write ]; then
    cap node tools/new-view-headless.cjs "$EXT" "$PWD" "$name" "$kind" "$expose" | tail -1
  else
    cap node tools/render-view-headless.cjs "$EXT" "$PWD" "$name" "06-design/views/rendered/$name.svg" | tail -1
    mkdir -p "06-design/$node/pictures"; tools/render-view.sh "06-design/views/rendered/$name.svg" "06-design/$node/pictures/$name.png" >/dev/null && python3 tools/crop-png.py "06-design/$node/pictures/$name.png" && echo "  png 06-design/$node/pictures/$name.png"
  fi
done
