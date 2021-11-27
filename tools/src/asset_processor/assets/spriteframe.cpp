#include "spriteframe.h"
#include "reader.h"
#include <fmt/format.h>
#include <util/file.h>

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

    auto file = util::open_file(assetPath, "w");
    for (const auto& line : lines) {
        std::fputs(line.c_str(), file.get());
    }
}