# Copyright (c) 2015, Ruslan Baratov
# All rights reserved.

cmake_minimum_required(VERSION 3.0)

# Emulate HunterGate:
# * https://github.com/hunter-packages/gate
include("../common.cmake")

project(download-curl)

hunter_add_package(curl)
find_package(curl REQUIRED)

message("curl_DIR: ${Curl_DIR}")
message("curl_CONFIG: ${curl_CONFIG}")
message("curl_LIBS: ${curl_LIBS}")

add_executable(foo foo.cpp)
target_link_libraries(foo PRIVATE ${curl_LIBS})
