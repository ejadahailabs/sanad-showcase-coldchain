#!/usr/bin/env bash
# RUN-04: write every view of the ladder through Sanad's view writer (tools/new-view-headless.cjs), then draw
# each with Sanad's canvas (tools/render-view-headless.cjs) and turn it into a PNG next to its node's INDEX.md.
# Usage (run folder): tools/aero-views.sh [write|render] [one view]. Names <node>_<kind> (no '-', F-128).
set -u
EXT=${SANAD_EXT:-$HOME/.cache/tmp-dogfood1/vsix/extension}
cap() { systemd-run --user --scope -q -p MemoryMax=6G -p MemorySwapMax=1G "$@"; }
# name | kind | expose (comma list) | node folder under 06-design
VIEWS='aircraft_context|internal block|AircraftContext::**|aircraft
aircraft_functions|activity|AircraftFunctions::ProductFunctions::**|aircraft
system_functions|activity|SystemFunctions::MonitoringFunctions::**|system
system_items|block|SystemItems::**|system
system_hardware|internal block|SystemHardware::**|system
system_software|internal block|SystemSoftware::**|system
system_alarm_sequence|sequence|AlarmPathSequence::**|system
alarm_sw_functions|activity|AlarmSwFunctions::AlarmPath::**|items/alarm-sw
alarm_sw_design_architecture|block|AlarmSwArchitecture::**|items/alarm-sw/design
alarm_sw_design_states|state machine|MrtmSwStates::AlarmStates::**|items/alarm-sw/design'
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
