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
# List of versions here...

hunter_add_version(
    PACKAGE_NAME
    CURL
    VERSION
    "7.49.1"
    URL
    "https://curl.haxx.se/download/curl-7.49.1.tar.bz2"
    SHA1
    50db69ee612d36a465e2fec3a35028e11c2766bb
)

# Pick a download scheme
hunter_pick_scheme(DEFAULT url_sha1_autotools
    WINDOWS
    url_sha1_curl_windows
)



hunter_cacheable(CURL)

hunter_download(PACKAGE_NAME CURL

    PACKAGE_DEPENDS_ON OpenSSL ZLIB)
