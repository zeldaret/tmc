// Copyright (c) 2015 YamaArashi

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <stdbool.h>
#include "global.h"
#include "gfx.h"
#include "util.h"

#define GET_GBA_PAL_RED(x) (((x) >> 0) & 0x1F)
#define GET_GBA_PAL_GREEN(x) (((x) >> 5) & 0x1F)
#define GET_GBA_PAL_BLUE(x) (((x) >> 10) & 0x1F)

#define SET_GBA_PAL(r, g, b) (((b) << 10) | ((g) << 5) | (r))

#define UPCONVERT_BIT_DEPTH(x) (((x)*255) / 31)

#define DOWNCONVERT_BIT_DEPTH(x) ((x) / 8)

static void AdvanceTilePosition(int* subTileX, int* subTileY, int* tileX, int* tileY, int tilesWide,
                                    int tileWidth, int tileHeight) {
    (*subTileX)++;
    if (*subTileX == tileWidth) {
        *subTileX = 0;
        (*subTileY)++;
        if (*subTileY == tileHeight) {
            *subTileY = 0;
            (*tileX)++;
            if (*tileX == tilesWide) {
                *tileX = 0;
                (*tileY)++;
            }
        }
    }
}

static void ConvertFromTiles1Bpp(unsigned char* src, unsigned char* dest, int numTiles, int tilesWide,
                                 int tileWidth, int tileHeight, bool invertColors) {
    int subTileX = 0;
    int subTileY = 0;
    int tileX = 0;
    int tileY = 0;
    int pitch = tilesWide * tileWidth;

    for (int i = 0; i < numTiles; i++) {
        for (int j = 0; j < 8; j++) {
            int destY = (tileY * tileHeight + subTileY) * 8 + j;
            int destX = tileX * tileWidth + subTileX;
            unsigned char srcPixelOctet = *src++;
            unsigned char* destPixelOctet = &dest[destY * pitch + destX];

            for (int k = 0; k < 8; k++) {
                *destPixelOctet <<= 1;
                *destPixelOctet |= (srcPixelOctet & 1) ^ invertColors;
                srcPixelOctet >>= 1;
            }
        }

        AdvanceTilePosition(&subTileX, &subTileY, &tileX, &tileY, tilesWide, tileWidth,
                                tileHeight);
    }
}

static void ConvertFromTiles4Bpp(unsigned char* src, unsigned char* dest, int numTiles, int tilesWide,
                                 int tileWidth, int tileHeight, bool invertColors) {
    int subTileX = 0;
    int subTileY = 0;
    int tileX = 0;
    int tileY = 0;
    int pitch = (tilesWide * tileWidth) * 4;

    for (int i = 0; i < numTiles; i++) {
        for (int j = 0; j < 8; j++) {
            int destY = (tileY * tileHeight + subTileY) * 8 + j;

            for (int k = 0; k < 4; k++) {
                int destX = (tileX * tileWidth + subTileX) * 4 + k;
                unsigned char srcPixelPair = *src++;
                unsigned char leftPixel = srcPixelPair & 0xF;
                unsigned char rightPixel = srcPixelPair >> 4;

                if (invertColors) {
                    leftPixel = 15 - leftPixel;
                    rightPixel = 15 - rightPixel;
                }

                dest[destY * pitch + destX] = (leftPixel << 4) | rightPixel;
            }
        }

        AdvanceTilePosition(&subTileX, &subTileY, &tileX, &tileY, tilesWide, tileWidth,
                                tileHeight);
    }
}

static void ConvertFromTiles8Bpp(unsigned char* src, unsigned char* dest, int numTiles, int tilesWide,
                                 int tileWidth, int tileHeight, bool invertColors) {
    int subTileX = 0;
    int subTileY = 0;
    int tileX = 0;
    int tileY = 0;
    int pitch = (tilesWide * tileWidth) * 8;

    for (int i = 0; i < numTiles; i++) {
        for (int j = 0; j < 8; j++) {
            int destY = (tileY * tileHeight + subTileY) * 8 + j;

            for (int k = 0; k < 8; k++) {
                int destX = (tileX * tileWidth + subTileX) * 8 + k;
                unsigned char srcPixel = *src++;

                if (invertColors)
                    srcPixel = 255 - srcPixel;

                dest[destY * pitch + destX] = srcPixel;
            }
        }

        AdvanceTilePosition(&subTileX, &subTileY, &tileX, &tileY, tilesWide, tileWidth,
                                tileHeight);
    }
}

