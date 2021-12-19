#include "global.h"
#include "functions.h"
#include "screen.h"
#include "utils.h"

typedef struct {
    u8 field_0x0;
    u8 field_0x1;
    u8 spritesOffset;
} struct_03000000;

extern struct_03000000 gUnk_03000000;

extern u32 gUsedPalettes;
extern u16 gPaletteBuffer[];

// function pointer to overlay (0x03005e98) in ram calls rom function MakeFadeBuff256
extern u32 gMakeFadeBuff256;
typedef void (*fptrMakeFadeBuff256)(u8*, u8*, u16, u8);

void sub_0804FF84(u32 arg0) {
    gSaveHeader->brightnessPref = arg0;
    gUsedPalettes = 0xffffffff;
}

void FadeMain() {
    fptrMakeFadeBuff256 func;
    u32 usedPalettesTmp, palIdx;

    struct_020354C0* ptrUnk = gUnk_020354C0;
    usedPalettesTmp = gUsedPalettes;
    gUsedPalettes = 0;
    palIdx = 0;

    while (usedPalettesTmp != 0) {
        if ((usedPalettesTmp & 1) == 1) {
            func = (fptrMakeFadeBuff256)&gMakeFadeBuff256;
            func(&((u8*)gPaletteBuffer)[palIdx], &PAL_RAM[palIdx], ptrUnk->unk2, ptrUnk->unk1);
        }
        palIdx += 0x20;

        ptrUnk++;
        usedPalettesTmp /= 2;
    }
}

void sub_0804FFE4() {
    MemClear(&gFadeControl, sizeof(gFadeControl));
    MemClear(&gUnk_020354C0, sizeof(gUnk_020354C0));
    gFadeControl.mask = 0xffffffff;
}

void sub_08050008() {
    MemClear(&gUnk_020354C0, sizeof(gUnk_020354C0));
    gFadeControl.mask = 0xFFFFFFFF;
}

void sub_08050024() {
    sub_0801E104();
    DoFade(5, 256);
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
    if (gFadeControl.fadeType & 2) {
        gFadeControl.field_0x2 = 0xf8;
    } else {
        gFadeControl.field_0x2 = 0;
    }
    if (fadeType & 8) {
        gUnk_03000000.spritesOffset = 1;
        gScreen.bg1.control |= BGCNT_MOSAIC;
        gScreen.bg2.control |= BGCNT_MOSAIC;
        gScreen.bg3.control |= BGCNT_MOSAIC;
    }
    if (fadeType & 0x10) {
        sub_0801E1B8(gFadeControl.field_0x16, gFadeControl.field_0x18);
        sub_0801E1EC(gFadeControl.field_0x12, gFadeControl.field_0x14, gFadeControl.field_0x10);
        if ((fadeType & 1) == 0) {
            gFadeControl.fadeType &= ~4;
            sub_08050008();
            gUsedPalettes = 0xffffffff;
        }
    }
}

void sub_080500F4(u32 arg0) {
    gFadeControl.fadeSpeed = arg0;
    gFadeControl.fadeType ^= 1;
    gFadeControl.active = 1;
    gFadeControl.fadeDuration = 256;
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
