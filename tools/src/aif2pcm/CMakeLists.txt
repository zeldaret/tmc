file(GLOB_RECURSE sources *.c)

add_executable(aif2pcm ${sources})
target_include_directories(aif2pcm PRIVATE .)
target_link_libraries(aif2pcm PRIVATE m)

install(TARGETS aif2pcm RUNTIME DESTINATION bin)
