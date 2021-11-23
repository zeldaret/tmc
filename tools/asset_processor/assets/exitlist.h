#include "macroasm.h"

class ExitListAsset : public BaseMacroAsmAsset {
  public:
    using BaseMacroAsmAsset::BaseMacroAsmAsset;
    virtual void convertToHumanReadable(const std::vector<char>& baserom);
};