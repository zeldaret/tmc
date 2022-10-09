#include "global.h"
#include "structures.h"
#include "functions.h"
#include "screen.h"
#include "common.h"

static u32 sub_080501C0(FadeControl* ctl);
static u32 sub_08050230(FadeControl* ctl);
static u32 sub_080502A4(FadeControl* ctl);

extern u32 gUsedPalettes;
extern u16 gPaletteBuffer[];
extern u16 gUnk_080FC3C4[];

// function pointer to overlay (0x03005e98) in ram calls rom function MakeFadeBuff256
extern u32 ram_MakeFadeBuff256;
typedef void (*fptrMakeFadeBuff256)(u8*, u8*, u16, u8);

void SetBrightness(u32 brightness) {
    gSaveHeader->brightness = brightness;
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
            func = (fptrMakeFadeBuff256)&ram_MakeFadeBuff256;
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

void ResetFadeMask(void) {
    MemClear(&gUnk_020354C0, sizeof(gUnk_020354C0));
    gFadeControl.mask = 0xFFFFFFFF;
}

static void sub_08050024(void) {
    sub_0801E104();
    SetFade(FADE_IN_OUT | FADE_INSTANT, 256);
}

void SetFadeProgress(u32 arg0) {
    if ((gFadeControl.type & FADE_IN_OUT) != 0) {
        gFadeControl.sustain = arg0;
    } else {
        gFadeControl.progress = arg0;
    }
}

void SetFade(u32 type, u32 speed) {
    gFadeControl.speed = speed;
    gFadeControl.type = type;
    gFadeControl.active = 1;
    gFadeControl.progress = 0x100;
    gFadeControl.sustain = 0;
    if (gFadeControl.type & FADE_BLACK_WHITE) {
        gFadeControl.color = 0xf8;
    } else {
        gFadeControl.color = 0;
    }
    if (type & FADE_MOSAIC) {
        gOAMControls.spritesOffset = 1;
        gScreen.bg1.control |= BGCNT_MOSAIC;
        gScreen.bg2.control |= BGCNT_MOSAIC;
        gScreen.bg3.control |= BGCNT_MOSAIC;
    }
    if (type & FADE_IRIS) {
        sub_0801E1B8(gFadeControl.win_inside_cnt, gFadeControl.win_outside_cnt);
        sub_0801E1EC(gFadeControl.iris_x, gFadeControl.iris_y, gFadeControl.iris_size);
        if ((type & FADE_IN_OUT) == 0) {
            gFadeControl.type &= ~FADE_INSTANT;
            ResetFadeMask();
            gUsedPalettes = 0xffffffff;
        }
    }
}

void SetFadeInverted(u32 speed) {
    gFadeControl.speed = speed;
    gFadeControl.type ^= FADE_IN_OUT;
    gFadeControl.active = 1;
    gFadeControl.progress = 256;
}

void SetFadeIris(u32 x, u32 y, u32 type, u32 speed) {
    if ((type & FADE_IN_OUT) != 0) {
        gFadeControl.iris_size = 0x96;
    } else {
        gFadeControl.iris_size = 0;
    }
    gFadeControl.iris_x = x;
    gFadeControl.iris_y = y;
    gFadeControl.win_inside_cnt = 0x3f3f;
    gFadeControl.win_outside_cnt = 0;
    SetFade(type, speed);
}

void FadeMain(void) {
    FadeControl* ctl = &gFadeControl;
    u32 flags = ctl->type & 0x1C;
    u32 active = 0;
    u32 bit;

    if (ctl->active) {
        ctl->progress -= ctl->speed;
        if ((s16)ctl->progress <= (s16)ctl->sustain)
            ctl->progress = ctl->sustain;
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

    if (ctl->type & FADE_IN_OUT) {
        v1 = 256 - (s16)ctl->progress;
    } else {
        v1 = (s16)ctl->progress;
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
        v3->unk1 = ctl->color;
        v2 >>= 1;
    }
    gUsedPalettes = 0xffffffff;

    return !!((s16)ctl->sustain ^ (s16)ctl->progress);
}

const u16 gMosaicSizes[] = {
    0,      0x1111, 0x2222, 0x3333, 0x4444, 0x5555, 0x6666, 0x7777,
    0x8888, 0x9999, 0xaaaa, 0xbbbb, 0xcccc, 0xdddd, 0xeeee, 0xffff,
};

static u32 sub_08050230(FadeControl* ctl) {
    u32 type = ctl->type;
    u32 idx = ((s16)ctl->progress >> 4) & 0xF;
    if (type & 1)
        idx = 0xF - idx;
    gScreen.controls.mosaicSize = gMosaicSizes[idx];
    if (ctl->progress != 0)
        return 1;

    // fade is finished
    gOAMControls.spritesOffset = 0;
    if ((type & FADE_IN_OUT) == 0) {
        // reset registers if fading in
        gScreen.bg0.control &= ~BGCNT_MOSAIC;
        gScreen.bg1.control &= ~BGCNT_MOSAIC;
        gScreen.bg2.control &= ~BGCNT_MOSAIC;
        gScreen.bg3.control &= ~BGCNT_MOSAIC;
    }
    return 0;
}

static u32 sub_080502A4(FadeControl* ctl) {
    if (ctl->type & FADE_IN_OUT) {
        s32 delta = (u16)gFadeControl.iris_size - gFadeControl.speed;
        gFadeControl.iris_size -= gFadeControl.speed;
        if (delta << 16 <= 0)
            gFadeControl.iris_size = 0;
        sub_0801E1EC(gFadeControl.iris_x, gFadeControl.iris_y, gFadeControl.iris_size);
        if (!gFadeControl.iris_size)
            return 0;
    } else {
        gFadeControl.iris_size += gFadeControl.speed;
        sub_0801E1EC(gFadeControl.iris_x, gFadeControl.iris_y, gFadeControl.iris_size);
        if (gFadeControl.iris_size > 150) {
            sub_0801E104();
            return 0;
        }
    }
    return 1;
}
