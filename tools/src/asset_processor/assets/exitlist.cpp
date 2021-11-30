#include "exitlist.h"
#include "reader.h"
#include <fmt/format.h>
#include <util/file.h>

void ExitListAsset::convertToHumanReadable(const std::vector<char>& baserom) {
    Reader reader(baserom, start, size);
    auto file = util::open_file(assetPath, "w");
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
            std::fputs("\texit_list_end\n", file.get());
            break;
        }
        auto line = fmt::format("\texit transition={}", transition_type);
        line += opt_param(", x={:#x}", 0, x_pos);
        line += opt_param(", y={:#x}", 0, y_pos);
        line += opt_param(", destX={:#x}", 0, dest_x);
        line += opt_param(", destY={:#x}", 0, dest_y);
        line += opt_param(", screenEdge={:#x}", 0, screen_edge);
        line += opt_param(", destArea={:#x}", 0, dest_area);
        line += opt_param(", destRoom={:#x}", 0, dest_room);
        line += opt_param(", unknown={:#x}", 0, unknown_2);
        line += opt_param(", unknown2={:#x}", 0, unknown_3);
        line += opt_param(", unknown3={:#x}", 0, unknown_4);
        line += opt_param(", unknown4={:#x}", 0, unknown_5);
        line += opt_param(", padding={:#x}", 0, padding_1);
        std::fputs(line.c_str(), file.get());
        std::fputc('\n', file.get());
    }
}