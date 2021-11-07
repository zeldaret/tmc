#include "macroasm.h"

class SpriteFrameAsset : public BaseMacroAsmAsset {
  public:
    using BaseMacroAsmAsset::BaseMacroAsmAsset;
    virtual void convertToHumanReadable(const std::vector<char>& baserom);
};