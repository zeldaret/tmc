file(GLOB_RECURSE sources *.cpp)

add_executable(agb2mid ${sources})
target_include_directories(agb2mid PRIVATE .)

install(TARGETS agb2mid RUNTIME DESTINATION bin)
