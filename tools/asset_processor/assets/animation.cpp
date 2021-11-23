#include "animation.h"
#include "reader.h"
#include <fstream>
#include <iostream>

void AnimationAsset::convertToHumanReadable(const std::vector<char>& baserom) {
    Reader reader(baserom, this->start, this->size);
    std::vector<std::string> lines;
    bool end_of_animation = false;
    while (!end_of_animation && reader.cursor + 3 < this->size) {
        u8 frame_index = reader.read_u8();
        u8 keyframe_duration = reader.read_u8();
        u8 bitfield = reader.read_u8();
        u8 bitfield2 = reader.read_u8();
        end_of_animation = (bitfield2 & 0x80) != 0;
        lines.push_back(string_format("\tkeyframe frame_index=%d", frame_index));
        lines.push_back(opt_param(", duration=%d", 0, keyframe_duration));
        lines.push_back(opt_param(", bitfield=0x%x", 0, bitfield));
        lines.push_back(opt_param(", bitfield2=0x%x", 0, bitfield2));
        lines.push_back("\n");
    }

    if (!end_of_animation) {
        lines.push_back("@ TODO why no terminator?\n");
    }

    while (reader.cursor < this->size) {
        u8 keyframe_count = reader.read_u8();
        lines.push_back(string_format("\t.byte %d @ keyframe count\n", keyframe_count));
    }
    std::ofstream out(this->assetPath);
    for (const auto& line : lines) {
        out << line;
    }
    out.close();
}
