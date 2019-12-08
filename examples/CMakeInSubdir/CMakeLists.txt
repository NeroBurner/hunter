# Copyright (c) 2015, Ruslan Baratov
# All rights reserved.

cmake_minimum_required(VERSION 3.0)

# Emulate HunterGate:
# * https://github.com/hunter-packages/gate
include("../common.cmake")

project(download-CMakeInSubdir)

# DOCUMENTATION_START {
hunter_add_package(CMakeInSubdir)
find_package(CIS CONFIG REQUIRED)

add_executable(foo foo.cpp)
target_link_libraries(foo CIS::CMakeInSubdir)
# DOCUMENTATION_END }

# Test double library creation
find_package(CIS CONFIG REQUIRED)

string(COMPARE EQUAL "${CMakeInSubdir_LICENSES}" "" is_empty)
if(is_empty)
  message(FATAL_ERROR "Licenses not found")
endif()

message("CMakeInS licenses:")
foreach(x ${Eigen_LICENSES})
  message("* ${x}")
  if(NOT EXISTS "${Eigen_LICENSES}")
    message(FATAL_ERROR "File not found")
  endif()
endforeach()
