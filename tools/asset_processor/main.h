#ifndef MAIN_H
#define MAIN_H

#include "util.h"
#include "assets/asset.h"

std::unique_ptr<BaseAsset> getAssetHandlerByType(const std::filesystem::path& path, const nlohmann::json& asset,
                                                 const int& currentOffset);
bool shouldExtractAsset(const std::filesystem::path& path, const std::filesystem::file_time_type& configModified);
void extractAsset(std::unique_ptr<BaseAsset>& assetHandler, const std::vector<char>& baserom);
bool shouldConvertAsset(const std::unique_ptr<BaseAsset>& assetHandler);
void convertAsset(std::unique_ptr<BaseAsset>& assetHandler, const std::vector<char>& baserom);
bool shouldBuildAsset(const std::unique_ptr<BaseAsset>& assetHandler);
void buildAsset(std::unique_ptr<BaseAsset>& assetHandler);

enum Mode { EXTRACT, CONVERT, BUILD };

// Arguments
extern bool gVerbose;
extern Mode gMode;
extern std::string gVariant;
extern std::string gAssetsFolder;
extern std::string gBaseromPath;
#endif