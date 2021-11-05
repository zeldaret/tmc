#include "palette.h"
#include "util.h"

void PaletteAsset::convertToHumanReadable(const std::vector<char>& baserom) {
    (void)baserom;

    std::filesystem::path palPath = this->path;
    palPath.replace_extension(".pal");

    std::filesystem::path toolsPath = "tools";
    std::vector<std::string> cmd;
    cmd.push_back(toolsPath / "gbagfx" / "gbagfx");
    cmd.push_back(this->path);
    cmd.push_back(palPath);
    check_call(cmd);
}