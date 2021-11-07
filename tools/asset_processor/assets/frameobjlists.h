#include "macroasm.h"

class FrameObjListsAsset : public BaseMacroAsmAsset {
  public:
    using BaseMacroAsmAsset::BaseMacroAsmAsset;
    virtual void convertToHumanReadable(const std::vector<char>& baserom);
};