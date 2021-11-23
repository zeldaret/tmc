#ifndef ASSET_H
#define ASSET_H

#include "util.h"
#include <filesystem>
#include <nlohmann/json_fwd.hpp>
#include <string>
#include <iostream>

class BaseAsset {
  public:
    BaseAsset(std::filesystem::path path, int start, int size, const nlohmann::json& asset)
        : path(path), start(start), size(size), asset(asset) {
    }

    virtual ~BaseAsset() = default;

    void setup() {
        // Cannot call virtual functions in constructor, so another function call is necessary
        assetPath = this->generateAssetPath();
        buildPath = this->generateBuildPath();
    }

    // Extract the binary segment for this asset from the baserom and store it in a separate file.
    virtual void extractBinary(const std::vector<char>& baserom);

    // Convert the binary data for this asset to a human readable form.
    virtual void convertToHumanReadable(const std::vector<char>& baserom) {
        (void)baserom;
    }

    // Build the asset from the human readable form back to the binary.
    virtual void buildToBinary() {
    }

    // Returns the path to the binary file extracted from the baserom.
    std::filesystem::path getPath() const {
        return path;
    }
    // Returns the path to the human readable asset file.
    std::filesystem::path getAssetPath() const {
        return assetPath;
    }
    // Returns the path to the resulting file after building.
    std::filesystem::path getBuildPath() const {
        return buildPath;
    }

    // Returns the base of the filename of the asset.
    std::string getSymbol() const {
        // Need to get the stem twice to remove both of the .4bpp.lz extensions.
        return (this->path.stem()).stem();
    }

    // Returns the start address of this asset.
    int getStart() const {
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
        return this->path;
    }
    virtual std::filesystem::path generateBuildPath() {
        return this->path;
    }
};

#endif