#include "asset.h"
#include <util/file.h>

void BaseAsset::extractBinary(const std::vector<char>& baserom) {
    auto file = util::open_file(path, "w");
    std::fwrite(baserom.data() + start, 1, static_cast<size_t>(size), file.get());
}
