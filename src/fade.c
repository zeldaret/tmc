#include "global.h"
#include "structures.h"
#include "functions.h"
#include "screen.h"
#include "utils.h"

static u32 sub_080501C0(FadeControl* ctl);
static u32 sub_08050230(FadeControl* ctl);
static u32 sub_080502A4(FadeControl* ctl);

extern u32 gUsedPalettes;
extern u16 gPaletteBuffer[];
extern u16 gUnk_080FC3C4[];

// function pointer to overlay (0x03005e98) in ram calls rom function MakeFadeBuff256
extern u32 gMakeFadeBuff256;
typedef void (*fptrMakeFadeBuff256)(u8*, u8*, u16, u8);

void SetBrightness(u32 arg0) {
    gSaveHeader->brightnessPref = arg0;
    gUsedPalettes = 0xffffffff;
}

void FadeVBlank(void) {
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
        usedPalettesTmp >>= 1;
    }
}

void InitFade(void) {
    MemClear(&gFadeControl, sizeof(gFadeControl));
    MemClear(&gUnk_020354C0, sizeof(gUnk_020354C0));
    gFadeControl.mask = 0xffffffff;
}

void sub_08050008(void) {
    MemClear(&gUnk_020354C0, sizeof(gUnk_020354C0));
    gFadeControl.mask = 0xFFFFFFFF;
}

static void sub_08050024(void) {
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

void DoFade(u32 type, u32 speed) {
    gFadeControl.fadeSpeed = speed;
    gFadeControl.fadeType = type;
    gFadeControl.active = 1;
    gFadeControl.fadeDuration = 0x100;
    gFadeControl.field_0xe = 0;
    if (gFadeControl.fadeType & 2) {
        gFadeControl.field_0x2 = 0xf8;
    } else {
        gFadeControl.field_0x2 = 0;
    }
    if (type & 8) {
        gUnk_03000000.spritesOffset = 1;
        gScreen.bg1.control |= BGCNT_MOSAIC;
        gScreen.bg2.control |= BGCNT_MOSAIC;
        gScreen.bg3.control |= BGCNT_MOSAIC;
    }
    if (type & 0x10) {
        sub_0801E1B8(gFadeControl.field_0x16, gFadeControl.field_0x18);
        sub_0801E1EC(gFadeControl.field_0x12, gFadeControl.field_0x14, gFadeControl.field_0x10);
        if ((type & 1) == 0) {
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

void FadeMain(void) {
    FadeControl* ctl = &gFadeControl;
    u32 flags = ctl->fadeType & 0x1C;
    u32 active = 0;
    u32 bit;

    if (ctl->active) {
        ctl->fadeDuration -= ctl->fadeSpeed;
        if ((s16)ctl->fadeDuration <= (s16)ctl->field_0xe)
            ctl->fadeDuration = ctl->field_0xe;
        while (flags) {
            bit = (~flags + 1) & flags;
            flags ^= bit;
            switch (bit) {
                case 4:
                    active |= sub_080501C0(ctl);
                    break;
                case 8:
                    active |= sub_08050230(ctl);
                    break;
                case 16:
                    active |= sub_080502A4(ctl);
                    break;
            }
        }
        ctl->active = active;
    }
}

static u32 sub_080501C0(FadeControl* ctl) {
    u32 v1;
    u32 v2;
    struct_020354C0* v3;
    u32 i;

    if (ctl->fadeType & 1) {
        v1 = 256 - (s16)ctl->fadeDuration;
    } else {
        v1 = (s16)ctl->fadeDuration;
    }
    v2 = gFadeControl.mask;
    v3 = gUnk_020354C0;
    for (i = 0; i < 0x20; ++i, ++v3) {
        if (v2 & 1) {
            v3->unk0 = 1;
            v3->unk2 = v1;
        } else {
            v3->unk0 = 0;
            v3->unk2 = 0;
        }
        v3->unk1 = ctl->field_0x2;
        v2 >>= 1;
    }
    gUsedPalettes = 0xffffffff;

    return !!((s16)ctl->field_0xe ^ (s16)ctl->fadeDuration);
}

static u32 sub_08050230(FadeControl* ctl) {
    u32 type = ctl->fadeType;
    u32 idx = ((s16)ctl->fadeDuration >> 4) & 0xF;
    if (type & 1)
        idx = 0xF - idx;
    gScreen.controls.mosaicSize = gUnk_080FC3C4[idx];
    if (ctl->fadeDuration != 0)
        return 1;

    // fade is finished
    gUnk_03000000.spritesOffset = 0;
    if ((type & 1) == 0) {
        // reset registers if fading in
        gScreen.bg0.control &= ~BGCNT_MOSAIC;
        gScreen.bg1.control &= ~BGCNT_MOSAIC;
        gScreen.bg2.control &= ~BGCNT_MOSAIC;
        gScreen.bg3.control &= ~BGCNT_MOSAIC;
    }
    return 0;
}

static u32 sub_080502A4(FadeControl* ctl) {
    if (ctl->fadeType & 1) {
        s32 delta = (u16)gFadeControl.field_0x10 - gFadeControl.fadeSpeed;
        gFadeControl.field_0x10 -= gFadeControl.fadeSpeed;
        if (delta << 16 <= 0)
            gFadeControl.field_0x10 = 0;
        sub_0801E1EC(gFadeControl.field_0x12, gFadeControl.field_0x14, gFadeControl.field_0x10);
        if (!gFadeControl.field_0x10)
            return 0;
    } else {
        gFadeControl.field_0x10 += gFadeControl.fadeSpeed;
        sub_0801E1EC(gFadeControl.field_0x12, gFadeControl.field_0x14, gFadeControl.field_0x10);
        if (gFadeControl.field_0x10 > 150) {
            sub_0801E104();
            return 0;
        }
    }
    return 1;
}
