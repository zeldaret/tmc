#ifndef BG_H
#define BG_H

#include "global.h"
#include "fade.h"

typedef struct {
    u16 displayControl;
    u8 filler2[0x2];
    u16 unk4;
    u16 displayControlMask;
} LcdControls;

typedef struct {
    u16 control;
    u16 xOffset;
    u16 yOffset;
    u16 updated;
    void* tilemap;
} BgSettings;

typedef struct {
    u16 control;
    s16 xOffset;
    s16 yOffset;
    u16 updated;
    void* tilemap;
} BgAffSettings;

typedef struct {
    u16 bg2dx;
    u16 bg2dmx;
    u16 bg2dy;
    u16 bg2dmy;
    u16 bg2xPointLeastSig;
    u16 bg2xPointMostSig;
    u16 bg2yPointLeastSig;
    u16 bg2yPointMostSig;
    u16 bg3dx;
    u16 bg3dmx;
    u16 bg3dy;
    u16 bg3dmy;
    u16 bg3xPointLeastSig;
    u16 bg3xPointMostSig;
    u16 bg3yPointLeastSig;
    u16 bg3yPointMostSig;
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
    /*0x00*/ LcdControls lcd;
    /*0x08*/ BgSettings bg0;
    /*0x14*/ BgSettings bg1;
    /*0x20*/ BgAffSettings bg2;
    /*0x2c*/ BgAffSettings bg3;
    /*0x38*/ BgControls controls;
    /*0x6c*/ u8 _6c;
    /*0x6d*/ u8 _6d;
    /*0x70*/ u32 _70;
    /*0x74*/ u32 _74;
    /*0x78*/ u32 _78;
} Screen;

struct OAMCommand {
    u16 x;
    u16 y;
    u16 _4;
    u16 _6;
    u16 _8;
} extern gOamCmd;

extern BgControls gBgControls;
extern Screen gScreen;

#endif
