#include "palette.h"
#include "util.h"

std::filesystem::path PaletteAsset::generateAssetPath() {
    std::filesystem::path asset_path = path;
    return asset_path.replace_extension(".pal");
}

void PaletteAsset::convertToHumanReadable(const std::vector<char>& baserom) {
    (void)baserom;

    std::filesystem::path toolsPath = "tools";
    std::vector<std::string> cmd;
    cmd.push_back(toolsPath / "bin" / "gbagfx");
    cmd.push_back(path);
    cmd.push_back(assetPath);
    check_call(cmd);
}

void PaletteAsset::buildToBinary() {
    std::filesystem::path toolsPath = "tools";
    std::vector<std::string> cmd;
    cmd.push_back(toolsPath / "bin" / "gbagfx");
    cmd.push_back(assetPath);
    cmd.push_back(path);
    check_call(cmd);
}