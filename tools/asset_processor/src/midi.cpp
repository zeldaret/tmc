#include <filesystem>
#include <iostream>
#include "midi.h"
#include "reader.h"
#include "main.h"
#include "util.h"

void MidiAsset::convertToHumanReadable(const std::vector<char>& baserom) {
    (void)baserom;

    // Convert the options
    std::vector<std::string> commonParams;
    std::vector<std::string> agb2midParams;
    bool exactGateTime = true;

    for (const auto& it : this->asset["options"].items()) {
        const std::string& key = it.key();
        if (key == "group" || key == "G") {
            commonParams.push_back("-G");
            commonParams.push_back(to_string(it.value()));
        } else if (key == "priority" || key == "P") {
            commonParams.push_back("-P");
            commonParams.push_back(to_string(it.value()));
        } else if (key == "reverb" || key == "R") {
            commonParams.push_back("-R");
            commonParams.push_back(to_string(it.value()));
        } else if (key == "nominator") {
            agb2midParams.push_back("-n");
            agb2midParams.push_back(to_string(it.value()));
        } else if (key == "denominator") {
            agb2midParams.push_back("-d");
            agb2midParams.push_back(to_string(it.value()));
        } else if (key == "timeChanges") {
            const nlohmann::json& value = it.value();
            if (value.is_array()) {
                // Multiple time changes
                for (const auto& change : value) {
                    agb2midParams.push_back("-t");
                    agb2midParams.push_back(to_string(change["nominator"]));
                    agb2midParams.push_back(to_string(change["denominator"]));
                    agb2midParams.push_back(to_string(change["time"]));
                }
            } else {
                agb2midParams.push_back("-t");
                agb2midParams.push_back(to_string(value["nominator"]));
                agb2midParams.push_back(to_string(value["denominator"]));
                agb2midParams.push_back(to_string(value["time"]));
            }
        } else if (key == "exactGateTime") {
            if (it.value().get<int>() == 1) {
                exactGateTime = true;
            } else {
                exactGateTime = false;
            }
        } else {
            commonParams.push_back("-" + key);
            commonParams.push_back(to_string(it.value()));
        }
    }

    if (exactGateTime) {
        commonParams.push_back("-E");
    }
    std::filesystem::path toolPath = "tools";

    std::filesystem::path midPath = this->path;
    midPath.replace_extension(".mid");

    std::vector<std::string> cmd;
    cmd.push_back(toolPath / "agb2mid" / "agb2mid");
    cmd.push_back(gBaseromPath);
    cmd.push_back(string_format("0x%x", this->start));
    cmd.push_back(gBaseromPath); // TODO deduplicate?
    cmd.push_back(midPath);
    cmd.insert(cmd.end(), commonParams.begin(), commonParams.end());
    cmd.insert(cmd.end(), agb2midParams.begin(), agb2midParams.end());

    check_call(cmd);

    cmd.clear();
    cmd.push_back(toolPath / "mid2agb" / "mid2agb");
    cmd.push_back(midPath);
    cmd.push_back(this->path);
    cmd.insert(cmd.end(), commonParams.begin(), commonParams.end());
    check_call(cmd);
}