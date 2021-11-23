file(GLOB_RECURSE sources *.cpp)

add_executable(scaninc ${sources})
target_include_directories(scaninc PRIVATE .)

install(TARGETS scaninc RUNTIME DESTINATION bin)
