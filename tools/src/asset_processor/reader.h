#ifndef READER_H
#define READER_H

#include <cstdint>
#include <vector>

typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
typedef int8_t s8;
typedef int16_t s16;
typedef int32_t s32;
typedef int64_t s64;

class Reader {
  public:
    Reader(const std::vector<char>& baserom, int start, int size) {
        auto first = baserom.begin() + start;
        auto last = baserom.begin() + start + size;
        data = std::vector<char>(first, last);
    }

    s8 read_s8() {
        return data[static_cast<unsigned long>(cursor++)];
    }

    u8 read_u8() {
        return static_cast<u8>(read_s8());
    }

    u16 read_u16() {
        return static_cast<u16>(read_u8() + (read_u8() << 8));
    }

    u32 read_u32() {
        return static_cast<u32>(read_u16() + (read_u16() << 16));
    }

    int cursor = 0;

  private:
    std::vector<char> data;
};

#endif