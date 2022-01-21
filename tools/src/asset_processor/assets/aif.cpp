#include "aif.h"
#include "util.h"

std::filesystem::path AifAsset::generateAssetPath() {
    std::filesystem::path asset_path = path;
    return asset_path.replace_extension(".aif");
}

void AifAsset::convertToHumanReadable(const std::vector<char>& baserom) {
    (void)baserom;

    std::filesystem::path toolsPath = "tools";
    std::vector<std::string> cmd;
    cmd.push_back(toolsPath / "bin" / "aif2pcm");
    cmd.push_back(path);
    cmd.push_back(assetPath);
    check_call(cmd);
}

void AifAsset::buildToBinary() {
    std::filesystem::path toolsPath = "tools";
    std::vector<std::string> cmd;
    cmd.push_back(toolsPath / "bin" / "aif2pcm");
    cmd.push_back(assetPath);
    cmd.push_back(path);
    check_call(cmd);
}