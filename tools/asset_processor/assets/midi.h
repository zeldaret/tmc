#include "asset.h"

class MidiAsset : public BaseAsset {
  public:
    using BaseAsset::BaseAsset;
    virtual void extractBinary(const std::vector<char>& baserom);
    virtual void convertToHumanReadable(const std::vector<char>& baserom);
    virtual void buildToBinary();

  private:
    void parseOptions(std::vector<std::string>& commonParams, std::vector<std::string>& agb2midParams);
    virtual std::filesystem::path generateAssetPath();
    virtual std::filesystem::path generateBuildPath();
};