#!/usr/bin/env bash
# Run every check the Sanad CLI offers and keep the output as files.
# Usage: tools/sanad-checks.sh <out-dir>   (repo-relative, e.g. 13-assessment/sanad-runs/phase-0)
# Reports refuse a dirty tree, so they read a throwaway snapshot commit of the
# working tree (HEAD is not moved; the snapshot is unreferenced).
set -u
# RUN-03: at most 2 Sanad gates on the box at once (owner rule): wait while 2 or more `npm run check` run.
while [ "$(pgrep -fc '^npm run check')" -ge 2 ]; do sleep 20; done
ROOT=$(cd "$(dirname "$0")/.." && pwd)
EXT=${SANAD_EXT:-$HOME/.cache/tmp-dogfood1/vsix/extension}
OUT="$ROOT/$1"; mkdir -p "$OUT"
cap() { systemd-run --user --scope -q -p MemoryMax=6G -p MemorySwapMax=1G "$@"; }
erew() { cap node "$EXT/dist/cli-entry.js" "$ROOT" "$@"; }
IDX=$(mktemp -p "$HOME/.cache/tmp-run3"); cp "$(git -C "$ROOT" rev-parse --absolute-git-dir)/index" "$IDX"
SNAP=$(cd "$ROOT" && GIT_INDEX_FILE=$IDX git add -A && T=$(GIT_INDEX_FILE=$IDX git write-tree) \
  && git -c user.name="Ejadah AI Labs" -c user.email=ejadahailabs@gmail.com commit-tree "$T" -p HEAD -m snapshot)
rm -f "$IDX"
echo "snapshot $SNAP" > "$OUT/SUMMARY.txt"
run() { local name=$1; shift; erew "$@" > "$OUT/$name" 2> "$OUT/$name.stderr"; rc=$?; echo "$name rc=$rc" >> "$OUT/SUMMARY.txt"; [ "$rc" != 0 ] || [ "$name" = gate.txt ] || rm -f "$OUT/$name.stderr"; }
run gate.txt --gate warning
run check-config.txt --check-config
run ledger.json --ledger-json
run evidence.json --json --quiet
for r in $(erew --list-reports 2>/dev/null); do run "report-$r.md" --report "$r" --at "$SNAP"; done
run report-requirements-trace.md --report requirements --trace --layout document --at "$SNAP"
run report-traceability-audit.csv --report traceability-audit --csv --at "$SNAP"
run report-test-coverage.csv --report test-coverage --csv --at "$SNAP"
[ -n "${BL:-}" ] && run "report-traceability-audit-since-$BL.md" --report traceability-audit --baseline "$BL" --at "$SNAP"
[ -n "${BL:-}" ] && run "diff-config-since-$BL.txt" --diff-config "$BL"
cat "$OUT/SUMMARY.txt"
