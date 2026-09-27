#!/usr/bin/env bash
# RUN-03-ARCADIA: write every layer view through Sanad's view writer (tools/new-view-headless.cjs), then draw each with
# Sanad's canvas (tools/render-view-headless.cjs) and turn it into a PNG next to its layer's INDEX.md.
# Usage (run folder): tools/arcadia-views.sh write|render [view]. Views named <layer>_<subject> (F-128: no '-').
set -u
EXT=${SANAD_EXT:-$HOME/.cache/tmp-dogfood1/vsix/extension}
cap() { systemd-run --user --scope -q -p MemoryMax=6G -p MemorySwapMax=1G "$@"; }
# name | kind | expose (comma list) | folder under 06-design
VIEWS='oa_capabilities|use case|OaCapabilities::**|oa
oa_architecture|internal block|OaArchitecture::**|oa
sa_context|internal block|SaContext::**|sa
sa_functions|activity|SaDataFlow::SystemDataFlow::**|sa
sa_alarm_chain|activity|SaAlarmChain::ExcursionAlarmChain::**|sa
la_architecture|internal block|LaArchitecture::**|la
la_interfaces|block|LaInterfaces::**|la
pa_architecture|block|PaNodes::PhysicalMonitor,PaNodes::PhysicalMonitor::**|pa
pa_interconnection|internal block|PaInterconnection::**|pa
pa_backup_alarm|internal block|PaBackupAlarm::**|pa
pa_software|block|PaSoftware::**,PaInterconnection::mcu|pa
epbs_breakdown|tree|EpbsBreakdown::MonitorProduct,EpbsBreakdown::MonitorProduct::**|epbs
transition_sa_la|allocation matrix|SaFunctions::acquireTemperature,SaFunctions::detectExcursion,SaFunctions::announceAlarm,SaFunctions::alarmOnOwnFailure,SaFunctions::showStatus,SaFunctions::recordEvents,SaFunctions::exportHistory,SaFunctions::keepPowered,SaFunctions::superviseItself,LaArchitecture::sensing,LaArchitecture::alarm,LaArchitecture::display,LaArchitecture::logging,LaArchitecture::power,LaArchitecture::supervision,TransitionSaToLa::**|transitions'
mkdir -p 06-design/views/rendered
echo "$VIEWS" | while IFS='|' read -r name kind expose dir; do
  [ -n "${2:-}" ] && [ "$2" != "$name" ] && continue
  if [ "${1:-write}" = write ]; then
    cap node tools/new-view-headless.cjs "$EXT" "$PWD" "$name" "$kind" "$expose" | tail -1
  else
    case "$kind" in *matrix*) echo "  $name: a table in the canvas, no picture headless (F-3-006)"; continue;; esac
    cap node tools/render-view-headless.cjs "$EXT" "$PWD" "$name" "06-design/views/rendered/$name.svg" | tail -1
    mkdir -p "06-design/$dir/pictures"
    cap tools/render-view.sh "06-design/views/rendered/$name.svg" "06-design/$dir/pictures/$name.png" >/dev/null && python3 tools/crop-png.py "06-design/$dir/pictures/$name.png" && echo "  png 06-design/$dir/pictures/$name.png"
  fi
done
