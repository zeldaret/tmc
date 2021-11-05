#ifndef MAIN_H
#define MAIN_H

#include "util.h"

bool shouldExtractFile(const std::filesystem::path& path, const std::filesystem::file_time_type& configModified);
void extractFile(const std::filesystem::path& path, const nlohmann::json& asset, const int& start, const std::vector<char>& baserom);

enum Mode {
    EXTRACT,
    CONVERT,
    BUILD
};

// Arguments
extern bool gVerbose;
extern Mode gMode;
extern std::string gVariant;
extern std::string gAssetsFolder;
extern std::string gBaseromPath;
#endif