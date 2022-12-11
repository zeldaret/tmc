#ifndef DUNGEONMAP_H
#define DUNGEONMAP_H

#include "asset.h"

class DungeonMapAsset : public BaseAsset {
  public:
    using BaseAsset::BaseAsset;
    virtual void convertToHumanReadable(const std::vector<char>& baserom);
    virtual void buildToBinary();
    virtual std::string getSymbol() const;

  private:
    virtual std::filesystem::path generateAssetPath();
};

#endif // DUNGEONMAP_H
