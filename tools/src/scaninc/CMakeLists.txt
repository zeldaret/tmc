file(GLOB_RECURSE sources *.cpp)

add_executable(scaninc ${sources})
target_include_directories(scaninc PRIVATE .)
target_link_libraries(scaninc PRIVATE project_settings fmt::fmt)

install(TARGETS scaninc RUNTIME DESTINATION bin)
