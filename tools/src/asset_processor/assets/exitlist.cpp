#include "exitlist.h"
#include "reader.h"
#include <fstream>
#include <iostream>
#include <fmt/format.h>

void ExitListAsset::convertToHumanReadable(const std::vector<char>& baserom) {
    Reader reader(baserom, start, size);
    std::vector<std::string> lines;
    while (reader.cursor < size) {
        u16 transition_type = reader.read_u16();
        u16 x_pos = reader.read_u16();
        u16 y_pos = reader.read_u16();
        u16 dest_x = reader.read_u16();
        u16 dest_y = reader.read_u16();
        u8 screen_edge = reader.read_u8();
        u8 dest_area = reader.read_u8();
        u8 dest_room = reader.read_u8();
        u8 unknown_2 = reader.read_u8();
        u8 unknown_3 = reader.read_u8();
        u8 unknown_4 = reader.read_u8();
        u16 unknown_5 = reader.read_u16();
        u16 padding_1 = reader.read_u16();
        if (transition_type == 0xffff) {
            lines.emplace_back("\texit_list_end\n");
            break;
        }
        lines.push_back(fmt::format("\texit transition={}", transition_type));
        lines.push_back(opt_param(", x={:#x}", 0, x_pos));
        lines.push_back(opt_param(", y={:#x}", 0, y_pos));
        lines.push_back(opt_param(", destX={:#x}", 0, dest_x));
        lines.push_back(opt_param(", destY={:#x}", 0, dest_y));
        lines.push_back(opt_param(", screenEdge={:#x}", 0, screen_edge));
        lines.push_back(opt_param(", destArea={:#x}", 0, dest_area));
        lines.push_back(opt_param(", destRoom={:#x}", 0, dest_room));
        lines.push_back(opt_param(", unknown={:#x}", 0, unknown_2));
        lines.push_back(opt_param(", unknown2={:#x}", 0, unknown_3));
        lines.push_back(opt_param(", unknown3={:#x}", 0, unknown_4));
        lines.push_back(opt_param(", unknown4={:#x}", 0, unknown_5));
        lines.push_back(opt_param(", padding={:#x}", 0, padding_1));
        lines.emplace_back("\n");
    }

    std::ofstream out(assetPath);
    for (const auto& line : lines) {
        out << line;
    }
    out.close();
}