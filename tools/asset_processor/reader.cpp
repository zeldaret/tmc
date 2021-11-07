#include "reader.h"
#include "util.h"
#include <string>

std::string opt_param(const std::string& format, int defaultVal, int value) {
    if (value != defaultVal) {
        return string_format(format, value);
    }
    return "";
}