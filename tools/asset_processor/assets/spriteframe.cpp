#include "spriteframe.h"
#include "reader.h"
#include <fstream>
#include <iostream>

void SpriteFrameAsset::convertToHumanReadable(const std::vector<char>& baserom) {
    Reader reader(baserom, this->start, this->size);
    std::vector<std::string> lines;
    while (reader.cursor < this->size) {
        u8 num_gfx_tiles = reader.read_u8();
        u8 unk = reader.read_u8();
        u16 first_gfx_tile_index = reader.read_u16();

        lines.push_back(string_format("\tsprite_frame first_tile_index=0x%x", first_gfx_tile_index));
        lines.push_back(opt_param(", num_tiles=%d", 0, num_gfx_tiles));
        lines.push_back(opt_param(", unknown=0x%x", 0, unk));
        lines.push_back("\n");
    }

    std::ofstream out(this->assetPath);
    for (const auto& line : lines) {
        out << line;
    }
    out.close();
}