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
    u8 field_0x2;
    u8 secret;
    u8 overlayType;
    u8 storyPanelIndex;
    u8 field_0x7;
    u8 transitionTimer;
} Menu;

extern Menu gMenu;

#endif