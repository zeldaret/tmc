#include "frameobjlists.h"
#include "reader.h"
#include <algorithm>
#include <fmt/format.h>
#include <util/file.h>

void FrameObjListsAsset::convertToHumanReadable(const std::vector<char>& baserom) {
    Reader reader(baserom, start, size);

    std::vector<u32> first_level;
    std::vector<u32> second_level;

    auto file = util::open_file(assetPath, "w");
    std::fputs("@ First level of offsets\n", file.get());

    while (reader.cursor < size) {
        if (std::find(first_level.begin(), first_level.end(), reader.cursor) != first_level.end()) {
            // End of first level
            break;
        }

        u32 pointer = reader.read_u32();
        first_level.push_back(pointer);
        fmt::print(file.get(), "\t.4byte {:#x}\n", pointer);
    }

    std::fputs("\n@ Second level of offsets\n", file.get());

    while (reader.cursor < size) {
        if (std::find(second_level.begin(), second_level.end(), reader.cursor) != second_level.end()) {
            // End of second level
            break;
        }
        u32 pointer = reader.read_u32();
        second_level.push_back(pointer);
        fmt::print(file.get(), "\t.4byte {:#x}\n", pointer);
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
            fmt::print(file.get(), "@  Skipping {} bytes\n", diff);
            for (int i = 0; i < diff; i++) {
                u8 byte = reader.read_u8();
                fmt::print(file.get(), "\t.byte {}\n", byte);
            }
        }
        u8 num_objects = reader.read_u8();
        fmt::print(file.get(), "\t.byte {} @ num_objs\n", num_objects);

        for (int i = 0; i < num_objects; i++) {
            s8 x_offset = reader.read_s8();
            s8 y_offset = reader.read_s8();
            u8 bitfield = reader.read_u8();
            u16 bitfield2 = reader.read_u16();
            auto line = fmt::format("\tobj x={}, y={}", x_offset, y_offset);
            line += opt_param(", bitfield={:#x}", 0, bitfield);
            line += opt_param(", bitfield2={:#x}", 0, bitfield2);
            std::fputs(line.c_str(), file.get());
            std::fputc('\n', file.get());
        }
    }
}