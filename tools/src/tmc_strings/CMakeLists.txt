file(GLOB_RECURSE sources *.cpp)

add_executable(tmc_strings ${sources})
target_link_libraries(tmc_strings PRIVATE fmt::fmt nlohmann_json::nlohmann_json)

install(TARGETS tmc_strings RUNTIME DESTINATION bin)
