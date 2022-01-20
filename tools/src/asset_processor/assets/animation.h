#include "macroasm.h"

class AnimationAsset : public BaseMacroAsmAsset {
  public:
    using BaseMacroAsmAsset::BaseMacroAsmAsset;
    virtual void convertToHumanReadable(const std::vector<char>& baserom);
};