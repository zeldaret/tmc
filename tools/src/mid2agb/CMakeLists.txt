file(GLOB_RECURSE sources *.cpp)

add_executable(mid2agb ${sources})
target_include_directories(mid2agb PRIVATE .)

install(TARGETS mid2agb RUNTIME DESTINATION bin)
