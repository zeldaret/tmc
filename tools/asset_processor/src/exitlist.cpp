#include "exitlist.h"
#include "reader.h"
#include <iostream>
#include <fstream>

void ExitListAsset::convertToHumanReadable(const std::vector<char>& baserom) {
    Reader reader(baserom, this->start, this->size);
    std::vector<std::string> lines;
    while (reader.cursor < this->size) {
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
            lines.push_back("\texit_list_end\n");
            break;
        }
        lines.push_back(string_format("\texit transition=%d", transition_type));
        lines.push_back(opt_param(", x=0x%x", 0, x_pos));
        lines.push_back(opt_param(", y=0x%x", 0, y_pos));
        lines.push_back(opt_param(", destX=0x%x", 0, dest_x));
        lines.push_back(opt_param(", destY=0x%x", 0, dest_y));
        lines.push_back(opt_param(", screenEdge=0x%x", 0, screen_edge));
        lines.push_back(opt_param(", destArea=0x%x", 0, dest_area));
        lines.push_back(opt_param(", destRoom=0x%x", 0, dest_room));
        lines.push_back(opt_param(", unknown=0x%x", 0, unknown_2));
        lines.push_back(opt_param(", unknown2=0x%x", 0, unknown_3));
        lines.push_back(opt_param(", unknown3=0x%x", 0, unknown_4));
        lines.push_back(opt_param(", unknown4=0x%x", 0, unknown_5));
        lines.push_back(opt_param(", padding=0x%x", 0, padding_1));
        lines.push_back("\n");
    }

    std::ofstream out(this->path.replace_extension("s"));
    for (const auto& line : lines) {
        out << line;
    }
    out.close();
}