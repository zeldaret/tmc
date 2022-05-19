#ifndef SPRITE_H
#define SPRITE_H

#include "global.h"

typedef struct {
    u8 index;
    u8 duration;
    union {
        u8 raw;
        struct {
            u8 unk : 6;
            u8 hFlip : 1;
            u8 vFlip : 1;
        } PACKED b;
    } PACKED spriteSettings;
    union {
        u8 raw;
        struct {
            u8 extraFrameIndex : 6;
            u8 unk : 1;
            u8 endOfAnimation : 1;
        } PACKED b;
    } PACKED frameSettings;
} PACKED Frame;

typedef struct {
    u8 numGfxTiles;
    u16 gfxTileIndex;
} FrameGfxData;

typedef struct {
    u16 palette;
    u8 animIndex;
    u8 unk;
} SpriteLoadData;

#endif // SPRITE_H
