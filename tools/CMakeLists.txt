cmake_minimum_required(VERSION 3.13)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_EXTENSIONS OFF)

# Add project_options v0.15.1
# https://github.com/cpp-best-practices/project_options
include(FetchContent)
FetchContent_Declare(_project_options URL https://github.com/cpp-best-practices/project_options/archive/refs/tags/v0.15.1.zip)
if (NOT _project_options_POPULATED)
    FetchContent_Populate(_project_options)
endif()

project(tools LANGUAGES CXX C)

add_library(project_settings INTERFACE)

# use CompilerWarnings.cmake directly since project_options normally requires cmake 3.16
include(${_project_options_SOURCE_DIR}/src/CompilerWarnings.cmake)
set_project_warnings(project_settings ON "" "" "" "")

# nlohmann/json
# this repo is a mirror, that only holds the release versions of the headers to keep the size small
FetchContent_Declare(
        json
        GIT_REPOSITORY https://github.com/ArthurSonzogni/nlohmann_json_cmake_fetchcontent
        GIT_TAG v3.10.4
)
# {fmt}
FetchContent_Declare(
        fmt
        GIT_REPOSITORY https://github.com/fmtlib/fmt.git
        GIT_TAG 8.0.1
)
# CLI11
FetchContent_Declare(
        cli11
        GIT_REPOSITORY https://github.com/CLIUtils/CLI11
        GIT_TAG v2.1.2
)

if (${CMAKE_VERSION} VERSION_LESS "3.14")
FetchContent_GetProperties(json)
FetchContent_GetProperties(fmt)
FetchContent_GetProperties(cli11)
    if (NOT json_POPULATED)
        FetchContent_Populate(json)
        add_subdirectory(${json_SOURCE_DIR} ${json_BINARY_DIR})
    endif()
    if (NOT fmt_POPULATED)
        FetchContent_Populate(fmt)
        add_subdirectory(${fmt_SOURCE_DIR} ${fmt_BINARY_DIR})
    endif()
    if (NOT cli11_POPULATED)
        FetchContent_Populate(cli11)
        add_subdirectory(${cli11_SOURCE_DIR} ${cli11_BINARY_DIR})
    endif()
else()
    FetchContent_MakeAvailable(json fmt cli11)
endif()

add_library(filesystem INTERFACE)
if (${CMAKE_CXX_COMPILER_ID} STREQUAL "GNU")
    if (${CMAKE_CXX_COMPILER_VERSION} VERSION_LESS 9.0.0)
        target_link_libraries(filesystem INTERFACE stdc++fs)
    endif ()
endif ()

add_subdirectory(src)
