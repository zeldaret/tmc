#include "dungeonmap.h"
#include "util.h"
#include <fmt/format.h>
#include <fstream>
#include <nlohmann/json.hpp>
#include <util/file.h>

std::filesystem::path DungeonMapAsset::generateAssetPath() {
    std::filesystem::path txtPath = path;
    txtPath.replace_extension(".txt");
    return txtPath;
}

void DungeonMapAsset::convertToHumanReadable(const std::vector<char>& baserom) {
    (void)baserom;
    const char characters[] = {' ', '#', '.', '-'};

    std::ifstream file(path.string(), std::ios::binary | std::ios::ate);
    auto fileSize = file.tellg();
    file.seekg(0, std::ios::beg);

    std::vector<char> data(static_cast<size_t>(fileSize));
    if (!file.read(data.data(), fileSize)) {
        fmt::print(stderr, "Can not read dungeon map {}\n", path.string());
        std::exit(1);
    }
    file.close();

    auto output_file = util::open_file(assetPath, "w");

    size_t width = asset["options"]["width"];
    width *= 4;
    size_t height = asset["options"]["height"];
    size_t bytesPerRow = (width + 3) / 4;

    for (size_t y = 0; y < height; y++) {
        for (size_t x = 0; x < width; x +=4) {
            size_t offset = y * bytesPerRow + x / 4;
            char byte = data[offset];
            for (size_t i = 0; i < 4; i++) {
                int color = (byte >> (6 - i*2)) & 3;
                std::fputc(characters[color], output_file.get());
            }
        }
        std::fputc('\n', output_file.get());
    }
}

void DungeonMapAsset::buildToBinary() {
    std::ifstream file(assetPath.string(), std::ios::binary | std::ios::ate);
    auto fileSize = file.tellg();
    file.seekg(0, std::ios::beg);

    std::vector<char> data(static_cast<size_t>(fileSize));
    if (!file.read(data.data(), fileSize)) {
        fmt::print(stderr, "Can not read dungeon map {}\n", assetPath.string());
        std::exit(1);
    }
    file.close();

    auto output_file = util::open_file(buildPath, "w");
    int byte = 0;
    size_t pixels = 0;
    for (size_t i = 0; i < static_cast<size_t>(fileSize); i++) {
        switch (data[i]) {
            case '\n':
                continue;
            case ' ':
                byte <<= 2;
                pixels++;
                break;
            case '#':
                byte <<= 2;
                byte |= 1;
                pixels++;
                break;
            case '.':
                byte <<= 2;
                byte |= 2;
                pixels++;
                break;
            case '-':
                byte <<= 2;
                byte |= 3;
                pixels++;
                break;
            default:
                fmt::print(stderr, "Unexpected character {}\n", data[i]);
                std::exit(1);
                break;
        }

        if (pixels % 4 == 0) {
            std::fputc(byte, output_file.get());
            byte = 0;
        }
    }

    // Pad to two bytes.
    while ((pixels / 4) % 4 != 0) {
        std::fputc(0, output_file.get());
        pixels += 4;
    }
}

std::string DungeonMapAsset::getSymbol() const {
    return asset["name"];
}