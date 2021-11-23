cmake_minimum_required(VERSION 3.14)
project(tmctooltest)
include(FetchContent)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_EXTENSIONS OFF)

add_library(project_settings INTERFACE)

# setup compiler warnings
file(DOWNLOAD https://raw.githubusercontent.com/cpp-best-practices/cpp_starter_project/master/cmake/CompilerWarnings.cmake ${CMAKE_BINARY_DIR}/CompilerWarnings.cmake)
include(${CMAKE_BINARY_DIR}/CompilerWarnings.cmake)
set_project_warnings(project_settings)

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
FetchContent_MakeAvailable(json fmt cli11)

add_library(filesystem INTERFACE)
if (${CMAKE_CXX_COMPILER_ID} STREQUAL "GNU")
    if (${CMAKE_CXX_COMPILER_VERSION} VERSION_LESS 9.0.0)
        target_link_libraries(filesystem INTERFACE stdc++fs)
    endif ()
endif ()
