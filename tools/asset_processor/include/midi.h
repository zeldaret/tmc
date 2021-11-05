#include "asset.h"

class MidiAsset : public BaseAsset {
  public:
    using BaseAsset::BaseAsset;
    virtual void convertToHumanReadable(const std::vector<char>& baserom);
};