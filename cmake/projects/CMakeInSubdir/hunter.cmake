# Copyright (c) 2015, David Hirvonen
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

# Load used modules
include(hunter_add_version)
include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)
include(hunter_cacheable)
include(hunter_source_subdir)

hunter_cacheable(CMakeInSubdir)

# List of versions here...
hunter_add_version(
  PACKAGE_NAME
  CMakeInSubdir
  VERSION
  "0.0.1"
  URL
  "https://github.com/NeroBurner/cmake_in_subdir/archive/v0.0.1.tar.gz"
  SHA1
  5791cd5e7e12c30ba1507f1ff29688aa1b9333f5
)

# set the sub-directory the projects CMakeLists.txt is in
hunter_source_subdir(
  CMakeInSubdir
  SOURCE_SUBDIR "cpp")

# disable Eigen tests. Testcreation tries to find package 'Boost'
hunter_cmake_args(
  CMakeInSubdir
  CMAKE_ARGS
  HUNTER_INSTALL_LICENSE_FILES=LICENSE
)

# Pick a download scheme
hunter_pick_scheme(DEFAULT url_sha1_cmake)

# Download package.
# Two versions of library will be build:
#     * libexample_A.a
#     * libexample_Ad.a
hunter_download(PACKAGE_NAME CMakeInSubdir)
