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
    /*0x00*/ u8 field_0x0;
    /*0x01*/ u8 column_idx;
    /*0x02*/ u8 field_0x2;
    /*0x03*/ u8 field_0x3;
    /*0x04*/ u8 field_0x4;
    /*0x05*/ u8 menuType;
    /*0x06*/ u8 overlayType;
    /*0x07*/ u8 storyPanelIndex;
    /*0x08*/ u16 transitionTimer;
    /*0x0a*/ u16 field_0xa;
    /*0x0c*/ u8* field_0xc;
} Menu;

typedef struct {
    /*0x00*/ Menu base;
    /*0x10*/ union {
        s32 i;
        u16 h[2];
        s16 sh[2];
        u8 a[4];
    } unk10;
    /*0x12*/ // u8 field_0x12;
    /*0x13*/ // u8 unk13;
    /*0x14*/ u8 unk14;
    /*0x15*/ u8 unk15;
    /*0x16*/ u8 unk16;
    /*    */ // While struct offsets are usually loaded indirectly, this one is often loaded
    /*    */ // directly in the code. This happens when you take the address off the field with '&`.
    /*    */ // Perhaps they had a macro to cast this to different sized arrays.
    /*0x17*/ u8 selectMtx;
    /*0x18*/ u16 unk18;
    /*0x1a*/ union SplitHWord unk1a;
    /*0x1c*/ u8 unk1c;
    /*0x1d*/ u8 unk1d;
    /*0x1e*/ u8 unk1e;
    /*0x1f*/ s8 unk1f;
    /*0x20*/ u8 unk20;
    /*0x21*/ u8 unk21;
    /*0x22*/ u8 filler22[6];
    /*0x28*/ u8 unk28;
    /*0x29*/ u8 unk29;
    /*0x2a*/ u8 unk2a;
    /*0x2b*/ u8 unk2b;
    /*0x2c*/ s8 unk2c;
    /*0x2d*/ u8 unk2d;
    /*0x2e*/ union SplitHWord unk2e;
} GenericMenu;
static_assert(sizeof(GenericMenu) == 0x30);

typedef struct {
    /*0x00*/ Menu base;
    /*0x10*/ union SplitWord unk10;
    /*0x14*/ u8 filler14[4];
    /*0x18*/ u16 unk18;
    /*0x1a*/ u16 unk1a;
    /*0x1c*/ u8 filler1c[14];
    /*0x2a*/ u8 unk2a;
    /*0x2b*/ u8 filler2b[1];
    /*0x2c*/ s8 unk2c;
    /*0x2d*/ u8 filler2d[2];
    /*0x2f*/ s8 unk2f;
} KinstoneMenu;

typedef struct {
    /*0x00*/ Menu base;
    /*0x10*/ union {
        u16 h[2];
        u8 a[4];
    } unk10;
    /*0x14*/ u8 filler14[6];
    /*0x1a*/ u8 unk1a;
    /*0x1b*/ u8 filler1b[1];
    /*0x1c*/ u8 figure_idx;
    /*0x1d*/ u8 unk1d;
    /*0x1e*/ u8 unk1e;
    /*0x1f*/ s8 unk1f;
    /*0x20*/ u8 unk20;
    /*0x21*/ bool8 duplicate;
    /*0x22*/ u8 filler22[0xc];
    /*0x2e*/ u16 unk2e;
} FigurineMenu;

typedef struct {
    /*0x00*/ Menu base;
    /*0x10*/ u8 items[17]; // unsure about size
} PauseMenu;

extern Menu gMenu;
#define gGenericMenu (*(GenericMenu*)&gMenu)
#define gKinstoneMenu (*(KinstoneMenu*)&gMenu)
#define gFigurineMenu (*(FigurineMenu*)&gMenu)
#define gPauseMenu (*(PauseMenu*)&gMenu)

extern u8 gUpdateVisibleTiles;

#endif // MENU_H
