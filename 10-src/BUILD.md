# Build instructions — MRTM firmware

> **Standard:** IEC 62304 §5.1.10 (tools), §5.5.1 (unit implementation), §8 (configuration management), Class C.
> **Status:** DRAFT — needs Masood's review. Host part **tested** on 2026-09-27; ESP-IDF part **UNTESTED** (A-30).

Two builds from one source tree. Think of it as one recipe cooked in two kitchens: the host kitchen (this PC, gcc) checks the logic; the target kitchen (ESP-IDF) makes the real firmware.

| Build | What it makes | Tool | Tested here? |
|---|---|---|---|
| Host | 14 test programs + `sim_main` (the whole app on stub hardware) | gcc/g++ 15, GNU make (ADR-0026) | **Yes** |
| Target | `mrtm.bin` for the ESP32-S3 | ESP-IDF v5.x, CMake, `idf.py` | **No — ESP-IDF not installed (A-30)** |

## 1. Host build and tests (tested)

```sh
cd 10-src
make clean && make test          # builds, then runs every Unity runner; prints "N Tests 0 Failures" per runner
./build/bin/sim_main excursion   # system procedure SP-01 on the stubs; last line "RESULT PASS"
python3 ../tools/unity2junit.py build/bin ../11-verification/results/unit   # Unity text -> JUnit XML for Sanad
```

- `make` first runs `tools/gen-codes.py --check`: the C error/event headers must match the SysML model (ADR-0025). If the model changed, run `python3 tools/gen-codes.py` from the repo root.
- Flags: C11 / C++17, `-Wall -Wextra -Werror -Wshadow -Wconversion`, `--coverage` (gcov data in `build/`).
- On this box every build/test command ran under `systemd-run --user --scope -p MemoryMax=6G -p MemorySwapMax=1G` (machine rule, not a product need).
- `build/` is not committed (`.gitignore`).

## 2. Target build (UNTESTED — written from the ESP-IDF docs)

```sh
. $IDF_PATH/export.sh                 # ESP-IDF v5.x, pin the exact tag in 00-project/soup-list.md (SOUP-1)
cd 10-src/firmware
idf.py set-target esp32s3             # A-25
idf.py build                          # uses sdkconfig.defaults + partitions.csv (logA/logB = 80 x 4 KiB, DEF-001)
idf.py -p /dev/ttyACM0 flash monitor
```

Before the first target build, fix these (all marked `REVIEW` in the code):
1. `components/mrtm_hal/src/hal_esp32.c` — battery ADC, RTC driver, TinyUSB MSC callbacks, stack marks are stubs; I2C/LEDC/board init not written.
2. GPIO 17 backup-alarm sense line is not in the hardware design (DEF-006, EE-REVIEW).
3. Unit tests on target: ESP-IDF's unit-test app runs the same `components/*/test/test_*.c` bodies; the host `main()` in each file is for the host only (wrap it in `#ifndef ESP_PLATFORM` when the target test app is set up).

## 3. Tree

```
10-src/
  Makefile  BUILD.md  .gitignore
  config/mrtm_config.h                 constants fixed by requirements (ADR-0024)
  firmware/                            ESP-IDF project root
    CMakeLists.txt sdkconfig.defaults partitions.csv
    main/app_main.c                    FreeRTOS tasks (ADR-0019)
    components/<unit>/{include,src,test}   12 units + mrtm_common + mrtm_app + mrtm_hal
  host/                                host stubs (hal_host.c), task scheduler (sim.c), procedure runner (sim_main.c)
  test/unity/                          Unity v2.6.1 (SOUP-7)   test/integration/   test_support.h
```
