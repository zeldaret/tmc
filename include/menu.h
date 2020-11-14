#ifndef MENU_H
#define MENU_H

#include "global.h"

typedef struct {
    u16 unk;
    u8 transitionType;
    u8 unk4;
    u8 state;
    u8 unk6;
    u8 unk7;
    u8 unk8;
    u16 unk2;
    u16 fadeInTime;
    u8 filler2[4];
    u32 filler3[3];
} MenuControls;

typedef struct {
    u8 field_0x0;
    u8 field_0x1;
    u8 field_0x2;
    u8 field_0x3;
    u8 field_0x4;
    u8 menuType;
    u8 overlayType;
    u8 storyPanelIndex;
    u16 transitionTimer;
    u16 field_0xa;
    u8* field_0xc;
    u8 unk10[2];
    u8 field_0x12;
    u8 unk13;
    u8 filler14[0x2];
    u8 unk16;
    u8 filler17[0x13];
    u8 unk2a;
    int field_0x2c;
} Menu;

extern Menu gMenu;

#endif
