#include "palette.h"
#include "util.h"

std::filesystem::path PaletteAsset::generateAssetPath() {
    std::filesystem::path path = this->path;
    return path.replace_extension(".pal");
}

void PaletteAsset::convertToHumanReadable(const std::vector<char>& baserom) {
    (void)baserom;

    std::filesystem::path toolsPath = "tools";
    std::vector<std::string> cmd;
    cmd.push_back(toolsPath / "gbagfx" / "gbagfx");
    cmd.push_back(this->path);
    cmd.push_back(this->assetPath);
    check_call(cmd);
}

void PaletteAsset::buildToBinary() {
    std::filesystem::path toolsPath = "tools";
    std::vector<std::string> cmd;
    cmd.push_back(toolsPath / "gbagfx" / "gbagfx");
    cmd.push_back(this->assetPath);
    cmd.push_back(this->path);
    check_call(cmd);
}