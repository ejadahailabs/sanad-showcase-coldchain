#!/usr/bin/env bash
# Phase 10b: build from clean, run every Unity runner and the SP-01-H host dry run, keep the evidence,
# convert results to JUnit (Sanad's results format) and coverage to LCOV. Usage: tools/run-10b.sh <date>
set -u
ROOT=$(cd "$(dirname "$0")/.." && pwd); cd "$ROOT"
cap() { systemd-run --user --scope -q -p MemoryMax=6G -p MemorySwapMax=1G "$@"; }
SHA=$(git rev-parse --short HEAD); DATE=$1; EV=11-verification/evidence
git diff --quiet HEAD -- 10-src || { echo "10-src has uncommitted changes: the build would not be $SHA"; exit 2; }
mkdir -p $EV/build $EV/unit $EV/integration $EV/system $EV/coverage
( echo "# host build, build=$SHA date=$DATE tester=DOGFOOD-5 (agent, no independence)"; gcc --version | head -1; make --version | head -1
  cd 10-src && cap make clean && cap make -j4 && echo "build rc=0" ) > $EV/build/host-build-$SHA.log 2>&1
( cd 10-src && cap make test; echo "make test rc=$?" ) > $EV/build/make-test-$SHA.log 2>&1
for f in 10-src/build/bin/test_*.out; do s=$(basename "$f"); case $s in test_int_*) cp "$f" $EV/integration/;; *) cp "$f" $EV/unit/;; esac; done
cap python3 tools/gcov2lcov.py $EV/coverage/host-unit-integration.info | tee $EV/coverage/summary-$SHA.txt
( echo "# SP-01-H host dry run, build=$SHA date=$DATE tester=DOGFOOD-5 (agent, no independence)"; cap 10-src/build/bin/sim_main excursion; echo "rc=$?" ) > $EV/system/SP-01-H-sim_main-excursion.log 2>&1
python3 tools/results-junit.py "$SHA" "$DATE" 10-src/build/bin $EV/system/SP-01-H-sim_main-excursion.log
tail -3 $EV/build/make-test-$SHA.log; tail -2 $EV/system/SP-01-H-sim_main-excursion.log
