#ifndef READER_H
#define READER_H

#include <stdint.h>

typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
typedef int8_t s8;
typedef int16_t s16;
typedef int32_t s32;
typedef int64_t s64;

#include <vector>

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

// TODO move to utils?
#include <memory>
#include <string>
#include <stdexcept>

template <typename... Args> std::string string_format(const std::string& format, Args... args) {
    int size_s = std::snprintf(nullptr, 0, format.c_str(), args...) + 1; // Extra space for '\0'
    if (size_s <= 0) {
        throw std::runtime_error("Error during formatting.");
    }
    auto size = static_cast<size_t>(size_s);
    auto buf = std::make_unique<char[]>(size);
    std::snprintf(buf.get(), size, format.c_str(), args...);
    return std::string(buf.get(), buf.get() + size - 1); // We don't want the '\0' inside
}

std::string opt_param(const std::string& format, int defaultVal, int value);

#endif