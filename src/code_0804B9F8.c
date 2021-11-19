#include "global.h"
#include "utils.h"
#include "fileScreen.h"

extern u16 gPaletteBuffer[];
extern u32 gUsedPalettes;

// function pointer to overlay (0x03005e98) in ram calls rom function MakeFadeBuff256
extern u32 gMakeFadeBuff256;
typedef void (*fptrMakeFadeBuff256)(u8*, u8*, u16, u8);

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
