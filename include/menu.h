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
    u8 key;
    u8 value;
} KeySetting;

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
    KeySetting settingDict[0];
    u8 eof;
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
    u8 filler17[0x13];
    u8 unk2a;
    int field_0x2c;
} Menu;
static_assert(sizeof(Menu) == 0x30);

extern Menu gMenu;

#endif
