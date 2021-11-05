#ifndef ASSET_H
#define ASSET_H

#include <assert.h>
#include <string>
#include <filesystem>
#include <json.hpp>
#include "util.h"

class BaseAsset {
  public:
    BaseAsset(std::filesystem::path path, int start, int size, nlohmann::json asset)
        : path(path), start(start), size(size), asset(asset) {
        binaryPath = path;//.replace_extension("bin");
    }
    virtual void extractBinary(const std::vector<char>& baserom);

    virtual void convertToHumanReadable(const std::vector<char>& baserom) {
        (void)baserom;
        assert("not implemented");
    }
    virtual void convertToBinary() {
        assert("not implemented");
    }

  protected:
    std::filesystem::path path;
    std::filesystem::path binaryPath;
    int start;
    int size;
    nlohmann::json asset;
};

#endif