static void ConvertToTiles1Bpp(unsigned char* src, unsigned char* dest, int numTiles, int tilesWide,
                               int tileWidth, int tileHeight, bool invertColors) {
    int subTileX = 0;
    int subTileY = 0;
    int tileX = 0;
    int tileY = 0;
    int pitch = tilesWide * tileWidth;

    for (int i = 0; i < numTiles; i++) {
        for (int j = 0; j < 8; j++) {
            int srcY = (tileY * tileHeight + subTileY) * 8 + j;
            int srcX = tileX * tileWidth + subTileX;
            unsigned char srcPixelOctet = src[srcY * pitch + srcX];
            unsigned char* destPixelOctet = dest++;

            for (int k = 0; k < 8; k++) {
                *destPixelOctet <<= 1;
                *destPixelOctet |= (srcPixelOctet & 1) ^ invertColors;
                srcPixelOctet >>= 1;
            }
        }

        AdvanceTilePosition(&subTileX, &subTileY, &tileX, &tileY, tilesWide, tileWidth,
                                tileHeight);
    }
}

static void ConvertToTiles4Bpp(unsigned char* src, unsigned char* dest, int numTiles, int tilesWide,
                               int tileWidth, int tileHeight, bool invertColors) {
    int subTileX = 0;
    int subTileY = 0;
    int tileX = 0;
    int tileY = 0;
    int pitch = (tilesWide * tileWidth) * 4;

    for (int i = 0; i < numTiles; i++) {
        for (int j = 0; j < 8; j++) {
            int srcY = (tileY * tileHeight + subTileY) * 8 + j;

            for (int k = 0; k < 4; k++) {
                int srcX = (tileX * tileWidth + subTileX) * 4 + k;
                unsigned char srcPixelPair = src[srcY * pitch + srcX];
                unsigned char leftPixel = srcPixelPair >> 4;
                unsigned char rightPixel = srcPixelPair & 0xF;

                if (invertColors) {
                    leftPixel = 15 - leftPixel;
                    rightPixel = 15 - rightPixel;
                }

                *dest++ = (rightPixel << 4) | leftPixel;
            }
        }

        AdvanceTilePosition(&subTileX, &subTileY, &tileX, &tileY, tilesWide, tileWidth,
                                tileHeight);
    }
}

static void ConvertToTiles8Bpp(unsigned char* src, unsigned char* dest, int numTiles, int tilesWide,
                               int tileWidth, int tileHeight, bool invertColors) {
    int subTileX = 0;
    int subTileY = 0;
    int tileX = 0;
    int tileY = 0;
    int pitch = (tilesWide * tileWidth) * 8;

    for (int i = 0; i < numTiles; i++) {
        for (int j = 0; j < 8; j++) {
            int srcY = (tileY * tileHeight + subTileY) * 8 + j;

            for (int k = 0; k < 8; k++) {
                int srcX = (tileX * tileWidth + subTileX) * 8 + k;
                unsigned char srcPixel = src[srcY * pitch + srcX];

                if (invertColors)
                    srcPixel = 255 - srcPixel;

                *dest++ = srcPixel;
            }
        }

        AdvanceTilePosition(&subTileX, &subTileY, &tileX, &tileY, tilesWide, tileWidth,
                                tileHeight);
    }
}

void ReadImage(char* path, int tilesWidth, int bitDepth, int tileWidth, int tileHeight, struct Image* image,
               bool invertColors) {
    int tileSize = bitDepth * 8;

    int fileSize;
    unsigned char* buffer = ReadWholeFile(path, &fileSize);

    int numTiles = fileSize / tileSize;

    int tilesHeight = (numTiles + tilesWidth - 1) / tilesWidth;

    if (tilesWidth % tileWidth != 0)
        FATAL_ERROR("The width in tiles (%d) isn't a multiple of the specified tile width (%d)", tilesWidth,
                    tileWidth);

    if (tilesHeight % tileHeight != 0)
        FATAL_ERROR("The height in tiles (%d) isn't a multiple of the specified tile height (%d)", tilesHeight,
                    tileHeight);

    image->width = tilesWidth * 8;
    image->height = tilesHeight * 8;
    image->bitDepth = bitDepth;
    image->pixels = calloc(tilesWidth * tilesHeight, tileSize);

    if (image->pixels == NULL)
        FATAL_ERROR("Failed to allocate memory for pixels.\n");

    int tilesWide = tilesWidth / tileWidth;

    switch (bitDepth) {
        case 1:
            ConvertFromTiles1Bpp(buffer, image->pixels, numTiles, tilesWide, tileWidth, tileHeight,
                                 invertColors);
            break;
        case 4:
            ConvertFromTiles4Bpp(buffer, image->pixels, numTiles, tilesWide, tileWidth, tileHeight,
                                 invertColors);
            break;
        case 8:
            ConvertFromTiles8Bpp(buffer, image->pixels, numTiles, tilesWide, tileWidth, tileHeight,
                                 invertColors);
            break;
    }

    free(buffer);
}

