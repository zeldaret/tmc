#include "aif.h"
#include "util.h"

std::filesystem::path AifAsset::generateAssetPath() {
    std::filesystem::path path = this->path;
    return path.replace_extension(".aif");
}

void AifAsset::convertToHumanReadable(const std::vector<char>& baserom) {
    (void)baserom;

    std::filesystem::path toolsPath = "tools";
    std::vector<std::string> cmd;
    cmd.push_back(toolsPath / "aif2pcm" / "aif2pcm");
    cmd.push_back(this->path);
    cmd.push_back(this->assetPath);
    check_call(cmd);
}

void AifAsset::buildToBinary() {
    std::filesystem::path toolsPath = "tools";
    std::vector<std::string> cmd;
    cmd.push_back(toolsPath / "aif2pcm" / "aif2pcm");
    cmd.push_back(this->assetPath);
    cmd.push_back(this->path);
    check_call(cmd);
}