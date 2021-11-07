#include "util.h"
#include <iostream>

void check_call(const std::vector<std::string>& cmd) {
    std::string cmdstr;
    bool first = true;
    for (const auto& segment : cmd) {
        if (first) {
            first = false;
        } else {
            cmdstr += " ";
        }
        cmdstr += segment;
    }
    int code = system(cmdstr.c_str());
    if (code != 0) {
        std::cerr << cmdstr << " failed with return code " << code << std::endl;
        std::exit(1);
    }
}

// https://github.com/nlohmann/json/issues/642#issuecomment-311937344
std::string to_string(const nlohmann::json& j) {
    if (j.type() == nlohmann::json::value_t::string) {
        return j.get<std::string>();
    }

    return j.dump();
}
