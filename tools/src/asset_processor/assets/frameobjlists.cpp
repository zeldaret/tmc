#include "frameobjlists.h"
#include "reader.h"
#include <algorithm>
#include <fstream>
#include <iostream>
#include <fmt/format.h>

void FrameObjListsAsset::convertToHumanReadable(const std::vector<char>& baserom) {
    Reader reader(baserom, start, size);

    std::vector<u32> first_level;
    std::vector<u32> second_level;

    std::vector<std::string> lines;
    lines.emplace_back("@ First level of offsets\n");

    while (reader.cursor < size) {
        if (std::find(first_level.begin(), first_level.end(), reader.cursor) != first_level.end()) {
            // End of first level
            break;
        }

        u32 pointer = reader.read_u32();
        first_level.push_back(pointer);
        lines.push_back(fmt::format("\t.4byte {:#x}\n", pointer));
    }

    lines.emplace_back("\n@ Second level of offsets\n");

    while (reader.cursor < size) {
        if (std::find(second_level.begin(), second_level.end(), reader.cursor) != second_level.end()) {
            // End of second level
            break;
        }
        u32 pointer = reader.read_u32();
        second_level.push_back(pointer);
        lines.push_back(fmt::format("\t.4byte {:#x}\n", pointer));
    }

    u32 max_second_level = *std::max_element(second_level.begin(), second_level.end());

    while (reader.cursor < size) {
        if (static_cast<u32>(reader.cursor) > max_second_level) {
            break;
        }
        if (std::find(second_level.begin(), second_level.end(), reader.cursor) == second_level.end()) {
            // Find nearest next value that is in the second level
            int next = -1;
            for (const auto& i : second_level) {
                if (i > static_cast<u32>(reader.cursor) && (next == -1 || i < static_cast<u32>(next))) {
                    next = static_cast<int>(i);
                }
            }
            int diff = next - reader.cursor;
            lines.push_back(fmt::format("@  Skipping {} bytes\n", diff));
            for (int i = 0; i < diff; i++) {
                u8 byte = reader.read_u8();
                lines.push_back(fmt::format("\t.byte {}\n", byte));
            }
        }
        u8 num_objects = reader.read_u8();
        lines.push_back(fmt::format("\t.byte {} @ num_objs\n", num_objects));

        for (int i = 0; i < num_objects; i++) {
            s8 x_offset = reader.read_s8();
            s8 y_offset = reader.read_s8();
            u8 bitfield = reader.read_u8();
            u16 bitfield2 = reader.read_u16();
            lines.push_back(fmt::format("\tobj x={}, y={}", x_offset, y_offset));
            lines.push_back(opt_param(", bitfield={:#x}", 0, bitfield));
            lines.push_back(opt_param(", bitfield2={:#x}", 0, bitfield2));
            lines.emplace_back("\n");
        }
    }

    std::ofstream out(assetPath);
    for (const auto& line : lines) {
        out << line;
    }
    out.close();
}