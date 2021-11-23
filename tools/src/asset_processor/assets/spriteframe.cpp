#include "spriteframe.h"
#include "reader.h"
#include <fstream>
#include <iostream>
#include <fmt/format.h>

void SpriteFrameAsset::convertToHumanReadable(const std::vector<char>& baserom) {
    Reader reader(baserom, start, size);
    std::vector<std::string> lines;
    while (reader.cursor < size) {
        u8 num_gfx_tiles = reader.read_u8();
        u8 unk = reader.read_u8();
        u16 first_gfx_tile_index = reader.read_u16();

        lines.push_back(fmt::format("\tsprite_frame first_tile_index={:#x}", first_gfx_tile_index));
        lines.push_back(opt_param(", num_tiles={}", 0, num_gfx_tiles));
        lines.push_back(opt_param(", unknown={:#x}", 0, unk));
        lines.emplace_back("\n");
    }

    std::ofstream out(assetPath);
    for (const auto& line : lines) {
        out << line;
    }
    out.close();
}