#include "asset.h"

class ExitListAsset : public BaseAsset {
public:
    using BaseAsset::BaseAsset;
    virtual void convertToHumanReadable(const std::vector<char>& baserom);
};