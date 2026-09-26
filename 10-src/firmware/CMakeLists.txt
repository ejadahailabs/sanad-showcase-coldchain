# ESP-IDF project for the MRTM firmware (ADR-0026). UNTESTED: ESP-IDF is not installed on the
# build box of the dogfood run (A-30). Target: ESP32-S3 (A-25). See ../BUILD.md.
cmake_minimum_required(VERSION 3.16)
set(EXTRA_COMPONENT_DIRS components)
include($ENV{IDF_PATH}/tools/cmake/project.cmake)
project(mrtm)
idf_build_set_property(COMPILE_OPTIONS "-I${CMAKE_CURRENT_LIST_DIR}/../config" APPEND)
