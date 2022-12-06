#ifndef MAP_H
#define MAP_H

#include "asset.h"

class MapAsset : public BaseAsset {
  public:
    using BaseAsset::BaseAsset;
    virtual void convertToHumanReadable(const std::vector<char>& baserom);
    virtual void buildToBinary();

  private:
    virtual std::filesystem::path generateAssetPath();
    bool isCompressed();
};

#endif // MAP_H
