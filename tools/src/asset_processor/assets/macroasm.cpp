#include "macroasm.h"
#include <fmt/format.h>
#include <util/file.h>

std::filesystem::path BaseMacroAsmAsset::generateAssetPath() {
    std::filesystem::path asset_path = path;
    return asset_path.replace_extension(".s");
}

std::filesystem::path BaseMacroAsmAsset::generateBuildPath() {
    std::filesystem::path build_path = path;
    return build_path.replace_extension(".s");
}

void BaseMacroAsmAsset::extractBinary(const std::vector<char>& baserom) {
    BaseAsset::extractBinary(baserom);
    // Create dummy .s file that just incbins the .bin file.
    auto file = util::open_file(assetPath, "w");
    fmt::print(file.get(), "\t.incbin \"{}\"\n", path.native());
}