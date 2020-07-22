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
    u16 field_0x1;
    u8 field_0x3;
    u8 menuType;
    u8 overlayType;
    u8 storyPanelIndex;
    u16 transitionTimer;
    u8 field_0xa[8];
    u8 field_0x11;
    u8 field_0x12[0x16];
    u32 field_0x2c;
} Menu;

extern Menu gMenu;
#endif