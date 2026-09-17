cmake_minimum_required(VERSION 3.23)

project(p3d_qoa LANGUAGES C CXX)

add_library(p3d_qoa INTERFACE)
add_library(p3d::qoa ALIAS p3d_qoa)

file(GLOB_RECURSE P3D_QOA_PUBLIC_HEADERS CONFIGURE_DEPENDS
    ${CMAKE_CURRENT_SOURCE_DIR}/include/*.h
    ${CMAKE_CURRENT_SOURCE_DIR}/include/*.hpp
)

target_compile_features(p3d_qoa INTERFACE cxx_std_17)

target_include_directories(p3d_qoa
    INTERFACE
    $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}>
    $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>
    $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/source>
)

target_sources(p3d_qoa
    INTERFACE
    FILE_SET p3d_qoa_headers TYPE HEADERS
    BASE_DIRS ${CMAKE_CURRENT_SOURCE_DIR}/include
    FILES ${P3D_QOA_PUBLIC_HEADERS}
)
