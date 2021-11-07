#ifndef READER_H
#define READER_H

#include <stdint.h>
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

    u8 read_u8() {
        return this->data[this->cursor++];
    }

    s8 read_s8() {
        return (s8)this->read_u8();
    }

    u16 read_u16() {
        u16 val = (u8)this->data[this->cursor] + (((u8)this->data[this->cursor + 1]) << 8);
        this->cursor += 2;
        return val;
    }

    u32 read_u32() {
        u32 val = ((u8)this->data[this->cursor]) + (((u8)this->data[this->cursor + 1]) << 8) +
                  (((u8)this->data[this->cursor + 2]) << 16) + (((u8)this->data[this->cursor + 3]) << 24);
        this->cursor += 4;
        return val;
    }
    int cursor = 0;

  private:
    std::vector<char> data;
};

#endif