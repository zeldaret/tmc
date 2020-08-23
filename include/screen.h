#ifndef BG_H
#define BG_H

#include "global.h"

typedef struct {
    u16 displayControl;
    u8 filler2[0x2];
    u16 unk4;
    u16 unk6;
} LcdControls;

typedef struct {
    u16 bg0Control;
    u16 bg1Control;
    u16 bg2Control;
    u16 bg3Control;
    u16 bg0xOffset;
    u16 bg0yOffset;
    u16 bg1xOffset;
    u16 bg1yOffset;
    u16 bg2xOffset;
    u16 bg2yOffset;
    u16 bg3xOffset;
    u16 bg3yOffset;
} BgSettings;

typedef struct {
    u16 bg2Control;
    u16 bg2xOffset;
    u16 bg2yOffset;
    u16 unk;
    u16 unk2;
    u16 unk3;
    u16 bg3Control;
    u16 bg3xOffset;
    u16 bg3yOffset;
    u16 unk4;
    u32 unk5;
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
    /*0x08*/ BgSettings bg;
    /*0x20*/ BgAffSettings affine;
    /*0x38*/ BgControls controls;
} Screen;

extern BgControls gBgControls;
extern Screen gScreen;

#endif