void WriteImage(char* path, int numTiles, int bitDepth, int tileWidth, int tileHeight, struct Image* image,
                bool invertColors) {
    int tileSize = bitDepth * 8;

    if (image->width % 8 != 0)
        FATAL_ERROR("The width in pixels (%d) isn't a multiple of 8.\n", image->width);

    if (image->height % 8 != 0)
        FATAL_ERROR("The height in pixels (%d) isn't a multiple of 8.\n", image->height);

    int tilesWidth = image->width / 8;
    int tilesHeight = image->height / 8;

    if (tilesWidth % tileWidth != 0)
        FATAL_ERROR("The width in tiles (%d) isn't a multiple of the specified tile width (%d)", tilesWidth,
                    tileWidth);

    if (tilesHeight % tileHeight != 0)
        FATAL_ERROR("The height in tiles (%d) isn't a multiple of the specified tile height (%d)", tilesHeight,
                    tileHeight);

    int maxNumTiles = tilesWidth * tilesHeight;

    if (numTiles == 0)
        numTiles = maxNumTiles;
    else if (numTiles > maxNumTiles)
        FATAL_ERROR("The specified number of tiles (%d) is greater than the maximum possible value (%d).\n", numTiles,
                    maxNumTiles);

    int bufferSize = numTiles * tileSize;
    unsigned char* buffer = malloc(bufferSize);

    if (buffer == NULL)
        FATAL_ERROR("Failed to allocate memory for pixels.\n");

    int tilesWide = tilesWidth / tileWidth;

    switch (bitDepth) {
        case 1:
            ConvertToTiles1Bpp(image->pixels, buffer, numTiles, tilesWide, tileWidth, tileHeight,
                               invertColors);
            break;
        case 4:
            ConvertToTiles4Bpp(image->pixels, buffer, numTiles, tilesWide, tileWidth, tileHeight,
                               invertColors);
            break;
        case 8:
            ConvertToTiles8Bpp(image->pixels, buffer, numTiles, tilesWide, tileWidth, tileHeight,
                               invertColors);
            break;
    }

    WriteWholeFile(path, buffer, bufferSize);

    free(buffer);
}

void FreeImage(struct Image* image) {
    free(image->pixels);
    image->pixels = NULL;
}

void ReadGbaPalette(char* path, struct Palette* palette) {
    int fileSize;
    unsigned char* data = ReadWholeFile(path, &fileSize);

    if (fileSize % 2 != 0)
        FATAL_ERROR("The file size (%d) is not a multiple of 2.\n", fileSize);

    palette->numColors = fileSize / 2;

    for (int i = 0; i < palette->numColors; i++) {
        uint16_t paletteEntry = (data[i * 2 + 1] << 8) | data[i * 2];
        palette->colors[i].red = UPCONVERT_BIT_DEPTH(GET_GBA_PAL_RED(paletteEntry));
        palette->colors[i].green = UPCONVERT_BIT_DEPTH(GET_GBA_PAL_GREEN(paletteEntry));
        palette->colors[i].blue = UPCONVERT_BIT_DEPTH(GET_GBA_PAL_BLUE(paletteEntry));
    }

    free(data);
}

void WriteGbaPalette(char* path, struct Palette* palette) {
    FILE* fp = fopen(path, "wb");

    if (fp == NULL)
        FATAL_ERROR("Failed to open \"%s\" for writing.\n", path);

    for (int i = 0; i < palette->numColors; i++) {
        unsigned char red = DOWNCONVERT_BIT_DEPTH(palette->colors[i].red);
        unsigned char green = DOWNCONVERT_BIT_DEPTH(palette->colors[i].green);
        unsigned char blue = DOWNCONVERT_BIT_DEPTH(palette->colors[i].blue);

        uint16_t paletteEntry = SET_GBA_PAL(red, green, blue);

        fputc(paletteEntry & 0xFF, fp);
        fputc(paletteEntry >> 8, fp);
    }

    fclose(fp);
}
