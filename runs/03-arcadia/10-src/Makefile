# Host build of the MRTM firmware logic + Unity tests (ADR-0026, ADR-0027). gcc/g++ only.
# make            build every test runner into build/
# make test       run them all; Unity output in build/bin/*.out, JUnit via ../tools/unity2junit.py
# The ESP-IDF target build is firmware/CMakeLists.txt (see BUILD.md) — not run on this box.
CC      ?= gcc
CXX     ?= g++
B       := build
WARN    := -Wall -Wextra -Werror -Wshadow -Wconversion -Wno-sign-conversion
INC     := -Iconfig -Ihost -Itest -Itest/unity $(addprefix -I,$(wildcard firmware/components/*/include))
CFLAGS  := -std=c11 -O1 -g -MMD -MP $(WARN) $(INC) --coverage
CXXFLAGS:= -std=c++17 -O1 -g -MMD -MP $(WARN) $(INC) -fno-exceptions -fno-rtti --coverage
FW_C    := $(filter-out firmware/components/mrtm_hal/%,$(wildcard firmware/components/*/src/*.c))   # hal_esp32.c is target-only
FW_CXX  := $(wildcard firmware/components/*/src/*.cpp)
OBJ     := $(patsubst %.c,$(B)/%.o,$(FW_C) host/hal_host.c host/sim.c) $(patsubst %.cpp,$(B)/%.o,$(FW_CXX))
UNITY_O := $(B)/test/unity/unity.o
UNIT    := $(wildcard firmware/components/*/test/test_*.c)
INTEG   := $(wildcard test/integration/test_*.c)
RUNNERS := $(patsubst %.c,$(B)/bin/%,$(notdir $(UNIT) $(INTEG))) $(B)/bin/sim_main
vpath test_%.c $(sort $(dir $(UNIT) $(INTEG)))

all: codes $(RUNNERS)
codes:
	python3 ../tools/gen-codes.py --check
$(B)/%.o: %.c
	@mkdir -p $(dir $@); $(CC) $(CFLAGS) -c $< -o $@
$(B)/%.o: %.cpp
	@mkdir -p $(dir $@); $(CXX) $(CXXFLAGS) -c $< -o $@
$(B)/tests/%.o: %.c
	@mkdir -p $(dir $@); $(CC) $(CFLAGS) -c $< -o $@
$(B)/tests/sim_main.o: host/sim_main.c
	@mkdir -p $(dir $@); $(CC) $(CFLAGS) -c $< -o $@
$(B)/bin/%: $(OBJ) $(UNITY_O) $(B)/tests/%.o
	@mkdir -p $(dir $@); $(CXX) --coverage $^ -o $@
$(B)/bin/sim_main: $(OBJ) $(B)/tests/sim_main.o
	@mkdir -p $(dir $@); $(CXX) --coverage $^ -o $@
test: all
	@rc=0; for t in $(filter-out $(B)/bin/sim_main,$(RUNNERS)); do ./$$t > $$t.out 2>&1 || rc=1; grep -E "Tests .* Failures" $$t.out | sed "s|^|$$(basename $$t): |"; done; exit $$rc
clean:
	$(RM) -r $(B)
.PHONY: all codes test clean
.SECONDARY:
-include $(shell find $(B) -name "*.d" 2>/dev/null)
