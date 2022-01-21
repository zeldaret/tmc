file(GLOB_RECURSE sources *.cpp)

add_executable(preproc ${sources})
target_include_directories(preproc PRIVATE .)

install(TARGETS preproc RUNTIME DESTINATION bin)
