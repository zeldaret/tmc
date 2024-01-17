#ifndef SCREEN_H
#define SCREEN_H

#include "global.h"
#include "fade.h"

typedef struct {
    /*0x00*/ u16 displayControl;
    /*0x02*/ u8 filler2[0x2];
    /*0x04*/ u16 unk4;
    /*0x06*/ u16 displayControlMask;
} LcdControls;

typedef struct {
    u16 control;
    u16 xOffset;
    u16 yOffset;
    u16 updated;
    void* subTileMap;
} BgSettings;

typedef struct {
    u16 control;
    s16 xOffset;
    s16 yOffset;
    u16 updated;
    void* subTileMap;
} BgAffSettings;

typedef struct {
    u16 dx;
    u16 dmx;
    u16 dy;
    u16 dmy;
    u16 xPointLeastSig;
    u16 xPointMostSig;
    u16 yPointLeastSig;
    u16 yPointMostSig;
} BgTransformationSettings;

typedef struct {
    BgTransformationSettings bg2;
    BgTransformationSettings bg3;
    u16 window0HorizontalDimensions;
    u16 window1HorizontalDimensions;
    u16 window0VerticalDimensions;
    u16 window1VerticalDimensions;
    u16 windowInsideControl;
    u16 windowOutsideControl;
    u16 mosaicSize;
    u16 layerFXControl;
    u16 alphaBlend;
    u16 layerBrightness;
} BgControls;

typedef struct {
    bool8 ready;
    bool8 readyBackup;
    u16 unused;
    u16* src;
    u16* dest;
    u32 size;
} VBlankDMA;

typedef struct {
    /*0x00*/ LcdControls lcd;
    /*0x08*/ BgSettings bg0;
    /*0x14*/ BgSettings bg1;
    /*0x20*/ BgAffSettings bg2;
    /*0x2c*/ BgAffSettings bg3;
    /*0x38*/ BgControls controls;
    /*0x6c*/ VBlankDMA vBlankDMA;
    // /*0x6d*/ u8 _6d;
    // /*0x70*/ void* _70;
    // /*0x74*/ u32 _74;
    // /*0x78*/ u32 _78;
} Screen;

typedef struct {
    s16 x;
    s16 y;
    u16 _4;
    u16 _6;
    u16 _8;
} OAMCommand;

extern Screen gScreen;
extern OAMCommand gOamCmd;

extern void sub_080ADA04(OAMCommand*, void*);

#endif // SCREEN_H
