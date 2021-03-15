#ifndef STRUCTURES_H
#define STRUCTURES_H

#include "global.h"
#include "entity.h"
#include "player.h"

typedef struct {
    int signature;
    u8 saveFileId;
    u8 messageSpeed;
    u8 brightnessPref;
    u8 gameLanguage;
    u8 name[6];
    u8 _e;
    u8 _f;
} struct_02000000;
#define gUnk_02000000 ((struct_02000000*)(0x2000000))
// extern struct_02000000 gUnk_02000000;

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02[0xE];
} struct_02000040;

extern struct_02000040 gUnk_02000040;

typedef struct {
    s32 signature;
    u8 field_0x4;
    u8 listenForKeyPresses;
} struct_02000010;

extern struct_02000010 gUnk_02000010;

typedef struct {
    s32 frameCount; // regular frame count? does anything reset it?
    u8 field_0x4[0x4];
    bool8 transitioningOut;
    u8 transitionType; // transition when changing areas
    u16 field_0xa;     // seems to be a tile type
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
    u16 rButtonX;
    u8 filler1C[0x4];
    u16 rButtonY;
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
extern BGBuffer gBG2Buffer;
static_assert(sizeof(BGBuffer) == 0x800);

/*
typedef struct {
    u16 filler0[0x800];
} BG3Buffer;
extern BG3Buffer gBG3Buffer;
static_assert(sizeof(BG3Buffer) == 0x1000);
*/

extern u8 gUnk_02022740[];
extern u8 gUnk_02034490[];

#endif
