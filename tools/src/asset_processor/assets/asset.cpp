#include "asset.h"
#include <fstream>

void BaseAsset::extractBinary(const std::vector<char>& baserom) {
    auto first = baserom.begin() + this->start;
    auto last = baserom.begin() + this->start + this->size;
    std::vector<char> data(first, last);
    std::fstream file(this->path, std::ios::out | std::ios::binary);
    file.write(&data[0], data.size());
    file.close();
}