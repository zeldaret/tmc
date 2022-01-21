#include "animation.h"
#include "reader.h"
#include <fmt/format.h>
#include <util/file.h>

void AnimationAsset::convertToHumanReadable(const std::vector<char>& baserom) {
    Reader reader(baserom, start, size);
    bool end_of_animation = false;
    auto file = util::open_file(assetPath, "w");
    while (!end_of_animation && reader.cursor + 3 < size) {
        u8 frame_index = reader.read_u8();
        u8 keyframe_duration = reader.read_u8();
        u8 bitfield = reader.read_u8();
        u8 bitfield2 = reader.read_u8();
        end_of_animation = (bitfield2 & 0x80) != 0;
        auto line = fmt::format("\tkeyframe frame_index={}", frame_index);
        line += opt_param(", duration={}", 0, keyframe_duration);
        line += opt_param(", bitfield={:#x}", 0, bitfield);
        line += opt_param(", bitfield2={:#x}", 0, bitfield2);
        std::fputs(line.c_str(), file.get());
        std::fputc('\n', file.get());
    }

    if (!end_of_animation) {
        std::fputs("@ TODO why no terminator?\n", file.get());
    }

    while (reader.cursor < size) {
        u8 keyframe_count = reader.read_u8();
        fmt::print(file.get(), "\t.byte {} @ keyframe count\n", keyframe_count);
    }
}
