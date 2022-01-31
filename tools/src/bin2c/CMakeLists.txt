file(GLOB_RECURSE sources *.c)

add_executable(bin2c ${sources})
target_include_directories(bin2c PRIVATE .)

install(TARGETS bin2c RUNTIME DESTINATION bin)
