#include <iostream>
#include <fstream>
#include <filesystem>
#include <json.hpp>
#include "main.h"
#include "tileset.h"
#include "animation.h"
#include "spriteframe.h"
#include "exitlist.h"
#include "frameobjlists.h"
#include "midi.h"
#include "aif.h"
#include "gfx.h"
#include "palette.h"

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
    << "convert     TODO Convert data to human readable format\n"
    << "build       TODO Build binary from assets\n"
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

static std::map<std::string, std::string> baseroms = {
    {"USA", "baserom.gba"},
    {"EU", "baserom_eu.gba"},
    {"JP", "baserom_jp.gba"},
    {"DEMO_USA", "baserom_demo.gba"},
    {"DEMO_JP", "baserom_demo_jp.gba"}
};

int main(int argc, char** argv) {

    // Parse options.

    int argCount = argc - 1; // Skip program name
    char** args = &argv[1];

    while (argCount > 0 && args[0][0] == '-') {
        if (strcmp(args[0], "-v") == 0) {
            gVerbose = true;
            argCount--;
            args++;
        } else if(strcmp(args[0], "-h") == 0) {
            argCount--;
            args++;
            usage();
        } else if(strcmp(args[0], "-f") == 0) {
            gForceExtraction = true;
            argCount--;
            args++;
        } else {
            std::cerr << "Unrecognized argument `" << args[0] << "`" << std::endl;
            std::exit(1);
        }
    }

    if (argCount != 3) {
        std::cerr << "Not enough arguments: " << argCount << std::endl;
        usage();
    }

    if (strcmp(args[0], "extract") == 0) {
        gMode = EXTRACT;
    } else if (strcmp(args[0], "convert") == 0) {
        gMode = CONVERT;
        std::cerr << "Mode `convert` not yet implemented." << std::endl;
        std::exit(1);
    } else if (strcmp(args[0], "build") == 0) {
        gMode = BUILD;
        std::cerr << "Mode `build` not yet implemented." << std::endl;
        std::exit(1);
    } else {
        std::cerr << "Unsupported mode `" << args[0] << "`" << std::endl;
        std::exit(1);
    }
    gVariant = args[1]; // TODO check valid variant
    if (gVariant != "USA" && gVariant != "EU" && gVariant != "JP" && gVariant != "DEMO_USA" && gVariant != "DEMO_JP") {
        std::cerr << "Unsupported variant `" << gVariant << "`" << std::endl;
        std::exit(1);
    }
    gAssetsFolder = args[2];
    gBaseromPath = baseroms[gVariant];

    std::ifstream file(gBaseromPath, std::ios::binary | std::ios::ate);
    std::streamsize size = file.tellg();
    file.seekg(0, std::ios::beg);

    std::vector<char> baserom(size);
    if (!file.read(baserom.data(), size)) {
        assert(false); // Could not read baserom
    }
    file.close();

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

        uint currentOffset = 0;
        for (const auto& asset : assets) {
            if (asset.contains("offsets")) { // Offset definition
                if (asset["offsets"].contains(gVariant)) {
                    currentOffset = asset["offsets"][gVariant];
                }
            } else if (asset.contains("path")) { // Asset definition

                if (asset.contains("variants")) {
                    if (!CONTAINS(asset["variants"], gVariant)) {
                        // This asset is not used in the current variant
                        continue;
                    }
                }


                std::filesystem::path path = gAssetsFolder;
                path = path / asset["path"];
                // std::cout << path << std::endl;

                if (shouldExtractFile(path, configModified)) {
                    if (gVerbose) {
                        std::cout << "Extracting " << path << "..." << std::endl;
                    }

                    int start = 0;
                    if (asset.contains("start")) {
                        // Apply offset to the start of the USA variant
                        start = asset["start"].get<int>() + currentOffset;
                    } else if (asset.contains("starts")) {
                        // Use start for the current variant
                        start = asset["starts"][gVariant];
                    }
                    extractFile(path, asset, start, baserom);
                }
            }
        }
    }

    if (gVerbose) {
        std::cout << "done" << std::endl;
    }
}

bool shouldExtractFile(const std::filesystem::path& path, const std::filesystem::file_time_type& configModified) {
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

void extractFile(const std::filesystem::path& path, const json& asset, const int& start, const std::vector<char>& baserom) {
    std::string type = "";
    // std::cout << asset << std::endl;
    if (asset.contains("type")) {
        type = asset["type"];
    }

    // Create the parent directory
    std::filesystem::path parentDir = std::filesystem::path(path);
    parentDir.remove_filename();
    std::filesystem::create_directories(parentDir);

    int size = 0;
    if (asset.contains("size")) { // The asset has a size and want to be extracted first.
        size = asset["size"];     // TODO can different sizes for the different variants ever occur?
    } // If an asset has no size, the extraction tool reads the baserom iself.

    std::unique_ptr<BaseAsset> assetHandler;
    if (type == "tileset") {
        assetHandler = std::make_unique<TilesetAsset>(path, start, size, asset);
    } else if (type == "animation") {
        assetHandler = std::make_unique<AnimationAsset>(path, start, size, asset);
    } else if (type == "sprite_frames") { // TODO rename to sprite_frame?
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
    } else if ( type == "map_gfx" || type == "map_layer1" || type == "map_layer2" || type == "metatiles_tile_types1" ||
               type == "metatiles_tile_types2" || type == "metatiles_tileset1" || type == "metatiles_tileset2" ||
               type == "map_mapping1" || type == "map_mapping2" || type == "tileset_mapping3" ||
               type == "map_collision" || type == "unknown") {
        assetHandler = std::make_unique<BaseAsset>(path, start, size, asset);
        // TODO implement conversions
    } else if (type == "") {
        assetHandler = std::make_unique<BaseAsset>(path, start, size, asset);
    } else {
        std::cerr << "Unimplemented type " << type << std::endl;
        std::exit(1);
    }

    assetHandler->extractBinary(baserom);
    assetHandler->convertToHumanReadable(baserom);
}