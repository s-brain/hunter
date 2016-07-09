# Copyright (c) 2015, Ruslan Baratov
# All rights reserved.

cmake_minimum_required(VERSION 3.0)

# Emulate HunterGate:
# * https://github.com/hunter-packages/gate
include("../common.cmake")

project(download-curl)

hunter_add_package(curl)
find_package(curl REQUIRED)


message("CURL_INCLUDE_DIRS: ${CURL_INCLUDE_DIRS}")
message("CURL_LIBRARIES: ${CURL_LIBRARIES}")
message("CURL_FOUND: ${CURL_FOUND}")
message("CURL_VERSION_STRING: ${CURL_VERSION_STRING}")

add_executable(foo foo.cpp)
target_link_libraries(foo PRIVATE ${curl_LIBS})
