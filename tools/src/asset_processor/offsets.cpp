#include "offsets.h"

OffsetCalculator::OffsetCalculator(const std::filesystem::path& asmOutputFile, const std::filesystem::path& cOutputFile, int baseOffset_)
    : asmOutput(asmOutputFile), cOutput(cOutputFile), baseOffset(baseOffset_), lastEnd(0) {
}

void OffsetCalculator::addAsset(int start, const std::string& symbol) {
    asmOutput << "\t.equiv offset_" << symbol << ", " << start - baseOffset << std::endl;
    cOutput << "#define offset_" << symbol << " " << start - baseOffset << std::endl;
}