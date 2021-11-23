#include "main.h"
#include "assets/aif.h"
#include "assets/animation.h"
#include "assets/exitlist.h"
#include "assets/frameobjlists.h"
#include "assets/gfx.h"
#include "assets/midi.h"
#include "assets/palette.h"
#include "assets/spriteframe.h"
#include "assets/tileset.h"
#include "offsets.h"
#include <filesystem>
#include <fstream>
#include <iostream>
#include <nlohmann/json.hpp>

using nlohmann::json;

// Does json array contain element? https://github.com/nlohmann/json/issues/399#issuecomment-844212174
#define CONTAINS(list, value) (std::find(list.begin(), list.end(), value) != list.end())

void usage() {
    std::cout << "Usage: asset_processor [options] MODE VARIANT BUILD_PATH\n"
              << "\n"
              << "MODE        Mode to execute\n"
              << "VARIANT     Variant to build. One of USA, JP, EU, DEMO_USA, DEMO_JP\n"
              << "BUILD_PATH  Path to the build folder\n"
              << "\n"
              << "Modes:\n"
              << "extract     Extract binary data from baserom\n"
              << "convert     Convert data to human readable format\n"
              << "build       Build binary data from assets\n"
              << "\n"
              << "Options:\n"
              << "-v          Print verbose output\n"
              << "-h          Show this help\n"
              << "-f          Force extraction of all assets (even if unmodified)\n";
    std::exit(1);
}

bool gVerbose = false;
bool gForceExtraction = false;
Mode gMode;
std::string gVariant;
std::string gAssetsFolder;
std::string gBaseromPath;

static std::map<std::string, std::string> baseroms = { { "USA", "baserom.gba" },
                                                       { "EU", "baserom_eu.gba" },
                                                       { "JP", "baserom_jp.gba" },
                                                       { "DEMO_USA", "baserom_demo.gba" },
                                                       { "DEMO_JP", "baserom_demo_jp.gba" } };

int main(int argc, char** argv) {

    // Parse options.
    int argCount = argc - 1; // Skip program name
    char** args = &argv[1];

    while (argCount > 0 && args[0][0] == '-') {
        if (strcmp(args[0], "-v") == 0) {
            gVerbose = true;
            argCount--;
            args++;
        } else if (strcmp(args[0], "-h") == 0) {
            argCount--;
            args++;
            usage();
        } else if (strcmp(args[0], "-f") == 0) {
            gForceExtraction = true;
            argCount--;
            args++;
        } else {
            std::cerr << "Error: Unrecognized argument `" << args[0] << "`" << std::endl;
            std::exit(1);
        }
    }

    if (argCount != 3) {
        std::cerr << "Error: Not enough arguments. expected: 3, actual: " << argCount << std::endl;
        usage();
    }

    if (strcmp(args[0], "extract") == 0) {
        gMode = EXTRACT;
    } else if (strcmp(args[0], "convert") == 0) {
        gMode = CONVERT;
    } else if (strcmp(args[0], "build") == 0) {
        gMode = BUILD;
    } else {
        std::cerr << "Error: Unsupported mode `" << args[0] << "`" << std::endl;
        std::exit(1);
    }
    gVariant = args[1];
    if (gVariant != "USA" && gVariant != "EU" && gVariant != "JP" && gVariant != "DEMO_USA" && gVariant != "DEMO_JP") {
        std::cerr << "Error: Unsupported variant `" << gVariant << "`" << std::endl;
        std::exit(1);
    }

    gAssetsFolder = args[2];
    gBaseromPath = baseroms[gVariant];

    if (!std::filesystem::exists(gBaseromPath)) {
        std::cerr << "Error: You need to provide a " << gVariant << " ROM as " << gBaseromPath << std::endl;
        std::exit(1);
    }

    // Read baserom.
    std::ifstream file(gBaseromPath, std::ios::binary | std::ios::ate);
    std::streamsize size = file.tellg();
    file.seekg(0, std::ios::beg);

    std::vector<char> baserom(size);
    if (!file.read(baserom.data(), size)) {
        std::cerr << "Could not read baserom " << gBaseromPath << std::endl;
        std::exit(1);
    }
    file.close();

    // Gather all json configs from assets folder.
    std::vector<std::filesystem::path> configs;
    std::string configFolder = "assets";
    for (const auto& entry : std::filesystem::directory_iterator(configFolder)) {
        const auto& path = entry.path();
        if (path.extension() == ".json") {
            configs.push_back(path);
        }
    }
    std::sort(configs.begin(), configs.end());

    for (const auto& config : configs) {
        if (gVerbose) {
            std::cout << "Parsing " << config << "..." << std::endl;
        }

        std::ifstream input(config);
        json assets;
        input >> assets;

        std::filesystem::file_time_type configModified = std::filesystem::last_write_time(config);

        std::unique_ptr<OffsetCalculator> offsetCalculator;

        uint currentOffset = 0;
        for (const auto& asset : assets) {
            if (asset.contains("offsets")) { // Offset definition
                if (asset["offsets"].contains(gVariant)) {
                    currentOffset = asset["offsets"][gVariant];
                }
            } else if (asset.contains("calculateOffsets")) { // Start offset calculation
                std::filesystem::path path = gAssetsFolder;
                path = path / asset["calculateOffsets"];
                int baseOffset = asset["start"].get<int>() + currentOffset;
                offsetCalculator = std::make_unique<OffsetCalculator>(path, baseOffset);
            } else if (asset.contains("path")) { // Asset definition

                if (asset.contains("variants")) {
                    if (!CONTAINS(asset["variants"], gVariant)) {
                        // This asset is not used in the current variant
                        continue;
                    }
                }

                std::filesystem::path path = gAssetsFolder;
                path = path / asset["path"];

                switch (gMode) {
                    case EXTRACT: {
                        std::unique_ptr<BaseAsset> assetHandler = getAssetHandlerByType(path, asset, currentOffset);
                        if (shouldExtractAsset(path, configModified)) {
                            if (gVerbose) {
                                std::cout << "Extracting " << path << "..." << std::endl;
                            }

                            extractAsset(assetHandler, baserom);
                        }
                        if (offsetCalculator != nullptr) {
                            offsetCalculator->addAsset(assetHandler->getStart(), assetHandler->getSymbol());
                        }
                        break;
                    }
                    case CONVERT: {
                        std::unique_ptr<BaseAsset> assetHandler = getAssetHandlerByType(path, asset, currentOffset);
                        if (shouldConvertAsset(assetHandler)) {
                            if (gVerbose) {
                                std::cout << "Converting " << assetHandler->getAssetPath() << "..." << std::endl;
                            }
                            convertAsset(assetHandler, baserom);
                        }
                        break;
                    }
                    case BUILD: {
                        std::unique_ptr<BaseAsset> assetHandler = getAssetHandlerByType(path, asset, currentOffset);
                        if (shouldBuildAsset(assetHandler)) {
                            if (gVerbose) {
                                std::cout << "Building " << assetHandler->getAssetPath() << "..." << std::endl;
                            }
                            buildAsset(assetHandler);
                        }
                        break;
                    }
                }
            }
        }
    }

    if (gVerbose) {
        std::cout << "done" << std::endl;
    }
}

