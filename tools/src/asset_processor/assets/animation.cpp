#include "animation.h"
#include "reader.h"
#include <fmt/format.h>
#include <util/file.h>

void AnimationAsset::convertToHumanReadable(const std::vector<char>& baserom) {
    Reader reader(baserom, start, size);
    std::vector<std::string> lines;
    bool end_of_animation = false;
    while (!end_of_animation && reader.cursor + 3 < size) {
        u8 frame_index = reader.read_u8();
        u8 keyframe_duration = reader.read_u8();
        u8 bitfield = reader.read_u8();
        u8 bitfield2 = reader.read_u8();
        end_of_animation = (bitfield2 & 0x80) != 0;
        lines.push_back(fmt::format("\tkeyframe frame_index={}", frame_index));
        lines.push_back(opt_param(", duration={}", 0, keyframe_duration));
        lines.push_back(opt_param(", bitfield={:#x}", 0, bitfield));
        lines.push_back(opt_param(", bitfield2={:#x}", 0, bitfield2));
        lines.emplace_back("\n");
    }

    if (!end_of_animation) {
        lines.emplace_back("@ TODO why no terminator?\n");
    }

    while (reader.cursor < size) {
        u8 keyframe_count = reader.read_u8();
        lines.push_back(fmt::format("\t.byte {} @ keyframe count\n", keyframe_count));
    }
    auto file = util::open_file(assetPath, "w");
    for (const auto& line : lines) {
        std::fputs(line.c_str(), file.get());
    }
}
