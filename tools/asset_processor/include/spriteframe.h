#include "asset.h"

class SpriteFrameAsset : public BaseAsset {
public:
    using BaseAsset::BaseAsset;
    virtual void convertToHumanReadable(const std::vector<char>& baserom);
};