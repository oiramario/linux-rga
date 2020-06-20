cmake_minimum_required(VERSION 3.0.0)
project(rga VERSION 0.1.0)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall")

set(ENV{PKG_CONFIG_PATH} /opt/devkit/lib/pkgconfig)
find_package(PkgConfig REQUIRED)

pkg_check_modules(DRM REQUIRED libdrm)

include_directories(
    .
    ${DRM_INCLUDE_DIRS}
)

link_directories(
    ${DRM_LIBRARY_DIRS}
)


add_library(${PROJECT_NAME} SHARED
    RgaApi.cpp
    RockchipFileOps.cpp
    RockchipRga.cpp
)

target_link_libraries(${PROJECT_NAME}
    ${DRM_LIBRARIES}
)

install(TARGETS ${PROJECT_NAME}
        EXPORT ${PROJECT_NAME}Targets
        LIBRARY DESTINATION lib
        ARCHIVE DESTINATION lib
        RUNTIME DESTINATION bin
        INCLUDES DESTINATION include)

file(GLOB_RECURSE HEADER_FILES ${CMAKE_SOURCE_DIR}/include/*.h)
install(FILES ${HEADER_FILES} DESTINATION "${CMAKE_INSTALL_INCLUDEDIR}")
