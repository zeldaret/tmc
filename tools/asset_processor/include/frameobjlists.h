#include "asset.h"

class FrameObjListsAsset : public BaseAsset {
public:
    using BaseAsset::BaseAsset;
    virtual void convertToHumanReadable(const std::vector<char>& baserom);
};