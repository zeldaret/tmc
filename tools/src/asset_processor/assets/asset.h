#ifndef ASSET_H
#define ASSET_H

#include "util.h"
#include <filesystem>
#include <nlohmann/json_fwd.hpp>
#include <string>
#include <iostream>
#include <utility>

class BaseAsset {
  public:
    BaseAsset(std::filesystem::path path_, int start_, int size_, const nlohmann::json& asset_)
        : path(std::move(path_)), start(start_), size(size_), asset(asset_) {
    }

    virtual ~BaseAsset() = default;

    void setup() {
        // Cannot call virtual functions in constructor, so another function call is necessary
        assetPath = generateAssetPath();
        buildPath = generateBuildPath();
    }

    // Extract the binary segment for this asset from the baserom and store it in a separate file.
    virtual void extractBinary(const std::vector<char>& baserom);

    // Convert the binary data for this asset to a human readable form.
    virtual void convertToHumanReadable([[maybe_unused]] const std::vector<char>& baserom) {
    }

    // Build the asset from the human readable form back to the binary.
    virtual void buildToBinary() {
    }

    // Returns the path to the binary file extracted from the baserom.
    [[nodiscard]] std::filesystem::path getPath() const {
        return path;
    }

    // Returns the path to the human readable asset file.
    [[nodiscard]] std::filesystem::path getAssetPath() const {
        return assetPath;
    }

    // Returns the path to the resulting file after building.
    [[nodiscard]] std::filesystem::path getBuildPath() const {
        return buildPath;
    }

    // Returns the base of the filename of the asset.
    [[nodiscard]] virtual std::string getSymbol() const {
        // Need to get the stem twice to remove both of the .4bpp.lz extensions.
        return (path.stem()).stem();
    }

    // Returns the start address of this asset.
    [[nodiscard]] int getStart() const {
        return start;
    }

  protected:
    std::filesystem::path path;
    std::filesystem::path assetPath;
    std::filesystem::path buildPath;
    int start;
    int size;
    const nlohmann::json& asset;

  private:
    virtual std::filesystem::path generateAssetPath() {
        return path;
    }
    virtual std::filesystem::path generateBuildPath() {
        return path;
    }
};

#endif