#include "frameobjlists.h"
#include "reader.h"
#include <iostream>
#include <fstream>
#include <algorithm>

void FrameObjListsAsset::convertToHumanReadable(const std::vector<char>& baserom) {
    Reader reader(baserom, this->start, this->size);

    std::vector<int> first_level;
    std::vector<int> second_level;

    std::vector<std::string> lines;
    lines.push_back("@ First level of offsets\n");

    while (reader.cursor < this->size) {
        if (std::find(first_level.begin(), first_level.end(), reader.cursor) != first_level.end()) {
            // End of first level
            break;
        }

        // std::cout << string_format("0x%x", reader.read_u8()) << std::endl;
        // std::cout << string_format("0x%x", reader.read_u8()) << std::endl;
        // std::cout << string_format("0x%x", reader.read_u8()) << std::endl;
        // std::cout << string_format("0x%x", reader.read_u8()) << std::endl;
        // reader.cursor -= 4;

        u32 pointer = reader.read_u32();

        // std::cout << pointer << std::endl;
        // std::cout << string_format("0x%x", pointer) << std::endl;

        // if (pointer > 0x10000 || pointer == 0xec0) {
        //     assert(false);
        // }

        first_level.push_back(pointer);
        lines.push_back(string_format("\t.4byte 0x%x\n", pointer));
    }

    lines.push_back("\n@ Second level of offsets\n");

    while (reader.cursor < this->size) {
        if (std::find(second_level.begin(), second_level.end(), reader.cursor) != second_level.end()) {
            // End of second level
            break;
        }
        u32 pointer = reader.read_u32();
        second_level.push_back(pointer);
        lines.push_back(string_format("\t.4byte 0x%x\n", pointer));
    }

    int max_second_level = *std::max_element(second_level.begin(), second_level.end());

    while (reader.cursor < this->size) {
        if (reader.cursor > max_second_level) {
            break;
        }
        if (std::find(second_level.begin(), second_level.end(), reader.cursor) == second_level.end()) {
            // Find nearest next value that is in the second level
            int next = -1;
            for (const auto& i : second_level) {
                if (i > reader.cursor && (next == -1 || i < next)) {
                    next = i;
                }
            }
            int diff = next - reader.cursor;
            lines.push_back(string_format("@  Skipping %d bytes\n", diff));
            for (int i = 0; i < diff; i++) {
                u8 byte = reader.read_u8();
                lines.push_back(string_format("\t.byte %d\n", byte));
            }
        }
        u8 num_objects = reader.read_u8();
        lines.push_back(string_format("\t.byte %d @ num_objs\n", num_objects));

        for (int i = 0; i < num_objects; i++) {
            s8 x_offset = reader.read_s8();
            s8 y_offset = reader.read_s8();
            u8 bitfield = reader.read_u8();
            u16 bitfield2 = reader.read_u16();
            lines.push_back(string_format("\tobj x=%d, y=%d", x_offset, y_offset));
            lines.push_back(opt_param(", bitfield=0x%x", 0, bitfield));
            lines.push_back(opt_param(", bitfield2=0x%x", 0, bitfield2));
            lines.push_back("\n");
        }
    }

    std::ofstream out(this->path.replace_extension("s"));
    for (const auto& line : lines) {
        out << line;
    }
    out.close();
    // assert(false);
}