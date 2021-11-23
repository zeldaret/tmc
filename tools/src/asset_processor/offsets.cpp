#include "offsets.h"

OffsetCalculator::OffsetCalculator(std::filesystem::path outputFile, int baseOffset) : baseOffset(baseOffset) {
    output = std::ofstream(outputFile);
}

void OffsetCalculator::addAsset(int start, std::string symbol) {
    this->output << "\t.equiv offset_" << symbol << ", " << start - this->baseOffset << std::endl;
}