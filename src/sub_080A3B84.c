#include "global.h"
#include "functions.h"
#include "menu.h"
#include "structures.h"
#include "screen.h"

extern void (*const gUnk_081280C4[])();

void DrawKinstoneMenu(void) {
    gScreenTransition.field_0x24[8] = 2;
    sub_080AD90C();
    gUnk_081280C4[gMenu.menuType]();
    sub_080A3B74();
    sub_080A4054();
    sub_0801C1D4();
    sub_0801C208();
    sub_0805E5C0();
    sub_080AD9B0();
    sub_080AD918();
    gScreenTransition.field_0x24[8] = 0;
}

extern void gUnk_081280DC;

void sub_080A3BD0(void) {
    s32 iVar1;
    s32 iVar2;

    gMenu.field_0x1 = 1;
    gMenu.unk2a = 0;
    sub_080A4D34();
    LoadPaletteGroup(0xcb);
    LoadGfxGroup(0x75);

    iVar1 = sub_080A4494();
    iVar2 = iVar1 + 7;
    if (iVar2 < 0) {
        iVar2 += 0x7;
    }

    iVar1 = (iVar2 >> 3) - 6;
    iVar1 = max(iVar1, 0);
    iVar1 = min(iVar1, 6);

    LoadGfxGroup(iVar1 + 0x76);
    gScreen.lcd.displayControl |= 0x1e00;
    gScreen.bg.bg1xOffset = 0x1c01;
    gScreen.affine.bg2Control = 0x1d02;
    gScreen.affine.bg3Control = 0x1e0b;
    gScreen.bg.bg2yOffset = 1;
    gScreen.affine.unk = 1;
    gScreen.affine.unk4 = 1;
    sub_080A4528();
    sub_080A4398();
    sub_0801E738(0);
    sub_080A70AC(&gUnk_081280DC);
    sub_080A7114(1);
    DoFade(6, 8);
}
