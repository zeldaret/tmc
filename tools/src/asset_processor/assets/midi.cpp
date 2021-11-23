#include "midi.h"
#include "reader.h"
#include "util.h"
#include <filesystem>
#include <iostream>
#include <fstream>
#include <nlohmann/json.hpp>

extern std::string gBaseromPath;

std::filesystem::path MidiAsset::generateAssetPath() {
    std::filesystem::path path = this->path;
    return path.replace_extension(".mid");
}

std::filesystem::path MidiAsset::generateBuildPath() {
    std::filesystem::path path = this->path;
    return path.replace_extension(".s");
}

void MidiAsset::extractBinary(const std::vector<char>& baserom) {
    // Custom extraction as we need a label in the middle.
    std::string label = this->path.stem();

    std::filesystem::path tracksPath = this->path;
    tracksPath.replace_filename(label + "_tracks.bin");
    std::filesystem::path headerPath = this->path;
    headerPath.replace_filename(label + "_header.bin");

    int headerOffset = this->asset["options"]["headerOffset"];

    // Extract tracks
    {
        auto first = baserom.begin() + this->start;
        auto last = baserom.begin() + this->start + headerOffset;
        std::vector<char> data(first, last);
        std::fstream file(tracksPath, std::ios::out | std::ios::binary);
        file.write(&data[0], data.size());
        file.close();
    }
    // Extract header
    {
        auto first = baserom.begin() + this->start + headerOffset;
        auto last = baserom.begin() + this->start + this->size;
        std::vector<char> data(first, last);
        std::fstream file(headerPath, std::ios::out | std::ios::binary);
        file.write(&data[0], data.size());
        file.close();
    }

    // Create dummy .s file.
    std::ofstream out(this->buildPath);
    out << "\t.incbin " << tracksPath << "\n";
    out << label << "::\n";
    out << "\t.incbin " << headerPath << "\n";
    out.close();
}

void MidiAsset::parseOptions(std::vector<std::string>& commonParams, std::vector<std::string>& agb2midParams) {
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
        } else if (key == "headerOffset") {
            // ignore here
        } else {
            commonParams.push_back("-" + key);
            commonParams.push_back(to_string(it.value()));
        }
    }

    if (exactGateTime) {
        commonParams.push_back("-E");
    }
}

void MidiAsset::convertToHumanReadable(const std::vector<char>& baserom) {
    (void)baserom;

    // Convert the options
    std::vector<std::string> commonParams;
    std::vector<std::string> agb2midParams;
    this->parseOptions(commonParams, agb2midParams);

    int headerOffset = this->asset["options"]["headerOffset"];

    std::filesystem::path toolPath = "tools";
    std::vector<std::string> cmd;
    cmd.push_back(toolPath / "agb2mid" / "agb2mid");
    cmd.push_back(gBaseromPath);
    cmd.push_back(string_format("0x%x", this->start + headerOffset));
    cmd.push_back(gBaseromPath); // TODO deduplicate?
    cmd.push_back(this->assetPath);
    cmd.insert(cmd.end(), commonParams.begin(), commonParams.end());
    cmd.insert(cmd.end(), agb2midParams.begin(), agb2midParams.end());
    check_call(cmd);

    // We also need to build the mid to an s file here, so we get shiftability after converting.
    cmd.clear();
    cmd.push_back(toolPath / "mid2agb" / "mid2agb");
    cmd.push_back(this->assetPath);
    cmd.push_back(this->buildPath);
    cmd.insert(cmd.end(), commonParams.begin(), commonParams.end());
    check_call(cmd);
}

void MidiAsset::buildToBinary() {
    // Convert the options
    std::vector<std::string> commonParams;
    std::vector<std::string> agb2midParams;
    this->parseOptions(commonParams, agb2midParams);
    std::filesystem::path toolPath = "tools";
    std::vector<std::string> cmd;
    cmd.push_back(toolPath / "mid2agb" / "mid2agb");
    cmd.push_back(this->assetPath);
    cmd.push_back(this->buildPath);
    cmd.insert(cmd.end(), commonParams.begin(), commonParams.end());
    check_call(cmd);
}