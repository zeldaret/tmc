#include "map.h"
#include "util.h"
#include <nlohmann/json.hpp>

std::filesystem::path MapAsset::generateAssetPath() {
    std::filesystem::path decompressedPath = path;
    if (isCompressed()) {
        if (decompressedPath.extension() == ".lz") {
            decompressedPath.replace_extension("");
        }
    }
    return decompressedPath;
}


void MapAsset::convertToHumanReadable(const std::vector<char>& baserom) {
    (void)baserom;
    if (isCompressed()) {
        std::filesystem::path toolsPath = "tools";
        std::vector<std::string> cmd;
        // Decompress.
        cmd.push_back(toolsPath / "bin" / "gbagfx");
        cmd.push_back(path);
        cmd.push_back(assetPath);
        check_call(cmd);
    }
}

void MapAsset::buildToBinary() {
    if (isCompressed()) {
        std::filesystem::path toolsPath = "tools";
        std::vector<std::string> cmd;
        // Compress.
        cmd.push_back(toolsPath / "bin" / "gbagfx");
        cmd.push_back(assetPath);
        cmd.push_back(path);
        check_call(cmd);
    }

}

bool MapAsset::isCompressed() {
    return path.extension() == ".lz";
}