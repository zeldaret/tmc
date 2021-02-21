#include "global.h"
#include "functions.h"
#include "screen.h"

typedef struct {
    u8 field_0x0;
    u8 field_0x1;
    u8 spritesOffset;
} struct_03000000;

extern struct_03000000 gUnk_03000000;

extern u32 gUsedPalettes;

extern void sub_0801E104();
extern void DoFade(u32, u32);

void sub_08050024() {
    sub_0801E104();
    DoFade(5, 0x80 << 1);
    return;
}

void sub_08050038(u32 arg0) {
    if ((gFadeControl.fadeType & 1) != 0) {
        gFadeControl.field_0xe = arg0;
    } else {
        gFadeControl.fadeDuration = arg0;
    }
}

void DoFade(u32 fadeType, u32 fadeSpeed) {
    gFadeControl.fadeSpeed = fadeSpeed;
    gFadeControl.fadeType = fadeType;
    gFadeControl.active = 1;
    gFadeControl.fadeDuration = 0x100;
    gFadeControl.field_0xe = 0;
    if ((gFadeControl.fadeType & 2) != 0) {
        gFadeControl.field_0x2 = 0xf8;
    } else {
        gFadeControl.field_0x2 = 0;
    }
    if ((fadeType & 8) != 0) {
        gUnk_03000000.spritesOffset = 1;
        gScreen.bg.bg1xOffset |= 0x40;
        gScreen.affine.bg2Control |= 0x40;
        gScreen.affine.bg3Control |= 0x40;
    }
    if ((fadeType & 0x10) != 0) {
        sub_0801E1B8(gFadeControl.field_0x16, gFadeControl.field_0x18);
        sub_0801E1EC(gFadeControl.field_0x12, gFadeControl.field_0x14, gFadeControl.field_0x10);
        if ((fadeType & 1) == 0) {
            gFadeControl.fadeType &= 0xfffb;
            sub_08050008();
            gUsedPalettes = 0xffffffff;
        }
    }
}

void sub_080500F4(u32 arg0) {
    gFadeControl.fadeSpeed = arg0;
    gFadeControl.fadeType ^= 1;
    gFadeControl.active = 1;
    gFadeControl.fadeDuration = 0x100;
}

void sub_08050110(u32 param_1, u32 param_2, u32 fadeType, u32 fadeSpeed) {
    if ((fadeType & 1) != 0) {
        gFadeControl.field_0x10 = 0x96;
    } else {
        gFadeControl.field_0x10 = 0;
    }
    gFadeControl.field_0x12 = param_1;
    gFadeControl.field_0x14 = param_2;
    gFadeControl.field_0x16 = 0x3f3f;
    gFadeControl.field_0x18 = 0;
    DoFade(fadeType, fadeSpeed);
}
