// Copyright (c) 2018 huderlem

#ifndef OPTIONS_H
#define OPTIONS_H

#include <stdbool.h>

struct GbaToPngOptions {
    char* paletteFilePath;
    int bitDepth;
    bool hasTransparency;
    int width;
    int tileWidth;
    int tileHeight;
};

struct PngToGbaOptions {
    int numTiles;
    int bitDepth;
    int tileWidth;
    int tileHeight;
};

#endif // OPTIONS_H
