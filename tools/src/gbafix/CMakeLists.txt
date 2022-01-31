file(GLOB_RECURSE sources *.c)

add_executable(gbafix ${sources})
target_include_directories(gbafix PRIVATE .)

install(TARGETS gbafix RUNTIME DESTINATION bin)
