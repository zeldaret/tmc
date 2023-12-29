#ifndef READER_H
#define READER_H

#include <vector>
#include <util/types.h>

class Reader {
  public:
    Reader(const std::vector<char>& baserom, int start, [[maybe_unused]]int size_)
        : data(baserom.data() + start) //, size(size_)
    {
    }

    [[nodiscard]] s8 read_s8() {
        // TODO range check
        return static_cast<s8>(data[static_cast<unsigned long>(cursor++)]);
    }

    [[nodiscard]] u8 read_u8() {
        return static_cast<u8>(read_s8());
    }

    [[nodiscard]] u16 read_u16() {
        return static_cast<u16>(read_u8() + (read_u8() << 8));
    }

    [[nodiscard]] u32 read_u32() {
        return static_cast<u32>(read_u16() + (read_u16() << 16));
    }

    int cursor = 0;

  private:
    const char* data;
    // const int size;
};

#endif
