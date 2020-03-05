# Copyright (c) 2019, Rahul Sheth
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    Vulkan-Headers
    VERSION
    1.2.133-p0
    URL
    "https://github.com/cpp-pm/Vulkan-Loader/archive/v1.2.133-p0.tar.gz"
    SHA1
    6dc8553af090daafa19ccb823d6e137ec89df4bd
)

#hunter_cmake_args(
#    Vulkan-Loader
#    CMAKE_ARGS
#      VULKAN_HEADERS_SKIP_INSTALL=OFF
#)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(Vulkan-Loader)
hunter_download(PACKAGE_NAME Vulkan-Loader)
