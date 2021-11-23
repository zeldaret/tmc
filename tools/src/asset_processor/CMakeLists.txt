file(GLOB_RECURSE sources *.cpp)

add_executable(asset_processor ${sources})
target_include_directories(asset_processor PRIVATE .)
target_link_libraries(asset_processor PRIVATE nlohmann_json::nlohmann_json filesystem)
