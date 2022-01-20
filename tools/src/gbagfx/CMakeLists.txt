file(GLOB_RECURSE sources *.c)

set(CMAKE_FIND_FRAMEWORK LAST)

find_package(PNG REQUIRED)

# TODO Makefile had a debug build with -DDEBUG
add_executable(gbagfx ${sources})
target_include_directories(gbagfx PRIVATE .)
target_link_libraries(gbagfx PRIVATE PNG::PNG)

install(TARGETS gbagfx RUNTIME DESTINATION bin)
