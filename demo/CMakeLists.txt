# License: Apache 2.0. See LICENSE file in root directory.
# Copyright(c) 2019 Intel Corporation. All Rights Reserved.
#  minimum required cmake version: 3.1.0
cmake_minimum_required(VERSION 3.1.0)

project(RgaDemo)

# Save the command line compile commands in the build output
set(CMAKE_EXPORT_COMPILE_COMMANDS 1)
# View the makefile commands during build
#set(CMAKE_VERBOSE_MAKEFILE on)

set(DEPENDENCIES rga)

add_subdirectory(rgaBlit)
add_subdirectory(rgaClip)
add_subdirectory(rgaCopy)
add_subdirectory(rgaRotation)
add_subdirectory(rgaSlt)
add_subdirectory(rgaUserspace)