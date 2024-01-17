#include "gfx.h"
#include "util.h"
#include <nlohmann/json.hpp>

std::filesystem::path GfxAsset::generateAssetPath() {
    std::filesystem::path pngPath = path;
    if (pngPath.extension() == ".lz") {
        pngPath.replace_extension("");
    }
    pngPath.replace_extension(".png");
    return pngPath;
}

void GfxAsset::convertToHumanReadable(const std::vector<char>& baserom) {
    (void)baserom;

    std::filesystem::path toolsPath = "tools";
    std::vector<std::string> cmd;

    std::filesystem::path decompressedPath = path;

    if (isCompressed()) {
        // First decompress.
        decompressedPath.replace_extension("");
        cmd.push_back(toolsPath / "bin" / "gbagfx");
        cmd.push_back(path);
        cmd.push_back(decompressedPath);
        check_call(cmd);
        cmd.clear();
    }

    cmd.push_back(toolsPath / "bin" / "gbagfx");
    cmd.push_back(decompressedPath);
    cmd.push_back(assetPath);
    if (asset.contains("options")) {
        for (const auto& it : asset["options"].items()) {
            cmd.push_back("-" + it.key());
            cmd.push_back(to_string(it.value()));
        }
    }
    check_call(cmd);
}

void GfxAsset::buildToBinary() {
    std::filesystem::path toolsPath = "tools";
    std::vector<std::string> cmd;

    std::filesystem::path decompressedPath = path;
    if (isCompressed()) {
        decompressedPath.replace_extension("");
    }

    cmd.push_back(toolsPath / "bin" / "gbagfx");
    cmd.push_back(assetPath);
    cmd.push_back(decompressedPath);
    check_call(cmd);

    if (isCompressed()) {
        cmd.clear();
        // Compress.
        cmd.push_back(toolsPath / "bin" / "gbagfx");
        cmd.push_back(decompressedPath);
        cmd.push_back(path);
        check_call(cmd);
    }
}

bool GfxAsset::isCompressed() {
    return path.extension() == ".lz";
}