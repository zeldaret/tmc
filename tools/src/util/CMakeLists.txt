add_library(util INTERFACE)
target_include_directories(util INTERFACE .)

# dummy target to make sure headers compile
add_executable(util_dummy dummy.cpp)
target_link_libraries(util_dummy PRIVATE project_settings)