std::unique_ptr<BaseAsset> getAssetHandlerByType(const std::filesystem::path& path, const json& asset,
                                                 const int& currentOffset) {

    int start = 0;
    if (asset.contains("start")) {
        // Apply offset to the start of the USA variant
        start = asset["start"].get<int>() + currentOffset;
    } else if (asset.contains("starts")) {
        // Use start for the current variant
        start = asset["starts"][gVariant];
    }

    std::string type = "";
    if (asset.contains("type")) {
        type = asset["type"];
    }

    int size = 0;
    if (asset.contains("size")) { // The asset has a size and want to be extracted first.
        size = asset["size"];     // TODO can different sizes for the different variants ever occur?
    }

    std::unique_ptr<BaseAsset> assetHandler;
    if (type == "tileset") {
        assetHandler = std::make_unique<TilesetAsset>(path, start, size, asset);
    } else if (type == "animation") {
        assetHandler = std::make_unique<AnimationAsset>(path, start, size, asset);
    } else if (type == "sprite_frame") {
        assetHandler = std::make_unique<SpriteFrameAsset>(path, start, size, asset);
    } else if (type == "exit_list") {
        assetHandler = std::make_unique<ExitListAsset>(path, start, size, asset);
    } else if (type == "frame_obj_lists") {
        assetHandler = std::make_unique<FrameObjListsAsset>(path, start, size, asset);
    } else if (type == "midi") {
        assetHandler = std::make_unique<MidiAsset>(path, start, size, asset);
    } else if (type == "aif") {
        assetHandler = std::make_unique<AifAsset>(path, start, size, asset);
    } else if (type == "gfx") {
        assetHandler = std::make_unique<GfxAsset>(path, start, size, asset);
    } else if (type == "palette") {
        assetHandler = std::make_unique<PaletteAsset>(path, start, size, asset);
    } else if (type == "map_gfx" || type == "map_layer1" || type == "map_layer2" || type == "metatiles_tile_types1" ||
               type == "metatiles_tile_types2" || type == "metatiles_tileset1" || type == "metatiles_tileset2" ||
               type == "map_mapping1" || type == "map_mapping2" || type == "tileset_mapping3" ||
               type == "map_collision" || type == "unknown") {
        // TODO implement conversions
        assetHandler = std::make_unique<BaseAsset>(path, start, size, asset);
    } else if (type == "") {
        // Unknown binary asset
        assetHandler = std::make_unique<BaseAsset>(path, start, size, asset);
    } else {
        std::cerr << "Error: Unimplemented asset type `" << type << "`" << std::endl;
        std::exit(1);
    }
    assetHandler->setup();
    return assetHandler;
}

bool shouldExtractAsset(const std::filesystem::path& path, const std::filesystem::file_time_type& configModified) {
    if (gForceExtraction) {
        return true;
    }
    if (std::filesystem::is_regular_file(path)) {
        std::filesystem::file_time_type fileModified = std::filesystem::last_write_time(path);
        if (fileModified < configModified) {
            // File was created before the config was modified, so it needs to be renewed.
            return true;
        } else {
            return false;
        }
    } else {
        // Target file does not yet exist -> extract
        return true;
    }
}

void extractAsset(std::unique_ptr<BaseAsset>& assetHandler, const std::vector<char>& baserom) {
    // Create the parent directory
    std::filesystem::path parentDir = std::filesystem::path(assetHandler->getPath());
    parentDir.remove_filename();
    std::filesystem::create_directories(parentDir);

    assetHandler->extractBinary(baserom);
}

bool shouldConvertAsset(const std::unique_ptr<BaseAsset>& assetHandler) {
    (void)assetHandler;
    return true; // TODO
}

void convertAsset(std::unique_ptr<BaseAsset>& assetHandler, const std::vector<char>& baserom) {
    assetHandler->convertToHumanReadable(baserom);
}

bool shouldBuildAsset(const std::unique_ptr<BaseAsset>& assetHandler) {
    (void)assetHandler;
    return true; // TODO
}

void buildAsset(std::unique_ptr<BaseAsset>& assetHandler) {
    assetHandler->buildToBinary();
}