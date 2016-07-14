# Copyright (c) 2015, David Hirvonen
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

# Load used modules



include(hunter_add_version)
include(hunter_cacheable)
include(hunter_download)
include(hunter_pick_scheme)


hunter_add_package(OpenSSL)
hunter_add_package(ZLIB)
hunter_add_package(LibSSH2)
# List of versions here...

hunter_add_version(
    PACKAGE_NAME
    CURL
    VERSION
    "7.49.1-DEV"
    URL
    "https://github.com/hunter-packages/curl/archive/hunter-7.49.1-v0.zip"
    SHA1
    fd72a153ca60fe85b57a2ac4eadedcfb38c3066d
)


if(BUILD_SHARED_LIBS)
    SET(BUILD_CURL_STATIC OFF)
else()
    SET(BUILD_CURL_STATIC ON)
endif()


hunter_cmake_args(
    CURL
    CMAKE_ARGS
        BUILD_CURL_TESTS=OFF
        BUILD_CURL_EXE=OFF
        CMAKE_USE_OPENSSL=ON
        CMAKE_USE_LIBSSH2=ON
        CURL_STATICLIB=${BUILD_CURL_STATIC}
 )



# Pick a download scheme
hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(CURL)
hunter_download(PACKAGE_NAME CURL
                PACKAGE_DEPENDS_ON OpenSSL ZLIB LibSSH2)
