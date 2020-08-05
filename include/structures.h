#ifndef STRUCTURES_H
#define STRUCTURES_H

#include "global.h"
#include "entity.h"
#include "link.h"

typedef struct {
    char header[4];
    u8 saveFile;
    u8 field_0x5;
    u8 brightnessPref;
    u8 gameLanguage;
} struct_02000000;

extern struct_02000000 gUnk_02000000;

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

typedef struct {
    /*0x00*/ u8 unk0;
    /*0x01*/ u8 filler1[0x5];
    /*0x06*/ u8 unk6;
    /*0x07*/ u8 unk7;
    /*0x08*/ s8 unk8[0x10]; // ?? unclear know how large this is
} struct_02019EE0;

extern struct_02019EE0 gUnk_02019EE0;

#endif