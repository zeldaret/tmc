file(GLOB_RECURSE sources *.c)

# TODO Makefile had a debug build with -DDEBUG
add_executable(gbagfx ${sources})
target_include_directories(gbagfx PRIVATE .)
# TODO properly handle these dependencies
target_link_libraries(gbagfx PRIVATE png z)

install(TARGETS gbagfx RUNTIME DESTINATION bin)
