#ifndef OFFSETS_H
#define OFFSETS_H
#include <filesystem>
#include <fstream>
#include <string>

class OffsetCalculator {

  public:
    OffsetCalculator(const std::filesystem::path& asmOffsetsFile, const std::filesystem::path& cOffsetsFile, int baseOffset_);
    void addAsset(int start, const std::string& symbol);
    [[nodiscard]] int getLastEnd() const {
        return lastEnd;
    }
    void setLastEnd(int lastEnd_) {
        this->lastEnd = lastEnd_;
    }
  private:
    std::ofstream asmOutput;
    std::ofstream cOutput;
    int baseOffset;
    // Store the end of the previously added asset
    int lastEnd;
};

#endif