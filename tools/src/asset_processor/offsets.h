#ifndef OFFSETS_H
#define OFFSETS_H
#include <filesystem>
#include <fstream>
#include <string>

class OffsetCalculator {

  public:
    OffsetCalculator(std::filesystem::path offsetsFile, int baseOffset);
    void addAsset(int start, std::string symbol);

  private:
    std::ofstream output;
    int baseOffset;
};

#endif