#include "asset.h"
#include <fstream>

void BaseAsset::extractBinary(const std::vector<char>& baserom) {
    auto first = baserom.begin() + start;
    auto last = baserom.begin() + start + size;
    std::vector<char> data(first, last);
    std::fstream file(path, std::ios::out | std::ios::binary);
    file.write(&data[0], static_cast<std::streamsize>(data.size()));
    file.close();
}