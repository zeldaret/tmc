#include "offsets.h"

OffsetCalculator::OffsetCalculator(const std::filesystem::path& outputFile, int baseOffset_)
    : output(outputFile), baseOffset(baseOffset_), lastEnd(0) {
}

void OffsetCalculator::addAsset(int start, const std::string& symbol) {
    output << "\t.equiv offset_" << symbol << ", " << start - baseOffset << std::endl;
}