# Copyright (c) 2016-2019, Ruslan Baratov
# All rights reserved.

cmake_minimum_required(VERSION 3.2)

# Emulate HunterGate:
# * https://github.com/hunter-packages/gate
include("../common.cmake")

project(download-Vulkan-Loader)

# DOCUMENTATION_START {
hunter_add_package(Vulkan-Loader)
find_package(Vulkan-Loader CONFIG REQUIRED)

add_executable(boo boo.cpp)
target_link_libraries(boo PUBLIC Vulkan-Loader::Vulkan-Loader)
# DOCUMENTATION_END }
