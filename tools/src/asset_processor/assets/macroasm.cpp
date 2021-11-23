#include "macroasm.h"
#include <fstream>

std::filesystem::path BaseMacroAsmAsset::generateAssetPath() {
    std::filesystem::path path = this->path;
    return path.replace_extension(".s");
}

std::filesystem::path BaseMacroAsmAsset::generateBuildPath() {
    std::filesystem::path path = this->path;
    return path.replace_extension(".s");
}

void BaseMacroAsmAsset::extractBinary(const std::vector<char>& baserom) {
    BaseAsset::extractBinary(baserom);
    // Create dummy .s file that just incbins the .bin file.
    std::ofstream out(this->assetPath);
    out << "\t.incbin " << this->path << "\n";
    out.close();
}