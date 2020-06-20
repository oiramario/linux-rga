cmake_minimum_required(VERSION 3.0.0)
project(rga VERSION 0.1.0)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall")

set(ENV{PKG_CONFIG_PATH} /opt/devkit/lib/pkgconfig)
include(GNUInstallDirs)
find_package(PkgConfig REQUIRED)

pkg_check_modules(DRM REQUIRED libdrm)

include_directories(
    include
    ${DRM_INCLUDE_DIRS}
)

link_directories(
    ${DRM_LIBRARY_DIRS}
)


add_library(${PROJECT_NAME} SHARED
    src/RgaApi.cpp
    src/RockchipFileOps.cpp
    src/RockchipRga.cpp
)

target_link_libraries(${PROJECT_NAME}
    ${DRM_LIBRARIES}
)

install(TARGETS ${PROJECT_NAME})

file(GLOB INCLUDE_FILES include/*.h)
install(FILES ${INCLUDE_FILES} DESTINATION include/librga)

CONFIGURE_FILE("${CMAKE_CURRENT_SOURCE_DIR}/pkgconfig/rga.pc.cmake"
                "${CMAKE_BINARY_DIR}/rga.pc" @ONLY)
install(FILES "${CMAKE_BINARY_DIR}/rga.pc"
        DESTINATION "${CMAKE_INSTALL_LIBDIR}/pkgconfig/")
