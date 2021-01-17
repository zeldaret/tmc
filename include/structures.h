#ifndef STRUCTURES_H
#define STRUCTURES_H

#include "global.h"
#include "entity.h"
#include "player.h"

typedef struct {
    char header[4];
    u8 saveFileId;
    u8 messageSpeed;
    u8 brightnessPref;
    u8 gameLanguage;
} struct_02000000;

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02[0xE];
} struct_02000040;

extern struct_02000040 gUnk_02000040;

typedef struct {
    u16 field_0x0;
    u16 field_0x2;
    u16 field_0x4;
    u16 field_0x6;
    u16 field_0x8;
    u16 field_0xa;
} struct_0807D1C4;

#define gUnk_02000000 ((struct_02000000*)(0x2000000))
// extern struct_02000000 gUnk_02000000;

typedef struct {
    u8 filler0[0x4];
    u8 field_0x4;
    u8 listenForKeyPresses;
} struct_02000010;

extern struct_02000010 gUnk_02000010;

typedef struct {
    /*0x000*/ u8 filler0[0x2];
    /*0x002*/ u8 messageSpeed;
    /*0x003*/ u8 brightnessPref;
    /*0x004*/ u8 filler4[0x2];
    /*0x006*/ u8 unk6;
    /*0x007*/ u8 unk7;
    /*0x008*/ u8 unk8;
    /*0x009*/ u8 field_0x9[0x34];
    /*0x040*/ u32 windcrests;
    /*0x044*/ u8 filler44[0xC];
    /*0x050*/ u32 unk50;
    /*0x054*/ u8 filler54[0x2C];
    /*0x080*/ u8 playerName[6];
    /*0x086*/ u8 filler86[0x22];
    /*0x0A8*/ Stats stats;
    /*0x0D0*/ u8 fillerD0[0x3c0];
    /*0x490*/ u32 unk490;
    /*0x494*/ u8 filler494[0x20];
} SaveFile;

extern SaveFile gUnk_02002A40;

typedef struct {
    u32 frameCount; // regular frame count? does anything reset it?
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
    u16 field_0xae;
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
    /*0x01*/ u8 unk1;
    /*0x02*/ u8 unk2;
    /*0x03*/ u8 unk3;
    /*0x04*/ u8 filler4[0x2];
    /*0x06*/ u8 unk6;
    /*0x07*/ u8 unk7;
    /*0x08*/ s8 unk8[0xE20];
} struct_02019EE0;

extern struct_02019EE0 gUnk_02019EE0;

typedef struct {
    u8 active;
    u8 field_0x1;
    u8 field_0x2;
    u8 field_0x3;
    u32 field_0x4;
    u16 fadeType;  // fade in or out, are there others?
    u16 fadeSpeed; // subtracted from duration
    u16 fadeDuration;
    u16 field_0xe;
    s16 field_0x10;
    s16 field_0x12;
    s16 field_0x14;
    u16 field_0x16;
    u16 field_0x18;
} struct_03000FD0;

extern struct_03000FD0 gFadeControl;

typedef struct {
    u8 filler0[0x1A];
    u16 unk1A;
    u8 filler1C[0x4];
    u16 unk20;
    u8 filler22[0x2];
    u8 ezloNagFuncIndex;
    u8 filler25[0x30F];
} struct_0200AF00;

extern struct_0200AF00 gUnk_0200AF00;

typedef struct {
    u8 unk0;
} struct_02024490;

extern struct_02024490 gUnk_02024490;

typedef struct {
    u32 unk_00;
    u16 unk_04;
    u8 unk_06;
    u8 unk_07;
    u8 unk_08;
} struct_02033280;

extern struct_02033280 gUnk_02033280;

typedef struct {
    u16 unk_00;
    u8 unk_02[0xE];
} struct_02034480;
extern struct_02034480 gUnk_02034480;

typedef struct {
    u32 flag : 12;
    u32 flagType : 4;
    u32 type : 4;
    u32 unk : 1;
    union {
        struct {
            u16 a;
            u16 b;
        } indices;
        void (*func)(Entity*);
    } data;
} Dialog;

typedef struct {
    u8 filler0[0x29C];
    u16 unk29C;
    u8 filler29E[0x562];
} BGBuffer;
extern BGBuffer gBG0Buffer;
extern BGBuffer gBG1Buffer;
static_assert(sizeof(BGBuffer) == 0x800);

/*
typedef struct {
    u16 filler0[0x800];
} BG3Buffer;
extern BG3Buffer gBG3Buffer;
static_assert(sizeof(BG3Buffer) == 0x1000);
*/

extern u8 gUnk_02022740[];
extern u8 gUnk_02034490;

#endif
