#ifndef TOOLS_FILE_H
#define TOOLS_FILE_H

#include <cstdio>
#include <memory>
#include <string_view>
namespace util {
namespace {
auto file_ptr_deleter = [](std::FILE* file) { std::fclose(file); };
}

using file_ptr_t = std::unique_ptr<std::FILE, decltype(file_ptr_deleter)>;

file_ptr_t open_file(std::string_view filename, std::string_view mode) {
    return { std::fopen(filename.data(), mode.data()), file_ptr_deleter };
}
} // namespace util
#endif // TOOLS_FILE_H
