#include "tileset.h"
#include "util.h"

std::filesystem::path TilesetAsset::generateAssetPath() {
    std::filesystem::path pngPath = this->path;
    if (pngPath.extension() == ".lz") {
        pngPath.replace_extension("");
    }
    pngPath.replace_extension(".png");
    return pngPath;
}

void TilesetAsset::convertToHumanReadable(const std::vector<char>& baserom) {
    (void)baserom;

    std::filesystem::path toolsPath = "tools";
    std::vector<std::string> cmd;
    cmd.push_back(toolsPath / "gbagfx" / "gbagfx");
    cmd.push_back(this->path);
    cmd.push_back(this->assetPath);
    cmd.push_back("-mwidth");
    cmd.push_back("32");
    check_call(cmd);
}

void TilesetAsset::buildToBinary() {
    std::filesystem::path toolsPath = "tools";
    std::vector<std::string> cmd;
    cmd.push_back(toolsPath / "gbagfx" / "gbagfx");
    cmd.push_back(this->assetPath);
    cmd.push_back(this->path);
    check_call(cmd);
}