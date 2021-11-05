#include "aif.h"
#include "util.h"

void AifAsset::convertToHumanReadable(const std::vector<char>& baserom) {
    (void)baserom;

    std::filesystem::path toolsPath = "tools";
    std::vector<std::string> cmd;
    cmd.push_back(toolsPath / "aif2pcm" / "aif2pcm");
    cmd.push_back(this->path);
    std::filesystem::path aifPath = this->path;
    aifPath.replace_extension(".aif");
    cmd.push_back(aifPath);
    check_call(cmd);
}