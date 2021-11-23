#ifndef OFFSETS_H
#define OFFSETS_H
#include <filesystem>
#include <fstream>
#include <string>

class OffsetCalculator {

  public:
    OffsetCalculator(const std::filesystem::path& offsetsFile, int baseOffset_);
    void addAsset(int start, const std::string& symbol);

  private:
    std::ofstream output;
    int baseOffset;
};

#endif