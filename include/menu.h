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
    u8 aButtonX;
    u8 aButtonY;
    u8 aButtonText;
    u8 bButtonX;
    u8 bButtonY;
    u8 bButtonText;
    u8 rButtonX;
    u8 rButtonY;
    u8 rButtonText;
    u8 settingDict[0];
} PACKED KeyButtonLayout;

extern void sub_080A70AC(const KeyButtonLayout*);

typedef struct {
    u8 field_0x0;
    u8 column_idx;
    u8 field_0x2;
    u8 field_0x3;
    u8 field_0x4;
    u8 menuType;
    u8 overlayType;
    u8 storyPanelIndex;
    u16 transitionTimer;
    u16 field_0xa;
    u8* field_0xc;
    u8 focusCoords[2];
    u8 field_0x12;
    u8 unk13;
    u8 unk14;
    u8 unk15;
    u8 unk16;
    // While struct offsets are usually loaded indirectly, this one is often loaded
    // directly in the code. This happens when you take the address off the field with '&`.
    // Perhaps they had a macro to cast this to different sized arrays.
    u8 selectMtx;
    u8 filler18[0x12];
    u8 unk2a;
    int field_0x2c;
} Menu;
static_assert(sizeof(Menu) == 0x30);

extern Menu gMenu;

#endif
