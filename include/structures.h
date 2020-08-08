#ifndef STRUCTURES_H
#define STRUCTURES_H

#include "global.h"
#include "entity.h"
#include "player.h"

typedef struct {
    char header[4];
    u8 saveFile;
    u8 field_0x5;
    u8 brightnessPref;
    u8 gameLanguage;
} struct_02000000;

typedef struct {
    u16 field_0x0;
    u16 field_0x2;
    u16 field_0x4;
    u16 field_0x6;
    u16 field_0x8;
    u16 field_0xa;
} struct_0807D1C4;

#define gUnk_02000000 ((struct_02000000*)(0x2000000))
//extern struct_02000000 gUnk_02000000;

typedef struct {
    u8 filler0[0x4];
    u8 field_0x4;
    u8 field_0x5;
} struct_02000010;

extern struct_02000010 gUnk_02000010;

typedef struct {
    /*0x000*/ u8 filler0[0x6];
    /*0x006*/ u8 unk6;
    /*0x007*/ u8 unk7;
    /*0x008*/ u8 unk8;
    /*0x009*/ u8 field_0x9[0x34];
    /*0x040*/ u32 windcrests;
    /*0x044*/ u8 filler44[0xC];
    /*0x050*/ u32 unk50;
    /*0x054*/ u8 filler54[0x54];
    /*0x0A8*/ Stats stats;
    /*0x0D0*/ u8 filler4[0x3c0];
    /*0x490*/ u32 unk490;
} struct_02002A40;

extern struct_02002A40 gUnk_02002A40;

typedef struct {
    u32 frameCount;    // regular frame count? does anything reset it?
    u8 field_0x4[0x4];
    bool8 transitioningOut;
    u8 transitionType; // transition when changing areas
    u8 field_0xa;      // seems to be a tile type
    u8 field_0xb;
    u8 areaID;
    u8 roomID;
    u8 playerState;
    u8 field_0xf;
    Coords playerStartPos;
    u8 playerLayer;
    u8 field_0x13;
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
    u8 field_0x4c[0x60];
    u16 field_0xac;
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
    u8 playerLayer;
    u8 field_0xe;
    u8 playerState;
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