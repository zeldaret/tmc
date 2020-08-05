#ifndef STRUCTURES_H
#define STRUCTURES_H

#include "global.h"
#include "entity.h"
#include "link.h"

typedef struct {
    u8 filler[8];
    u8 field_0x8;
    u8 field_0x9[0x34];
    u32 windcrests;
    u8 field_0x44[0x64];
    Stats stats;
} struct_02002A40;

extern struct_02002A40 gUnk_02002A40;

typedef struct {
    u16 frameCount; // regular frame count? does anything reset it?
    u8 field_0x2[6];
    bool8 transitioningOut;
    u8 transitionType; // transition when changing areas
    u8 field_0xa;
    u8 field_0xb;
    u8 areaID;
    u8 roomID;
    u8 animState;
    u8 field_0xf;
    Coords startPos;
    u16 collisionLayer;
    u8 field_0x14[0xa];
    u16 field_0x20;
    u16 field_0x22;
    u8 field_0x24[0x14];
    u8 field_0x38;
    u8 field_0x39;
    u16 field_0x3a;
    u8 field_0x3c;
    u8 filler[6];
    u16 field_0x44;
    u16 field_0x46;
    u16 field_0x48;
    u16 field_0x4a;
} ScreenTransition;

extern ScreenTransition gScreenTransition;

typedef struct {
    u16 transitionType;
    u8 field_0x2[4];
    s16 playerXPos;
    s16 playerYPos;
    u8 field_0xa;
    u8 areaID;
    u8 roomID;
    u8 collisionLayer;
    u8 field_0xe;
    u8 playerAnimState;
    u16 transitionSFX;
} ScreenTransitionData;

#endif