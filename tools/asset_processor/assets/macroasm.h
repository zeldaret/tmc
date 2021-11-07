#ifndef MACROASM_H
#define MACROASM_H

#include "asset.h"

// Common class for all assets that are converted to asm files consisting of macros.
class BaseMacroAsmAsset : public BaseAsset {
    using BaseAsset::BaseAsset;

  public:
    virtual void extractBinary(const std::vector<char>& baserom);

  private:
    virtual std::filesystem::path generateAssetPath();
    virtual std::filesystem::path generateBuildPath();
};
#endif
